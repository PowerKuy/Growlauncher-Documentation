-- ---@type Preferences
local pref = require("preferences")
local saved = pref:new("calculator_prefs.json")

local CALC = {
    title = "Calculator",
    opened = saved:get("opened", false),
    expr = "",
    result = "",
    err = nil
}

local function safe_eval(s)
    if s == "" then
        return ""
    end
    if s:find("[^%d%+%-%*/%%%^%(%). eE]") then
        return nil, "Invalid char"
    end

    local chunk_src = "return (" .. s .. ")"
    local f, err
    if _VERSION == "Lua 5.1" then
        f, err = loadstring(chunk_src)
        if not f then
            return nil, err
        end
        local env = {
            math = math
        }
        setfenv(f, env)
    else
        f, err = load(chunk_src, "calc", "t", {
            math = math
        })
        if not f then
            return nil, err
        end
    end

    local ok, val = pcall(f)
    if not ok then
        return nil, val
    end
    return val
end

local function push(ch)
    CALC.expr = CALC.expr .. ch
end
local function backspace()
    local len = #CALC.expr
    if len > 0 then
        CALC.expr = CALC.expr:sub(1, len - 1)
    end
end

local function clear_all()
    CALC.expr = ""
    CALC.result = ""
    CALC.err = nil
end

local function compute()
    local v, err = safe_eval(CALC.expr)
    if v == nil then
        CALC.err = tostring(err)
        CALC.result = ""
    else
        CALC.err = nil
        CALC.result = tostring(v)
    end
end

function OnDrawImGui(delta)
    if CALC.opened then
        ImGui.SetNextWindowSize(ImVec2(320, 420), ImGui.Cond.Once)
        ImGui.Begin(CALC.title)

        ImGui.Text("Expr:")
        ImGui.TextWrapped(CALC.expr == "" and " " or CALC.expr)

        ImGui.Separator()
        ImGui.Text("Result:")
        if CALC.err then
            ImGui.TextColored(1.0, 0.3, 0.3, 1.0)
            ImGui.TextWrapped(CALC.err)
        else
            ImGui.TextWrapped(CALC.result == "" and " " or CALC.result)
        end
        ImGui.Separator()
        local btnX = math.floor(ImGui.GetContentRegionAvail().x * 0.25)
        local function B(label, onClick)
            if ImGui.Button(label, ImVec2(btnX - 5, 0)) then
                onClick()
            end
        end
        local function Row(buttons)
            for i, b in ipairs(buttons) do
                B(b[1], b[2])
                if i < #buttons then
                    ImGui.SameLine()
                end
            end
        end

        Row({{"C", function()
            clear_all()
        end}, {"\xef\x95\x9a", function()
            backspace()
        end}, {"%", function()
            push("%")
        end}, {"^", function()
            push("^")
        end}})

        Row({{"7", function()
            push("7")
        end}, {"8", function()
            push("8")
        end}, {"9", function()
            push("9")
        end}, {"/", function()
            push("/")
        end}})

        Row({{"4", function()
            push("4")
        end}, {"5", function()
            push("5")
        end}, {"6", function()
            push("6")
        end}, {"*", function()
            push("*")
        end}})

        Row({{"1", function()
            push("1")
        end}, {"2", function()
            push("2")
        end}, {"3", function()
            push("3")
        end}, {"-", function()
            push("-")
        end}})

        Row({{"0", function()
            push("0")
        end}, {".", function()
            push(".")
        end}, {"(", function()
            push("(")
        end}, {")", function()
            push(")")
        end}})

        Row({{"pi", function()
            push(tostring(math.pi))
        end}, {"e", function()
            push(tostring(math.exp(1)))
        end}, {"=", function()
            compute()
        end}, {"+", function()
            push("+")
        end}})

        ImGui.End()
    end
end

local ui = UserInterface.new("Calculator", "Calculate")
ui:addLabelApp("Calculator", "Calculate")
ui:addTooltip("Information", "Calculator for basic arithmetic operations", "Info", false)
ui:addToggle("Enable", saved:get("opened", false), "enable_calculator", false)

function OnDraw(d)
  removeHook("ondraw")
  runCoroutine(function()
    sleep(6000)
    addCategory("ImGui", "Wysiwyg")
    addIntoModule(ui:generateJSON(), "ImGui")
  end)
end

function OnValue(type, name, value)
  if name == "enable_calculator" then
    CALC.opened = value
    saved:set("opened", CALC.opened)
    saved:save()
  end
end

applyHook()