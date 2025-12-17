---@meta

---@class ImVec2
---@field x number
---@field y number
ImVec2 = {}

---@class ImVec3
---@field x number
---@field y number
---@field z number
ImVec3 = {}

---@class ImVec4
---@field x number
---@field y number
---@field z number
---@field w number
ImVec4 = {}

---@class ImGui
ImGui = {}

---@class ImGuiStyle
ImGuiStyle = {}

---@class ImGuiIO
ImGuiIO = {}

---@class ImGuiInputTextCallbackData
ImGuiInputTextCallbackData = {}

---@class ImGuiSizeCallbackData
ImGuiSizeCallbackData = {}

---@class ImGuiListClipper
ImGuiListClipper = {}

---@class ImDrawList
ImDrawList = {}

---@class ImFont
ImFont = {}

---@class ImFontAtlas
ImFontAtlas = {}

---@class ImFontConfig
ImFontConfig = {}

---@class ImGuiPayload
ImGuiPayload = {}

---@class ImGuiViewport
ImGuiViewport = {}

---@class ImGuiTableSortSpecs
ImGuiTableSortSpecs = {}

---@class ImGuiTableColumnSortSpecs
ImGuiTableColumnSortSpecs = {}




---@class ImGuiContext
ImGuiContext = {}

---@class ImDrawData
ImDrawData = {}

---@class ImGuiWindowFlags
ImGuiWindowFlags = {}

---@class ImGuiButtonFlags
ImGuiButtonFlags = {}

---@class ImGuiDir
ImGuiDir = {}

---@class ImGuiSliderFlags
ImGuiSliderFlags = {}

---@class ImGuiFocusedFlags
ImGuiFocusedFlags = {}

---@class ImGuiHoveredFlags
ImGuiHoveredFlags = {}

---@class ImGuiCond
ImGuiCond = {}

---@class ImGuiStyleVar
ImGuiStyleVar = {}

---@class ImGuiCol
ImGuiCol = {}

---@class ImGuiDataType
ImGuiDataType = {}

---@class ImGuiTreeNodeFlags
ImGuiTreeNodeFlags = {}

---@class ImGuiComboFlags
ImGuiComboFlags = {}

---@class ImGuiColorEditFlags
ImGuiColorEditFlags = {}

---@class ImGuiSelectableFlags
ImGuiSelectableFlags = {}

---@class ImGuiPopupFlags
ImGuiPopupFlags = {}

---@class ImGuiColumnsFlags
ImGuiColumnsFlags = {}

---@class ImGuiTabBarFlags
ImGuiTabBarFlags = {}

---@class ImGuiTabItemFlags
ImGuiTabItemFlags = {}

---@class ImGuiDragDropFlags
ImGuiDragDropFlags = {}

---@class ImGuiMouseButton
ImGuiMouseButton = {}

---@class ImGuiKey
ImGuiKey = {}

---@class ImGuiMouseCursor
ImGuiMouseCursor = {}

---@class ImGuiInputTextFlags
ImGuiInputTextFlags = {}

---@class ImGuiDockNodeFlags
ImGuiDockNodeFlags = {}

---@class ImGuiTableFlags
ImGuiTableFlags = {}

---@class ImGuiTableRowFlags
ImGuiTableRowFlags = {}

---@class ImGuiTableColumnFlags
ImGuiTableColumnFlags = {}

---@class ImGuiTableBgTarget
ImGuiTableBgTarget = {}



-- Context creation and access
---@return ImGuiContext
function ImGui.CreateContext(shared_font_atlas) end

---@param ctx ImGuiContext
function ImGui.DestroyContext(ctx) end

---@return ImGuiContext
function ImGui.GetCurrentContext() end

---@param ctx ImGuiContext
function ImGui.SetCurrentContext(ctx) end

-- Main
---@return ImGuiIO
function ImGui.GetIO() end

---@return ImGuiStyle
function ImGui.GetStyle() end

---@return ImDrawList
function ImGui.GetBackgroundDrawList() end

---@return ImDrawList
function ImGui.GetForegroundDrawList() end

---@return ImDrawList
function ImGui.GetBackgroundDrawList(viewport) end

---@return ImDrawList
function ImGui.GetForegroundDrawList(viewport) end

function ImGui.NewFrame() end

function ImGui.EndFrame() end

function ImGui.Render() end

---@return ImDrawData
function ImGui.GetDrawData() end

-- Demo, Debug, Information
---@param p_open boolean|nil
function ImGui.ShowDemoWindow(p_open) end

---@param p_open boolean|nil
function ImGui.ShowMetricsWindow(p_open) end

---@param p_open boolean|nil
function ImGui.ShowDebugLogWindow(p_open) end

---@param p_open boolean|nil
function ImGui.ShowStackToolWindow(p_open) end

---@param ref ImGuiStyle|nil
function ImGui.ShowStyleEditor(ref) end

---@param label string
---@return boolean
function ImGui.ShowStyleSelector(label) end

---@param label string
function ImGui.ShowFontSelector(label) end

function ImGui.ShowUserGuide() end

---@param p_open boolean|nil
function ImGui.ShowAboutWindow(p_open) end

---@return string
function ImGui.GetVersion() end

-- Styles
function ImGui.StyleColorsDark() end

function ImGui.StyleColorsClassic() end

function ImGui.StyleColorsLight() end

-- Windows
---@param name string
---@param p_open boolean|nil
---@param flags ImGuiWindowFlags|nil
---@return boolean, boolean
function ImGui.Begin(name, p_open, flags) end

function ImGui.End() end

-- Child Windows
---@param str_id string
---@param size ImVec2|nil
---@param border boolean|nil
---@param flags ImGuiWindowFlags|nil
---@return boolean
function ImGui.BeginChild(str_id, size, border, flags) end

---@param id integer
---@param size ImVec2|nil
---@param border boolean|nil
---@param flags ImGuiWindowFlags|nil
---@return boolean
function ImGui.BeginChild(id, size, border, flags) end

function ImGui.EndChild() end

-- Window Utilities
---@return boolean
function ImGui.IsWindowAppearing() end

---@return boolean
function ImGui.IsWindowCollapsed() end

---@param flags ImGuiFocusedFlags|nil
---@return boolean
function ImGui.IsWindowFocused(flags) end

---@param flags ImGuiHoveredFlags|nil
---@return boolean
function ImGui.IsWindowHovered(flags) end

---@return ImDrawList
function ImGui.GetWindowDrawList() end

---@return number
function ImGui.GetWindowDpiScale() end

---@return number, number
function ImGui.GetWindowPos() end

---@return number, number
function ImGui.GetWindowSize() end

---@return number
function ImGui.GetWindowWidth() end

---@return number
function ImGui.GetWindowHeight() end

---@return number, number
function ImGui.GetWindowContentRegionMin() end

---@return number, number
function ImGui.GetWindowContentRegionMax() end

---@return number
function ImGui.GetWindowContentRegionWidth() end

---@return number, number
function ImGui.GetCursorScreenPos() end

---@param pos ImVec2
---@param cond ImGuiCond|nil
---@param pivot ImVec2|nil
function ImGui.SetNextWindowPos(pos, cond, pivot) end

---@param size ImVec2
---@param cond ImGuiCond|nil
function ImGui.SetNextWindowSize(size, cond) end

---@param size ImVec2
function ImGui.SetNextWindowContentSize(size) end

---@param collapsed boolean
---@param cond ImGuiCond|nil
function ImGui.SetNextWindowCollapsed(collapsed, cond) end

function ImGui.SetNextWindowFocus() end

---@param alpha number
function ImGui.SetNextWindowBgAlpha(alpha) end

---@param viewport ImGuiViewport
function ImGui.SetNextWindowViewport(viewport) end

---@param pos ImVec2
---@param cond ImGuiCond|nil
function ImGui.SetWindowPos(pos, cond) end

---@param size ImVec2
---@param cond ImGuiCond|nil
function ImGui.SetWindowSize(size, cond) end

---@param collapsed boolean
---@param cond ImGuiCond|nil
function ImGui.SetWindowCollapsed(collapsed, cond) end

function ImGui.SetWindowFocus() end

---@param name string
function ImGui.SetWindowFocus(name) end

---@param scale number
function ImGui.SetWindowFontScale(scale) end

-- Content region
---@return ImVec2
function ImGui.GetContentRegionAvail() end

---@return ImVec2
function ImGui.GetContentRegionMax() end

---@return ImVec2
function ImGui.GetWindowContentRegionMin() end

---@return ImVec2
function ImGui.GetWindowContentRegionMax() end

---@return number
function ImGui.GetWindowContentRegionWidth() end

-- Windows Scrolling
---@return number
function ImGui.GetScrollX() end

---@return number
function ImGui.GetScrollY() end

---@param scroll_x number
function ImGui.SetScrollX(scroll_x) end

---@param scroll_y number
function ImGui.SetScrollY(scroll_y) end

---@return number
function ImGui.GetScrollMaxX() end

---@return number
function ImGui.GetScrollMaxY() end

---@param center_x_ratio number|nil
function ImGui.SetScrollHereX(center_x_ratio) end

---@param center_y_ratio number|nil
function ImGui.SetScrollHereY(center_y_ratio) end

---@param local_x number
---@param center_x_ratio number|nil
function ImGui.SetScrollFromPosX(local_x, center_x_ratio) end

---@param local_y number
---@param center_y_ratio number|nil
function ImGui.SetScrollFromPosY(local_y, center_y_ratio) end

-- Parameters stacks (shared)
---@param idx ImGuiStyleVar
---@param val number|ImVec2
function ImGui.PushStyleVar(idx, val) end

---@param count integer|nil
function ImGui.PopStyleVar(count) end

---@param idx ImGuiCol
---@param col ImVec4
function ImGui.PushStyleColor(idx, col) end

---@param count integer|nil
function ImGui.PopStyleColor(count) end

-- Parameters stacks (current window)
---@param font ImFont
function ImGui.PushFont(font) end

function ImGui.PopFont() end

---@param allow_keyboard_focus boolean
function ImGui.PushAllowKeyboardFocus(allow_keyboard_focus) end

function ImGui.PopAllowKeyboardFocus() end

---@param item_width number
function ImGui.PushItemWidth(item_width) end

function ImGui.PopItemWidth() end

---@param item_width number
function ImGui.SetNextItemWidth(item_width) end

---@return number
function ImGui.CalcItemWidth() end

---@param wrap_pos_x number|nil
function ImGui.PushTextWrapPos(wrap_pos_x) end

function ImGui.PopTextWrapPos() end

-- Cursor / Layout
function ImGui.Separator() end

---@param offset_from_start_x number|nil
---@param spacing number|nil
function ImGui.SameLine(offset_from_start_x, spacing) end

function ImGui.NewLine() end

function ImGui.Spacing() end

---@param size ImVec2
function ImGui.Dummy(size) end

---@param indent_w number|nil
function ImGui.Indent(indent_w) end

---@param indent_w number|nil
function ImGui.Unindent(indent_w) end

function ImGui.BeginGroup() end

function ImGui.EndGroup() end

---@return ImVec2
function ImGui.GetCursorPos() end

---@param pos ImVec2
function ImGui.SetCursorPos(pos) end

---@param x number
function ImGui.SetCursorPosX(x) end

---@param y number
function ImGui.SetCursorPosY(y) end

---@return number
function ImGui.GetCursorPosX() end

---@return number
function ImGui.GetCursorPosY() end

---@return ImVec2
function ImGui.GetCursorStartPos() end

---@return ImVec2
function ImGui.GetCursorScreenPos() end

---@param pos ImVec2
function ImGui.SetCursorScreenPos(pos) end

function ImGui.AlignTextToFramePadding() end

---@return number
function ImGui.GetTextLineHeight() end

---@return number
function ImGui.GetTextLineHeightWithSpacing() end

---@return number
function ImGui.GetFrameHeight() end

---@return number
function ImGui.GetFrameHeightWithSpacing() end

---@return number
function ImGui.GetFontSize() end

-- ID stack/scopes
---@param str_id string
function ImGui.PushID(str_id) end

---@param int_id integer
function ImGui.PushID(int_id) end

---@param ptr_id userdata
function ImGui.PushID(ptr_id) end

function ImGui.PopID() end

---@param str_id string
---@return integer
function ImGui.GetID(str_id) end

-- Widgets: Text
---@param text string
function ImGui.Text(text) end

---@param fmt string
---@param ... any
function ImGui.Text(fmt, ...) end

---@param text string
function ImGui.TextUnformatted(text) end

---@param col ImVec4
---@param text string
function ImGui.TextColored(col, text) end

---@param col ImVec4
---@param fmt string
---@param ... any
function ImGui.TextColored(col, fmt, ...) end

---@param text string
function ImGui.TextDisabled(text) end

---@param fmt string
---@param ... any
function ImGui.TextDisabled(fmt, ...) end

---@param text string
function ImGui.TextWrapped(text) end

---@param fmt string
---@param ... any
function ImGui.TextWrapped(fmt, ...) end

---@param label string
---@param text string
function ImGui.LabelText(label, text) end

---@param label string
---@param fmt string
---@param ... any
function ImGui.LabelText(label, fmt, ...) end

---@param text string
function ImGui.BulletText(text) end

---@param fmt string
---@param ... any
function ImGui.BulletText(fmt, ...) end

function ImGui.Bullet() end

-- Widgets: Main
---@param label string
---@param size ImVec2|nil
---@return boolean
function ImGui.Button(label, size) end

---@param label string
---@return boolean
function ImGui.SmallButton(label) end

---@param str_id string
---@param size ImVec2
---@param flags ImGuiButtonFlags|nil
---@return boolean
function ImGui.InvisibleButton(str_id, size, flags) end

---@param str_id string
---@param dir ImGuiDir
---@return boolean
function ImGui.ArrowButton(str_id, dir) end

---@param label string
---@param v number
---@param v_speed number|nil
---@param v_min number|nil
---@param v_max number|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number
function ImGui.DragFloat(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v number[]
---@param v_speed number|nil
---@param v_min number|nil
---@param v_max number|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number[]
function ImGui.DragFloat2(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v number[]
---@param v_speed number|nil
---@param v_min number|nil
---@param v_max number|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number[]
function ImGui.DragFloat3(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v number[]
---@param v_speed number|nil
---@param v_min number|nil
---@param v_max number|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number[]
function ImGui.DragFloat4(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v_current_min number
---@param v_current_max number
---@param v_speed number|nil
---@param v_min number|nil
---@param v_max number|nil
---@param format string|nil
---@param format_max string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number, number
function ImGui.DragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags) end

---@param label string
---@param v integer
---@param v_speed number|nil
---@param v_min integer|nil
---@param v_max integer|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer
function ImGui.DragInt(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v integer[]
---@param v_speed number|nil
---@param v_min integer|nil
---@param v_max integer|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer[]
function ImGui.DragInt2(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v integer[]
---@param v_speed number|nil
---@param v_min integer|nil
---@param v_max integer|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer[]
function ImGui.DragInt3(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v integer[]
---@param v_speed number|nil
---@param v_min integer|nil
---@param v_max integer|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer[]
function ImGui.DragInt4(label, v, v_speed, v_min, v_max, format, flags) end

---@param label string
---@param v_current_min integer
---@param v_current_max integer
---@param v_speed number|nil
---@param v_min integer|nil
---@param v_max integer|nil
---@param format string|nil
---@param format_max string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer, integer
function ImGui.DragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, format, format_max, flags) end

---@param label string
---@param data_type ImGuiDataType
---@param p_data any
---@param v_speed number|nil
---@param p_min any|nil
---@param p_max any|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean
function ImGui.DragScalar(label, data_type, p_data, v_speed, p_min, p_max, format, flags) end

---@param label string
---@param v number
---@param v_min number
---@param v_max number
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number
function ImGui.SliderFloat(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v number[]
---@param v_min number
---@param v_max number
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number[]
function ImGui.SliderFloat2(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v number[]
---@param v_min number
---@param v_max number
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number[]
function ImGui.SliderFloat3(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v number[]
---@param v_min number
---@param v_max number
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number[]
function ImGui.SliderFloat4(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v_rad number
---@param v_degrees_min number|nil
---@param v_degrees_max number|nil
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number
function ImGui.SliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags) end

---@param label string
---@param v integer
---@param v_min integer
---@param v_max integer
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer
function ImGui.SliderInt(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v integer[]
---@param v_min integer
---@param v_max integer
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer[]
function ImGui.SliderInt2(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v integer[]
---@param v_min integer
---@param v_max integer
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer[]
function ImGui.SliderInt3(label, v, v_min, v_max, format, flags) end

---@param label string
---@param v integer[]
---@param v_min integer
---@param v_max integer
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer[]
function ImGui.SliderInt4(label, v, v_min, v_max, format, flags) end

---@param label string
---@param data_type ImGuiDataType
---@param p_data any
---@param p_min any
---@param p_max any
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean
function ImGui.SliderScalar(label, data_type, p_data, p_min, p_max, format, flags) end

---@param label string
---@param size ImVec2
---@param v number
---@param v_min number
---@param v_max number
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, number
function ImGui.VSliderFloat(label, size, v, v_min, v_max, format, flags) end

---@param label string
---@param size ImVec2
---@param v integer
---@param v_min integer
---@param v_max integer
---@param format string|nil
---@param flags ImGuiSliderFlags|nil
---@return boolean, integer
function ImGui.VSliderInt(label, size, v, v_min, v_max, format, flags) end

---@param label string
---@param v boolean
---@return boolean, boolean
function ImGui.Checkbox(label, v) end

---@param label string
---@param flags integer
---@param flags_value integer
---@return boolean, integer
function ImGui.CheckboxFlags(label, flags, flags_value) end

---@param label string
---@param active boolean
---@return boolean
function ImGui.RadioButton(label, active) end

---@param label string
---@param v integer
---@param v_button integer
---@return boolean, integer
function ImGui.RadioButtonInt(label, v, v_button) end

---@param fraction number
---@param size_arg ImVec2|nil
---@param overlay string|nil
function ImGui.ProgressBar(fraction, size_arg, overlay) end

---@param label string
---@param flags ImGuiTreeNodeFlags|nil
---@return boolean
function ImGui.TreeNode(label, flags) end

---@param str_id string
---@param flags ImGuiTreeNodeFlags|nil
---@param fmt string
---@param ... any
---@return boolean
function ImGui.TreeNode(str_id, flags, fmt, ...) end

---@param ptr_id userdata
---@param flags ImGuiTreeNodeFlags|nil
---@param fmt string
---@param ... any
---@return boolean
function ImGui.TreeNode(ptr_id, flags, fmt, ...) end

function ImGui.TreePush() end

---@param str_id string
function ImGui.TreePush(str_id) end

---@param ptr_id userdata
function ImGui.TreePush(ptr_id) end

function ImGui.TreePop() end

---@return number
function ImGui.GetTreeNodeToLabelSpacing() end

---@param label string
---@param flags ImGuiTreeNodeFlags|nil
---@return boolean
function ImGui.CollapsingHeader(label, flags) end

---@param label string
---@param p_open boolean|userdata
---@param flags ImGuiTreeNodeFlags|nil
---@return boolean, boolean
function ImGui.CollapsingHeader(label, p_open, flags) end

---@param label string
---@param current_item integer
---@param items string[]
---@param height_in_items integer|nil
---@return boolean, integer
function ImGui.ListBox(label, current_item, items, height_in_items) end

---@param label string
---@param current_item integer
---@param items_getter function
---@param data userdata
---@param items_count integer
---@param height_in_items integer|nil
---@return boolean, integer
function ImGui.ListBox(label, current_item, items_getter, data, items_count, height_in_items) end

---@param label string
---@param size ImVec2|nil
---@return boolean
function ImGui.BeginListBox(label, size) end

function ImGui.EndListBox() end

---@param label string
---@param preview_value string
---@param flags ImGuiComboFlags|nil
---@return boolean
function ImGui.BeginCombo(label, preview_value, flags) end

function ImGui.EndCombo() end

---@param label string
---@param current_item integer
---@param items string[]
---@param popup_max_height_in_items integer|nil
---@return boolean, integer
function ImGui.Combo(label, current_item, items, popup_max_height_in_items) end

---@param label string
---@param current_item integer
---@param items_getter function
---@param data userdata
---@param items_count integer
---@param popup_max_height_in_items integer|nil
---@return boolean, integer
function ImGui.Combo(label, current_item, items_getter, data, items_count, popup_max_height_in_items) end

-- Widgets: Color Editor/Picker
---@param label string
---@param col number[]
---@param flags ImGuiColorEditFlags|nil
---@return boolean, number[]
function ImGui.ColorEdit3(label, col, flags) end

---@param label string
---@param col number[]
---@param flags ImGuiColorEditFlags|nil
---@return boolean, number[]
function ImGui.ColorEdit4(label, col, flags) end

---@param label string
---@param col number[]
---@param flags ImGuiColorEditFlags|nil
---@return boolean, number[]
function ImGui.ColorPicker3(label, col, flags) end

---@param label string
---@param col number[]
---@param flags ImGuiColorEditFlags|nil
---@param ref_col number[]|nil
---@return boolean, number[]
function ImGui.ColorPicker4(label, col, flags, ref_col) end

---@param desc_id string
---@param col ImVec4
---@param flags ImGuiColorEditFlags|nil
---@param size ImVec2|nil
---@return boolean
function ImGui.ColorButton(desc_id, col, flags, size) end

---@param flags ImGuiColorEditFlags
function ImGui.SetColorEditOptions(flags) end

-- Widgets: Trees
---@param label string
---@param flags ImGuiTreeNodeFlags|nil
---@return boolean
function ImGui.TreeNodeEx(label, flags) end

---@param str_id string
---@param flags ImGuiTreeNodeFlags
---@param fmt string
---@param ... any
---@return boolean
function ImGui.TreeNodeEx(str_id, flags, fmt, ...) end

---@param ptr_id userdata
---@param flags ImGuiTreeNodeFlags
---@param fmt string
---@param ... any
---@return boolean
function ImGui.TreeNodeEx(ptr_id, flags, fmt, ...) end

-- Widgets: Selectables
---@param label string
---@param selected boolean|nil
---@param flags ImGuiSelectableFlags|nil
---@param size ImVec2|nil
---@return boolean
function ImGui.Selectable(label, selected, flags, size) end

---@param label string
---@param p_selected boolean
---@param flags ImGuiSelectableFlags|nil
---@param size ImVec2|nil
---@return boolean, boolean
function ImGui.Selectable(label, p_selected, flags, size) end

-- Widgets: List Boxes
---@param label string
---@param size ImVec2|nil
---@return boolean
function ImGui.ListBoxHeader(label, size) end

---@param label string
---@param items_count integer
---@param height_in_items integer|nil
---@return boolean
function ImGui.ListBoxHeader(label, items_count, height_in_items) end

function ImGui.ListBoxFooter() end

-- Widgets: Data Plotting
---@param label string
---@param values number[]
---@param values_offset integer|nil
---@param overlay_text string|nil
---@param scale_min number|nil
---@param scale_max number|nil
---@param graph_size ImVec2|nil
function ImGui.PlotLines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_size) end

---@param label string
---@param values_getter function
---@param data userdata
---@param values_count integer
---@param values_offset integer|nil
---@param overlay_text string|nil
---@param scale_min number|nil
---@param scale_max number|nil
---@param graph_size ImVec2|nil
function ImGui.PlotLines(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size) end

---@param label string
---@param values number[]
---@param values_offset integer|nil
---@param overlay_text string|nil
---@param scale_min number|nil
---@param scale_max number|nil
---@param graph_size ImVec2|nil
function ImGui.PlotHistogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_size) end

---@param label string
---@param values_getter function
---@param data userdata
---@param values_count integer
---@param values_offset integer|nil
---@param overlay_text string|nil
---@param scale_min number|nil
---@param scale_max number|nil
---@param graph_size ImVec2|nil
function ImGui.PlotHistogram(label, values_getter, data, values_count, values_offset, overlay_text, scale_min, scale_max, graph_size) end

-- Widgets: Value() Helpers.
---@param prefix string
---@param b boolean
function ImGui.ValueBool(prefix, b) end

---@param prefix string
---@param v integer
function ImGui.ValueInt(prefix, v) end

---@param prefix string
---@param v integer
function ImGui.ValueUint(prefix, v) end

---@param prefix string
---@param v number
---@param float_format string|nil
function ImGui.ValueFloat(prefix, v, float_format) end

-- Widgets: Menus
---@return boolean
function ImGui.BeginMenuBar() end

function ImGui.EndMenuBar() end

---@return boolean
function ImGui.BeginMainMenuBar() end

function ImGui.EndMainMenuBar() end

---@param label string
---@param enabled boolean|nil
---@return boolean
function ImGui.BeginMenu(label, enabled) end

function ImGui.EndMenu() end

---@param label string
---@param shortcut string|nil
---@param selected boolean|nil
---@param enabled boolean|nil
---@return boolean
function ImGui.MenuItem(label, shortcut, selected, enabled) end

---@param label string
---@param shortcut string|nil
---@param p_selected boolean|userdata
---@param enabled boolean|nil
---@return boolean, boolean
function ImGui.MenuItem(label, shortcut, p_selected, enabled) end

-- Tooltips
function ImGui.BeginTooltip() end

function ImGui.EndTooltip() end

---@param text string
function ImGui.SetTooltip(text) end

---@param fmt string
---@param ... any
function ImGui.SetTooltip(fmt, ...) end

-- Popups, Modals
---@param str_id string
---@param flags ImGuiWindowFlags|nil
---@return boolean
function ImGui.BeginPopup(str_id, flags) end

---@param name string
---@param p_open boolean|userdata
---@param flags ImGuiWindowFlags|nil
---@return boolean
function ImGui.BeginPopupModal(name, p_open, flags) end

function ImGui.EndPopup() end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|nil
function ImGui.OpenPopup(str_id, popup_flags) end

---@param str_id string
---@param popup_flags ImGuiPopupFlags|nil
function ImGui.OpenPopupOnItemClick(str_id, popup_flags) end

function ImGui.CloseCurrentPopup() end

---@param str_id string|nil
---@param popup_flags ImGuiPopupFlags|nil
---@return boolean
function ImGui.BeginPopupContextItem(str_id, popup_flags) end

---@param str_id string|nil
---@param popup_flags ImGuiPopupFlags|nil
---@return boolean
function ImGui.BeginPopupContextWindow(str_id, popup_flags) end

---@param str_id string|nil
---@param popup_flags ImGuiPopupFlags|nil
---@return boolean
function ImGui.BeginPopupContextVoid(str_id, popup_flags) end

---@param str_id string
---@param flags ImGuiPopupFlags|nil
---@return boolean
function ImGui.IsPopupOpen(str_id, flags) end

-- Columns
---@param str_id string
---@param count integer
---@param flags ImGuiColumnsFlags|nil
function ImGui.BeginColumns(str_id, count, flags) end

function ImGui.EndColumns() end

function ImGui.NextColumn() end

---@return integer
function ImGui.GetColumnIndex() end

---@param column_index integer|nil
---@return number
function ImGui.GetColumnOffset(column_index) end

---@param column_index integer
---@param offset number
function ImGui.SetColumnOffset(column_index, offset) end

---@param column_index integer|nil
---@return number
function ImGui.GetColumnWidth(column_index) end

---@param column_index integer
---@param width number
function ImGui.SetColumnWidth(column_index, width) end

---@return integer
function ImGui.GetColumnsCount() end

-- Tab Bars, Tabs
---@param str_id string
---@param flags ImGuiTabBarFlags|nil
---@return boolean
function ImGui.BeginTabBar(str_id, flags) end

function ImGui.EndTabBar() end

---@param label string
---@param p_open boolean|userdata
---@param flags ImGuiTabItemFlags|nil
---@return boolean, boolean
function ImGui.BeginTabItem(label, p_open, flags) end

function ImGui.EndTabItem() end

---@param label string
---@param flags ImGuiTabItemFlags|nil
---@return boolean
function ImGui.TabItemButton(label, flags) end

---@param tab_or_docked_window_label string
function ImGui.SetTabItemClosed(tab_or_docked_window_label) end

-- Logging/Capture
---@param auto_open_depth integer|nil
function ImGui.LogToTTY(auto_open_depth) end

---@param auto_open_depth integer|nil
---@param filename string|nil
function ImGui.LogToFile(auto_open_depth, filename) end

---@param auto_open_depth integer|nil
function ImGui.LogToClipboard(auto_open_depth) end

function ImGui.LogFinish() end

function ImGui.LogButtons() end

---@param fmt string
---@param ... any
function ImGui.LogText(fmt, ...) end

-- Drag and Drop
---@param flags ImGuiDragDropFlags|nil
---@return boolean
function ImGui.BeginDragDropSource(flags) end

function ImGui.EndDragDropSource() end

---@return boolean
function ImGui.BeginDragDropTarget() end

function ImGui.EndDragDropTarget() end

---@param type string
---@return ImGuiPayload|nil
function ImGui.AcceptDragDropPayload(type) end

---@param type string
---@param data userdata
---@param size integer
---@param cond ImGuiCond|nil
---@return boolean
function ImGui.SetDragDropPayload(type, data, size, cond) end

-- Clipping
---@param clip_rect_min ImVec2
---@param clip_rect_max ImVec2
---@param intersect_with_current_clip_rect boolean
function ImGui.PushClipRect(clip_rect_min, clip_rect_max, intersect_with_current_clip_rect) end

function ImGui.PopClipRect() end

-- Focus, Activation
function ImGui.SetItemDefaultFocus() end

---@param offset integer|nil
function ImGui.SetKeyboardFocusHere(offset) end

-- Item/Widgets Utilities
---@param flags ImGuiHoveredFlags|nil
---@return boolean
function ImGui.IsItemHovered(flags) end

---@return boolean
function ImGui.IsItemActive() end

---@return boolean
function ImGui.IsItemFocused() end

---@param mouse_button ImGuiMouseButton|nil
---@return boolean
function ImGui.IsItemClicked(mouse_button) end

---@return boolean
function ImGui.IsItemVisible() end

---@return boolean
function ImGui.IsItemEdited() end

---@return boolean
function ImGui.IsItemActivated() end

---@return boolean
function ImGui.IsItemDeactivated() end

---@return boolean
function ImGui.IsItemDeactivatedAfterEdit() end

---@return boolean
function ImGui.IsItemToggledOpen() end

---@return boolean
function ImGui.IsAnyItemHovered() end

---@return boolean
function ImGui.IsAnyItemActive() end

---@return boolean
function ImGui.IsAnyItemFocused() end

---@return ImVec2
function ImGui.GetItemRectMin() end

---@return ImVec2
function ImGui.GetItemRectMax() end

---@return ImVec2
function ImGui.GetItemRectSize() end

function ImGui.SetItemAllowOverlap() end

---@return integer
function ImGui.GetItemID() end

-- Viewports
---@return ImGuiViewport
function ImGui.GetMainViewport() end

-- Miscellaneous Utilities
---@param size ImVec2
---@return boolean
function ImGui.IsRectVisibleBySize(size) end

---@param rect_min ImVec2
---@param rect_max ImVec2
---@return boolean
function ImGui.IsRectVisibleByRect(rect_min, rect_max) end

---@return number
function ImGui.GetTime() end

---@return integer
function ImGui.GetFrameCount() end

---@param idx ImGuiCol
---@return string
function ImGui.GetStyleColorName(idx) end

---@param idx ImGuiCol
---@return ImVec4
function ImGui.GetStyleColorVec4(idx) end

---@param text string
---@param text_end string|nil
---@param hide_text_after_double_hash boolean|nil
---@param wrap_width number|nil
---@return ImVec2
function ImGui.CalcTextSize(text, text_end, hide_text_after_double_hash, wrap_width) end

---@param items_count integer
---@param items_height number
---@return integer, integer
function ImGui.CalcListClipping(items_count, items_height) end

---@param id integer
---@param size ImVec2
---@param flags ImGuiWindowFlags|nil
---@return boolean
function ImGui.BeginChildFrame(id, size, flags) end

function ImGui.EndChildFrame() end

---@param in integer
---@return ImVec4
function ImGui.ColorConvertU32ToFloat4(in) end

---@param in ImVec4
---@return integer
function ImGui.ColorConvertFloat4ToU32(in) end

---@param r number
---@param g number
---@param b number
---@return number, number, number
function ImGui.ColorConvertRGBtoHSV(r, g, b) end

---@param h number
---@param s number
---@param v number
---@return number, number, number
function ImGui.ColorConvertHSVtoRGB(h, s, v) end

---@param imgui_key ImGuiKey
---@return integer
function ImGui.GetKeyIndex(imgui_key) end

---@param user_key_index integer
---@return boolean
function ImGui.IsKeyDown(user_key_index) end

---@param user_key_index integer
---@param repeat boolean|nil
---@return boolean
function ImGui.IsKeyPressed(user_key_index, repeat) end

---@param user_key_index integer
---@return boolean
function ImGui.IsKeyReleased(user_key_index) end

---@param key_index integer
---@param repeat_delay number
---@param rate number
---@return integer
function ImGui.GetKeyPressedAmount(key_index, repeat_delay, rate) end

---@param want_capture_keyboard boolean|nil
function ImGui.CaptureKeyboardFromApp(want_capture_keyboard) end

---@param button ImGuiMouseButton|nil
---@return boolean
function ImGui.IsMouseDown(button) end

---@param button ImGuiMouseButton|nil
---@param repeat boolean|nil
---@return boolean
function ImGui.IsMouseClicked(button, repeat) end

---@param button ImGuiMouseButton|nil
---@return boolean
function ImGui.IsMouseReleased(button) end

---@param button ImGuiMouseButton|nil
---@return boolean
function ImGui.IsMouseDoubleClicked(button) end

---@param button ImGuiMouseButton|nil
---@return integer
function ImGui.GetMouseClickedCount(button) end

---@param r_min ImVec2
---@param r_max ImVec2
---@param clip boolean|nil
---@return boolean
function ImGui.IsMouseHoveringRect(r_min, r_max, clip) end

---@param mouse_pos ImVec2|nil
---@return boolean
function ImGui.IsMousePosValid(mouse_pos) end

---@return boolean
function ImGui.IsAnyMouseDown() end

---@return ImVec2
function ImGui.GetMousePos() end

---@return ImVec2
function ImGui.GetMousePosOnOpeningCurrentPopup() end

---@param button ImGuiMouseButton|nil
---@param lock_threshold number|nil
---@return boolean
function ImGui.IsMouseDragging(button, lock_threshold) end

---@param button ImGuiMouseButton|nil
---@param lock_threshold number|nil
---@return ImVec2
function ImGui.GetMouseDragDelta(button, lock_threshold) end

---@param button ImGuiMouseButton|nil
function ImGui.ResetMouseDragDelta(button) end

---@return ImGuiMouseCursor
function ImGui.GetMouseCursor() end

---@param cursor_type ImGuiMouseCursor
function ImGui.SetMouseCursor(cursor_type) end

---@param want_capture_mouse boolean|nil
function ImGui.CaptureMouseFromApp(want_capture_mouse) end

---@return string
function ImGui.GetClipboardText() end

---@param text string
function ImGui.SetClipboardText(text) end

---@param ini_filename string
function ImGui.LoadIniSettingsFromDisk(ini_filename) end

---@param ini_data string
---@param ini_size integer|nil
function ImGui.LoadIniSettingsFromMemory(ini_data, ini_size) end

---@param ini_filename string
function ImGui.SaveIniSettingsToDisk(ini_filename) end

---@param out_ini_size integer|nil
---@return string
function ImGui.SaveIniSettingsToMemory(out_ini_size) end

-- Debug Utilities
---@param text string
function ImGui.DebugTextEncoding(text) end

---@param version_str string
---@param sz_io integer
---@param sz_style integer
---@param sz_vec2 integer
---@param sz_vec4 integer
---@param sz_drawvert integer
---@param sz_drawidx integer
---@return boolean
function ImGui.DebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2, sz_vec4, sz_drawvert, sz_drawidx) end

-- Memory Allocators
---@param alloc_func function
---@param free_func function
---@param user_data any|nil
function ImGui.SetAllocatorFunctions(alloc_func, free_func, user_data) end

---@return function, function, any
function ImGui.GetAllocatorFunctions() end

---@param size integer
---@return any
function ImGui.MemAlloc(size) end

---@param ptr any
function ImGui.MemFree(ptr) end

-- Inputs
---@param label string
---@param buf string
---@param buf_size integer|nil
---@param flags ImGuiInputTextFlags|nil
---@param callback function|nil
---@param user_data any|nil
---@return boolean, string
function ImGui.InputText(label, buf, buf_size, flags, callback, user_data) end

---@param label string
---@param buf string
---@param size ImVec2|nil
---@param flags ImGuiInputTextFlags|nil
---@param callback function|nil
---@param user_data any|nil
---@return boolean, string
function ImGui.InputTextMultiline(label, buf, size, flags, callback, user_data) end

---@param label string
---@param hint string
---@param buf string
---@param buf_size integer|nil
---@param flags ImGuiInputTextFlags|nil
---@param callback function|nil
---@param user_data any|nil
---@return boolean, string
function ImGui.InputTextWithHint(label, hint, buf, buf_size, flags, callback, user_data) end

---@param label string
---@param v number
---@param step number|nil
---@param step_fast number|nil
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean, number
function ImGui.InputFloat(label, v, step, step_fast, format, flags) end

---@param label string
---@param v number[]
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean, number[]
function ImGui.InputFloat2(label, v, format, flags) end

---@param label string
---@param v number[]
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean, number[]
function ImGui.InputFloat3(label, v, format, flags) end

---@param label string
---@param v number[]
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean, number[]
function ImGui.InputFloat4(label, v, format, flags) end

---@param label string
---@param v integer
---@param step integer|nil
---@param step_fast integer|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean, integer
function ImGui.InputInt(label, v, step, step_fast, flags) end

---@param label string
---@param v integer[]
---@param flags ImGuiInputTextFlags|nil
---@return boolean, integer[]
function ImGui.InputInt2(label, v, flags) end

---@param label string
---@param v integer[]
---@param flags ImGuiInputTextFlags|nil
---@return boolean, integer[]
function ImGui.InputInt3(label, v, flags) end

---@param label string
---@param v integer[]
---@param flags ImGuiInputTextFlags|nil
---@return boolean, integer[]
function ImGui.InputInt4(label, v, flags) end

---@param label string
---@param v number
---@param step number|nil
---@param step_fast number|nil
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean, number
function ImGui.InputDouble(label, v, step, step_fast, format, flags) end

---@param label string
---@param data_type ImGuiDataType
---@param p_data any
---@param p_step any|nil
---@param p_step_fast any|nil
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean
function ImGui.InputScalar(label, data_type, p_data, p_step, p_step_fast, format, flags) end

---@param label string
---@param data_type ImGuiDataType
---@param p_data any
---@param components integer
---@param p_step any|nil
---@param p_step_fast any|nil
---@param format string|nil
---@param flags ImGuiInputTextFlags|nil
---@return boolean
function ImGui.InputScalarN(label, data_type, p_data, components, p_step, p_step_fast, format, flags) end

-- Image
---@param user_texture_id any
---@param size ImVec2
---@param uv0 ImVec2|nil
---@param uv1 ImVec2|nil
---@param tint_col ImVec4|nil
---@param border_col ImVec4|nil
function ImGui.Image(user_texture_id, size, uv0, uv1, tint_col, border_col) end

---@param user_texture_id any
---@param size ImVec2
---@param uv0 ImVec2|nil
---@param uv1 ImVec2|nil
---@param frame_padding integer|nil
---@param bg_col ImVec4|nil
---@param tint_col ImVec4|nil
---@return boolean
function ImGui.ImageButton(user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col) end

-- Docking
---@param id integer
---@param size ImVec2|nil
---@param flags ImGuiDockNodeFlags|nil
---@param window_class any|nil
---@return integer
function ImGui.DockSpace(id, size, flags, window_class) end

---@param viewport ImGuiViewport|nil
---@param flags ImGuiDockNodeFlags|nil
---@param window_class any|nil
---@return integer
function ImGui.DockSpaceOverViewport(viewport, flags, window_class) end

---@param dock_id integer
---@param cond ImGuiCond|nil
function ImGui.SetNextWindowDockID(dock_id, cond) end

---@param window_class any
function ImGui.SetNextWindowClass(window_class) end

---@return integer
function ImGui.GetWindowDockID() end

---@return boolean
function ImGui.IsWindowDocked() end

-- Tables
---@param str_id string
---@param column integer
---@param flags ImGuiTableFlags|nil
---@param outer_size ImVec2|nil
---@param inner_width number|nil
---@return boolean
function ImGui.BeginTable(str_id, column, flags, outer_size, inner_width) end

function ImGui.EndTable() end

---@param row_flags ImGuiTableRowFlags|nil
---@param min_row_height number|nil
function ImGui.TableNextRow(row_flags, min_row_height) end

---@return boolean
function ImGui.TableNextColumn() end

---@param column_n integer
---@return boolean
function ImGui.TableSetColumnIndex(column_n) end

---@param label string
---@param flags ImGuiTableColumnFlags|nil
---@param init_width_or_weight number|nil
---@param user_id integer|nil
function ImGui.TableSetupColumn(label, flags, init_width_or_weight, user_id) end

---@param cols integer
---@param rows integer
function ImGui.TableSetupScrollFreeze(cols, rows) end

function ImGui.TableHeadersRow() end

---@param label string
function ImGui.TableHeader(label) end

---@return ImGuiTableSortSpecs|nil
function ImGui.TableGetSortSpecs() end

---@return integer
function ImGui.TableGetColumnCount() end

---@return integer
function ImGui.TableGetColumnIndex() end

---@return integer
function ImGui.TableGetRowIndex() end

---@param column_n integer|nil
---@return string
function ImGui.TableGetColumnName(column_n) end

---@param column_n integer|nil
---@return ImGuiTableColumnFlags
function ImGui.TableGetColumnFlags(column_n) end

---@param column_n integer
---@param v boolean
function ImGui.TableSetColumnEnabled(column_n, v) end

---@param column_n integer
---@param width number
function ImGui.TableSetColumnWidth(column_n, width) end

---@param target ImGuiTableBgTarget
---@param color integer
---@param column_n integer|nil
function ImGui.TableSetBgColor(target, color, column_n) end

-- Disabled state
---@param disabled boolean
function ImGui.BeginDisabled(disabled) end

function ImGui.EndDisabled() end

-- Button repeat
---@param repeat boolean
function ImGui.PushButtonRepeat(repeat) end

function ImGui.PopButtonRepeat() end

-- Next item open state
---@param is_open boolean
---@param cond ImGuiCond|nil
function ImGui.SetNextItemOpen(is_open, cond) end

-- Next frame capture state
---@param want_capture_keyboard boolean|nil
function ImGui.SetNextFrameWantCaptureKeyboard(want_capture_keyboard) end

---@param want_capture_mouse boolean|nil
function ImGui.SetNextFrameWantCaptureMouse(want_capture_mouse) end

-- Next window scroll
---@param scroll ImVec2
function ImGui.SetNextWindowScroll(scroll) end

-- Next window size constraints
---@param size_min ImVec2
---@param size_max ImVec2
function ImGui.SetNextWindowSizeConstraints(size_min, size_max) end

-- Get font texture UV for white pixel
---@return ImVec2
function ImGui.GetFontTexUvWhitePixel() end

-- Get color as U32
---@param idx ImGuiCol
---@return integer
function ImGui.GetColorU32(idx) end

---@param col ImVec4
---@return integer
function ImGui.GetColorU32(col) end

-- Is rect visible
---@return boolean
function ImGui.IsRectVisible() end

---@param size ImVec2
---@return boolean
function ImGui.IsRectVisible(size) end

---@param rect_min ImVec2
---@param rect_max ImVec2
---@return boolean
function ImGui.IsRectVisible(rect_min, rect_max) end

-- Enums (complete set from imgui.h)
ImGui.WindowFlags = {
    None = 0,
    NoTitleBar = 1,
    NoResize = 2,
    NoMove = 4,
    NoScrollbar = 8,
    NoScrollWithMouse = 16,
    NoCollapse = 32,
    AlwaysAutoResize = 64,
    NoBackground = 128,
    NoSavedSettings = 256,
    NoMouseInputs = 512,
    MenuBar = 1024,
    HorizontalScrollbar = 2048,
    NoFocusOnAppearing = 4096,
    NoBringToFrontOnFocus = 8192,
    AlwaysVerticalScrollbar = 16384,
    AlwaysHorizontalScrollbar = 32768,
    AlwaysUseWindowPadding = 65536,
    NoNavInputs = 262144,
    NoNavFocus = 524288,
    UnsavedDocument = 1048576,
    NoDocking = 2097152,
    NoNav = 786432,
    NoDecoration = 43,
    NoInputs = 786944,
    ChildWindow = 16777216,
    Tooltip = 33554432,
    Popup = 67108864,
    Modal = 134217728,
    ChildMenu = 268435456,
    DockNodeHost = 536870912,
    NavFlattened = 8388608
}

ImGui.ChildFlags = {
    None = 0,
    Border = 1,
    AlwaysUseWindowPadding = 2,
    ResizeX = 4,
    ResizeY = 8,
    AutoResizeX = 16,
    AutoResizeY = 32,
    AlwaysAutoResize = 48,
    FrameStyle = 64
}

ImGui.InputTextFlags = {
    None = 0,
    CharsDecimal = 1,
    CharsHexadecimal = 2,
    CharsUppercase = 4,
    CharsNoBlank = 8,
    AutoSelectAll = 16,
    EnterReturnsTrue = 32,
    CallbackCompletion = 64,
    CallbackHistory = 128,
    CallbackAlways = 256,
    CallbackCharFilter = 512,
    AllowTabInput = 1024,
    CtrlEnterForNewLine = 2048,
    NoHorizontalScroll = 4096,
    AlwaysOverwrite = 8192,
    ReadOnly = 16384,
    Password = 32768,
    NoUndoRedo = 65536,
    CharsScientific = 131072,
    CallbackResize = 262144,
    CallbackEdit = 524288,
    EscapeClearsAll = 1048576
}

-- ImGui.TreeNodeFlags = {
--     None = 0,
--     Selected = 1,
--     Framed = 2,
--     AllowOverlap = 4,
--     NoTreePushOnOpen = 8,
--     NoAutoOpenOnLog = 16,
--     DefaultOpen = 32,
--     OpenOnDoubleClick = 64,
--     OpenOnArrow = 128,
--     Leaf = 256,
--     Bullet = 512,
--     FramePadding = 1024,
--     SpanAvailWidth = 2048,
--     SpanFullWidth = 4096,
--     NavLeftJumpsBackHere = 8192,
--     CollapsingHeader = 26
-- }

-- ImGui.SelectableFlags = {
--     None = 0,
--     DontClosePopups = 1,
--     SpanAllColumns = 2,
--     AllowDoubleClick = 4,
--     Disabled = 8,
--     AllowOverlap = 16
-- }

-- ImGui.ComboFlags = {
--     None = 0,
--     PopupAlignLeft = 1,
--     HeightSmall = 2,
--     HeightRegular = 4,
--     HeightLarge = 8,
--     HeightLargest = 16,
--     NoArrowButton = 32,
--     NoPreview = 64,
--     HeightMask_ = 30
-- }

-- ImGui.TabBarFlags = {
--     None = 0,
--     Reorderable = 1,
--     AutoSelectNewTabs = 2,
--     TabListPopupButton = 4,
--     NoCloseWithMiddleMouseButton = 8,
--     NoTabListScrollingButtons = 16,
--     NoTooltip = 32,
--     FittingPolicyResizeDown = 64,
--     FittingPolicyScroll = 128,
--     FittingPolicyMask_ = 192,
--     FittingPolicyDefault_ = 64
-- }

-- ImGui.TabItemFlags = {
--     None = 0,
--     UnsavedDocument = 1,
--     SetSelected = 2,
--     NoCloseWithMiddleMouseButton = 4,
--     NoPushId = 8,
--     NoTooltip = 16,
--     NoReorder = 32,
--     Leading = 64,
--     Trailing = 128
-- }

-- ImGui.FocusedFlags = {
--     None = 0,
--     ChildWindows = 1,
--     RootWindow = 2,
--     AnyWindow = 4,
--     RootAndChildWindows = 3
-- }

-- ImGui.HoveredFlags = {
--     None = 0,
--     ChildWindows = 1,
--     RootWindow = 2,
--     AnyWindow = 4,
--     AllowWhenBlockedByPopup = 8,
--     AllowWhenBlockedByActiveItem = 32,
--     AllowWhenOverlapped = 64,
--     AllowWhenDisabled = 128,
--     RectOnly = 104,
--     RootAndChildWindows = 3
-- }

-- ImGui.DragDropFlags = {
--     None = 0,
--     SourceNoPreviewTooltip = 1,
--     SourceNoDisableHover = 2,
--     SourceNoHoldToOpenOthers = 4,
--     SourceAllowNullID = 8,
--     SourceExtern = 16,
--     SourceAutoExpirePayload = 32,
--     AcceptBeforeDelivery = 1024,
--     AcceptNoDrawDefaultRect = 2048,
--     AcceptNoPreviewTooltip = 4096,
--     AcceptPeekOnly = 3072
-- }

-- ImGui.ColorEditFlags = {
--     None = 0,
--     NoAlpha = 2,
--     NoPicker = 4,
--     NoOptions = 8,
--     NoSmallPreview = 16,
--     NoInputs = 32,
--     NoTooltip = 64,
--     NoLabel = 128,
--     NoSidePreview = 256,
--     NoDragDrop = 512,
--     NoBorder = 1024,
--     AlphaBar = 65536,
--     AlphaPreview = 131072,
--     AlphaPreviewHalf = 262144,
--     HDR = 524288,
--     DisplayRGB = 1048576,
--     DisplayHSV = 2097152,
--     DisplayHex = 4194304,
--     Uint8 = 8388608,
--     Float = 16777216,
--     PickerHueBar = 33554432,
--     PickerHueWheel = 67108864,
--     InputRGB = 134217728,
--     InputHSV = 268435456,
--     DefaultOptions_ = 177209344
-- }

-- ImGui.SliderFlags = {
--     None = 0,
--     AlwaysClamp = 16,
--     Logarithmic = 32,
--     NoRoundToFormat = 64,
--     NoInput = 128,
--     InvalidMask_ = 1879048207
-- }

ImGui.MouseButton = {
    Left = 0,
    Right = 1,
    Middle = 2,
    COUNT = 5
}

ImGui.MouseCursor = {
    None = -1,
    Arrow = 0,
    TextInput = 1,
    ResizeAll = 2,
    ResizeNS = 3,
    ResizeEW = 4,
    ResizeNESW = 5,
    ResizeNWSE = 6,
    Hand = 7,
    NotAllowed = 8,
    COUNT = 9
}

ImGui.Cond = {
    None = 0,
    Always = 1,
    Once = 2,
    FirstUseEver = 4,
    Appearing = 8
}

ImGui.Col = {
    Text = 0,
    TextDisabled = 1,
    WindowBg = 2,
    ChildBg = 3,
    PopupBg = 4,
    Border = 5,
    BorderShadow = 6,
    FrameBg = 7,
    FrameBgHovered = 8,
    FrameBgActive = 9,
    TitleBg = 10,
    TitleBgActive = 11,
    TitleBgCollapsed = 12,
    MenuBarBg = 13,
    ScrollbarBg = 14,
    ScrollbarGrab = 15,
    ScrollbarGrabHovered = 16,
    ScrollbarGrabActive = 17,
    CheckMark = 18,
    SliderGrab = 19,
    SliderGrabActive = 20,
    Button = 21,
    ButtonHovered = 22,
    ButtonActive = 23,
    Header = 24,
    HeaderHovered = 25,
    HeaderActive = 26,
    Separator = 27,
    SeparatorHovered = 28,
    SeparatorActive = 29,
    ResizeGrip = 30,
    ResizeGripHovered = 31,
    ResizeGripActive = 32,
    Tab = 33,
    TabHovered = 34,
    TabActive = 35,
    TabUnfocused = 36,
    TabUnfocusedActive = 37,
    DockingPreview = 38,
    DockingEmptyBg = 39,
    PlotLines = 40,
    PlotLinesHovered = 41,
    PlotHistogram = 42,
    PlotHistogramHovered = 43,
    TextSelectedBg = 44,
    DragDropTarget = 45,
    NavHighlight = 46,
    NavWindowingHighlight = 47,
    NavWindowingDimBg = 48,
    ModalWindowDimBg = 49,
    TableHeaderBg = 50,
    TableBorderStrong = 51,
    TableBorderLight = 52,
    TableRowBg = 53,
    TableRowBgAlt = 54,
    COUNT = 55
}

ImGui.StyleVar = {
    Alpha = 0,
    DisabledAlpha = 1,
    WindowPadding = 2,
    WindowRounding = 3,
    WindowBorderSize = 4,
    WindowMinSize = 5,
    WindowTitleAlign = 6,
    ChildRounding = 7,
    ChildBorderSize = 8,
    PopupRounding = 9,
    PopupBorderSize = 10,
    FramePadding = 11,
    FrameRounding = 12,
    FrameBorderSize = 13,
    ItemSpacing = 14,
    ItemInnerSpacing = 15,
    IndentSpacing = 16,
    CellPadding = 17,
    ScrollbarSize = 18,
    ScrollbarRounding = 19,
    GrabMinSize = 20,
    GrabRounding = 21,
    TabRounding = 22,
    ButtonTextAlign = 23,
    SelectableTextAlign = 24,
    COUNT = 25
}

-- ImGui.Key = {
--     Tab = 0,
--     LeftArrow = 1,
--     RightArrow = 2,
--     UpArrow = 3,
--     DownArrow = 4,
--     PageUp = 5,
--     PageDown = 6,
--     Home = 7,
--     End = 8,
--     Insert = 9,
--     Delete = 10,
--     Backspace = 11,
--     Space = 12,
--     Enter = 13,
--     Escape = 14,
--     KeyPadEnter = 15,
--     A = 16,
--     C = 17,
--     V = 18,
--     X = 19,
--     Y = 20,
--     Z = 21,
--     COUNT = 22
-- }

-- ImGui.NavInput = {
--     Activate = 0,
--     Cancel = 1,
--     Input = 2,
--     Menu = 3,
--     DpadLeft = 4,
--     DpadRight = 5,
--     DpadUp = 6,
--     DpadDown = 7,
--     LStickLeft = 8,
--     LStickRight = 9,
--     LStickUp = 10,
--     LStickDown = 11,
--     FocusPrev = 12,
--     FocusNext = 13,
--     TweakSlow = 14,
--     TweakFast = 15,
--     KeyMenu_ = 16,
--     KeyLeft_ = 17,
--     KeyRight_ = 18,
--     KeyUp_ = 19,
--     KeyDown_ = 20,
--     COUNT = 21,
--     InternalStart_ = 16
-- }

-- ImGui.ConfigFlags = {
--     None = 0,
--     NavEnableKeyboard = 1,
--     NavEnableGamepad = 2,
--     NavEnableSetMousePos = 4,
--     NavNoCaptureKeyboard = 8,
--     NoMouse = 16,
--     NoMouseCursorChange = 32,
--     DockingEnable = 64,
--     ViewportsEnable = 1024,
--     DpiEnableScaleViewports = 16384,
--     DpiEnableScaleFonts = 32768,
--     IsSRGB = 1048576,
--     IsTouchScreen = 2097152
-- }

ImGui.BackendFlags = {
    None = 0,
    HasGamepad = 1,
    HasMouseCursors = 2,
    HasSetMousePos = 4,
    RendererHasVtxOffset = 8,
    PlatformHasViewports = 1024,
    HasMouseHoveredViewport = 2048,
    RendererHasViewports = 4096
}

ImGui.Dir = {
    None = -1,
    Left = 0,
    Right = 1,
    Up = 2,
    Down = 3,
    COUNT = 4
}

ImGui.SortDirection = {
    None = 0,
    Ascending = 1,
    Descending = 2
}

-- ImGui.TableFlags = {
--     None = 0,
--     Resizable = 1,
--     Reorderable = 2,
--     Hideable = 4,
--     Sortable = 8,
--     NoSavedSettings = 16,
--     ContextMenuInBody = 32,
--     RowBg = 64,
--     BordersInnerH = 128,
--     BordersOuterH = 256,
--     BordersInnerV = 512,
--     BordersOuterV = 1024,
--     BordersH = 384,
--     BordersV = 1536,
--     BordersInner = 640,
--     BordersOuter = 1280,
--     Borders = 1920,
--     NoBordersInBody = 2048,
--     NoBordersInBodyUntilResize = 4096,
--     SizingFixedFit = 8192,
--     SizingFixedSame = 16384,
--     SizingStretchProp = 24576,
--     SizingStretchSame = 32768,
--     NoHostExtendX = 65536,
--     NoHostExtendY = 131072,
--     NoKeepColumnsVisible = 262144,
--     PreciseWidths = 524288,
--     NoClip = 1048576,
--     PadOuterX = 2097152,
--     NoPadOuterX = 4194304,
--     NoPadInnerX = 8388608,
--     ScrollX = 16777216,
--     ScrollY = 33554432,
--     SortMulti = 67108864,
--     SortTristate = 134217728,
--     HighlightHoveredColumn = 268435456
-- }

-- ImGui.TableColumnFlags = {
--     None = 0,
--     Disabled = 1,
--     DefaultHide = 2,
--     DefaultSort = 4,
--     WidthStretch = 8,
--     WidthFixed = 16,
--     NoResize = 32,
--     NoReorder = 64,
--     NoHide = 128,
--     NoClip = 256,
--     NoSort = 512,
--     NoSortAscending = 1024,
--     NoSortDescending = 2048,
--     NoHeaderWidth = 4096,
--     PreferSortAscending = 8192,
--     PreferSortDescending = 16384,
--     IndentEnable = 32768,
--     IndentDisable = 65536,
--     IsEnabled = 16777216,
--     IsVisible = 33554432,
--     IsSorted = 67108864,
--     IsHovered = 134217728
-- }

-- ImGui.TableRowFlags = {
--     None = 0,
--     Headers = 1
-- }

ImGui.TableBgTarget = {
    None = 0,
    RowBg0 = 1,
    RowBgTarget = 2,
    CellBg = 3
}

-- ImGui.DockNodeFlags = {
--     None = 0,
--     KeepAliveOnly = 1,
--     NoDockingInCentralNode = 4,
--     PassthruCentralNode = 8,
--     NoSplit = 16,
--     NoResize = 32,
--     AutoHideTabBar = 64
-- }

ImGui.DataType = {
    S8 = 0,
    U8 = 1,
    S16 = 2,
    U16 = 3,
    S32 = 4,
    U32 = 5,
    S64 = 6,
    U64 = 7,
    Float = 8,
    Double = 9,
    COUNT = 10
}

ImGui.DrawFlags = {
    None = 0,
    Closed = 1,
    RoundCornersTopLeft = 16,
    RoundCornersTopRight = 32,
    RoundCornersBottomLeft = 64,
    RoundCornersBottomRight = 128,
    RoundCornersNone = 256,
    RoundCornersTop = 48,
    RoundCornersBottom = 192,
    RoundCornersLeft = 80,
    RoundCornersRight = 160,
    RoundCornersAll = 240,
    RoundCornersDefault_ = 240,
    RoundCornersMask_ = 496
}

ImGui.DrawListFlags = {
    None = 0,
    AntiAliasedLines = 1,
    AntiAliasedLinesUseTex = 2,
    AntiAliasedFill = 4,
    AllowVtxOffset = 8
}

return ImGui