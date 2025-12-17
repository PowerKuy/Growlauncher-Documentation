local pref = require("preferences")
local json = require("json")
local saved = pref:new("world_saver.json")

local worldSavers = saved:get("saved_world", {})
local enabled = saved:get("opened", false)
local buf_title = ""
local buf_door = ""

function RefreshGui()
    local list = {}
    for _, entry in ipairs(worldSavers) do
        table.insert(list, {entry.title, "Door: " .. entry.door})
    end
    editValue("world_saver_list", json:encode(list))
end

function GoToWorld(entry)
    sendPacket(3, "action|join_request\nname|".. entry.title .. "|".. entry.door .. "\ninvitedWorld|1\n")
end

function OnDrawImGui(delta)
    if enabled then
        ImGui.Begin("World Saver")

        -- Input Title
        ImGui.Text("Title:")
        local contentX = ImGui.GetContentRegionAvail().x
        ImGui.PushItemWidth(contentX) -- set width 200px

        local changed, newVal = ImGui.InputText("##title", buf_title, 256)
        if changed then
            buf_title = newVal
        end
        if ImGui.Button("Current World") then
            buf_title = getCurrentWorldName() or ""
        end
        -- Input DoorID
        ImGui.Text("Door ID:")
        changed, newVal = ImGui.InputText("##door", buf_door, 256)
        if changed then
            buf_door = newVal
        end
        -- Create Button
        if ImGui.Button("Create", ImVec2(contentX, 0)) then
            if buf_title ~= "" and buf_door ~= "" then
                table.insert(worldSavers, {
                    title = buf_title,
                    door = buf_door
                })
                saved:set("saved_world", worldSavers)
                saved:save()
                RefreshGui()
                buf_title, buf_door = "", ""
            end
        end

        ImGui.Separator()

        -- List saved worlds
        if ImGui.BeginTable("WorldTable", 3) then
            ImGui.TableSetupColumn("World", ImGuiTableColumnFlags_WidthStretch)
            ImGui.TableSetupColumn("Go", 1 << 4, 90)
            ImGui.TableSetupColumn("Delete", 1 << 4, 120)
            ImGui.TableHeadersRow()

            for i, entry in ipairs(worldSavers) do
                ImGui.TableNextRow()

                -- Column 1: World text
                ImGui.TableSetColumnIndex(0)
                ImGui.Text(entry.title .. " (Door: " .. entry.door .. ")")

                -- Column 2: Go button
                ImGui.TableSetColumnIndex(1)
                if ImGui.Button("Go##" .. i, 50, 25) then
                    GoToWorld(entry)
                end

                -- Column 3: Delete button
                ImGui.TableSetColumnIndex(2)
                if ImGui.Button("Delete##" .. i, ImGui.GetContentRegionAvail().x, 25) then
                    table.remove(worldSavers, i)
                    saved:save()
                    RefreshGui()
                end
            end

            ImGui.EndTable()
        end

        ImGui.PopItemWidth()

        ImGui.End()
    end
end

local ui = UserInterface.new("Navigator", "Navigation")
ui:addLabelApp("Navigator", "Navigation")
ui:addTooltip("Information", "To easily navigate between worlds", "Info", false)
ui:addToggle("Enable ImGui", saved:get("opened", false), "enable_navigator", false)
ui:addButton("Refresh", "world_saver_refresh")
ui:addDisplayList("Saved List", "[]", "world_saver_list")

function OnDraw(d)
    removeHook("ondraw")
    runCoroutine(function()
        sleep(6000)
        addCategory("ImGui", "Wysiwyg")
        addIntoModule(ui:generateJSON(), "ImGui")
        RefreshGui()
    end)
end

function OnValue(type, name, value)
    if name == "enable_navigator" then
        saved:set("opened", value)
        saved:save()
        enabled = value
    end
    if name == "world_saver_refresh" then
        RefreshGui()
    end
end

applyHook()
