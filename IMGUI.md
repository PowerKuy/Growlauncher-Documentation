# ImGui Lua Bindings Documentation

[dump](dumps/imgui.lua)

## Table of Contents

- [Context Creation & Access](#context-creation--access)
- [Main Functions](#main-functions)
- [Demo & Debug Utilities](#demo--debug-utilities)
- [Style Management](#style-management)
- [Window Management](#window-management)
- [Child Windows](#child-windows)
- [Window Utilities](#window-utilities)
- [Content Region](#content-region)
- [Scrolling](#scrolling)
- [Style Stacks](#style-stacks)
- [Cursor & Layout](#cursor--layout)
- [ID Management](#id-management)
- [Text Widgets](#text-widgets)
- [Main Widgets](#main-widgets)
- [Color Editor/Picker](#color-editorpicker)
- [Trees](#trees)
- [Selectables](#selectables)
- [List Boxes](#list-boxes)
- [Data Plotting](#data-plotting)
- [Value Helpers](#value-helpers)
- [Menus](#menus)
- [Tooltips](#tooltips)
- [Popups & Modals](#popups--modals)
- [Columns](#columns)
- [Tab Bars & Tabs](#tab-bars--tabs)
- [Logging](#logging)
- [Drag & Drop](#drag--drop)
- [Clipping](#clipping)
- [Focus & Activation](#focus--activation)
- [Item Utilities](#item-utilities)
- [Viewports](#viewports)
- [Miscellaneous Utilities](#miscellaneous-utilities)
- [Input Handling](#input-handling)
- [Input Text Widgets](#input-text-widgets)
- [Image Functions](#image-functions)
- [Docking](#docking)
- [Tables](#tables)
- [State Management](#state-management)
- [Memory Management](#memory-management)
- [Enums & Constants](#enums--constants)

## Context Creation & Access

| Function            | Params                  | Return          | Description                   |
| :-                  | :-                      | :-              | :-                            |
| `CreateContext`     | `shared_font_atlas:any` | `ImGuiContext`  | Creates a new ImGui context   |
| `DestroyContext`    | `ctx:ImGuiContext`      | -               | Destroys an ImGui context     |
| `GetCurrentContext` | -                       | `ImGuiContext`  | Returns current ImGui context |
| `SetCurrentContext` | `ctx:ImGuiContext`      | -               | Sets current ImGui context    |

## Main Functions

| Function                | Params                        | Return          | Description                   |
| :-                      | :-                            | :-              | :-                            |
| `GetIO`                 | -                             | `ImGuiIO`       | Returns ImGui IO structure    |
| `GetStyle`              | -                             | `ImGuiStyle`    | Returns ImGui style structure |
| `GetBackgroundDrawList` | `viewport:ImGuiViewport\|nil` | `ImDrawList`    | Gets background draw list     |
| `GetForegroundDrawList` | `viewport:ImGuiViewport\|nil` | `ImDrawList`    | Gets foreground draw list     |
| `NewFrame`              | -                             | -               | Starts a new ImGui frame      |
| `EndFrame`              | -                             | -               | Ends current ImGui frame      |
| `Render`                | -                             | -               | Renders ImGui draw data       |
| `GetDrawData`           | -                             | `ImDrawData`    | Gets current draw data        |

## Demo & Debug Utilities

| Function              | Params                | Return    | Description                   |
| :-                    | :-                    | :-        | :-                            |
| `ShowDemoWindow`      | `p_open:boolean\|nil` | -         | Shows ImGui demo window       |
| `ShowMetricsWindow`   | `p_open:boolean\|nil` | -         | Shows ImGui metrics window    |
| `ShowDebugLogWindow`  | `p_open:boolean\|nil` | -         | Shows ImGui debug log window  |
| `ShowStackToolWindow` | `p_open:boolean\|nil` | -         | Shows ImGui stack tool window |
| `ShowStyleEditor`     | `ref:ImGuiStyle\|nil` | -         | Shows ImGui style editor      |
| `ShowStyleSelector`   | `label:string`        | `boolean` | Shows style selector          |
| `ShowFontSelector`    | `label:string`        | -         | Shows font selector           |
| `ShowUserGuide`       | -                     | -         | Shows ImGui user guide        |
| `ShowAboutWindow`     | `p_open:boolean\|nil` | -         | Shows ImGui about window      |
| `GetVersion`          | -                     | `string`  | Returns ImGui version         |

## Style Management

| Function             | Params | Return | Description              |
| :-                   | :-     | :-     | :-                       |
| `StyleColorsDark`    | -      | -      | Sets dark color style    |
| `StyleColorsClassic` | -      | -      | Sets classic color style |
| `StyleColorsLight`   | -      | -      | Sets light color style   |

## Window Management

| Function | Params                                                              | Return             | Description         |
| :-       | :-                                                                  | :-                 | :-                  |
| `Begin`  | `name:string`, `p_open:boolean\|nil`, `flags:ImGuiWindowFlags\|nil` | `boolean, boolean` | Begins a new window |
| `End`    | -                                                                   | -                  | Ends current window |

## Child Windows

| Function       | Params                                                                                    | Return    | Description                         |
| :-             | :-                                                                                        | :-        | :-                                  |
| `BeginChild`   | `str_id:string`, `size:ImVec2\|nil`, `border:boolean\|nil`, `flags:ImGuiWindowFlags\|nil` | `boolean` | Begins child window with string ID  |
| `BeginChild`   | `id:integer`, `size:ImVec2\|nil`, `border:boolean\|nil`, `flags:ImGuiWindowFlags\|nil`    | `boolean` | Begins child window with integer ID |
| `EndChild`     | -                                                                                         | -         | Ends a child window                 |

## Window Utilities

| Function                      | Params                                                   | Return          | Description                         |
| :-                            | :-                                                       | :-              | :-                                  |
| `IsWindowAppearing`           | -                                                        | `boolean`       | Returns true if window is appearing |
| `IsWindowCollapsed`           | -                                                        | `boolean`       | Returns true if window is collapsed |
| `IsWindowFocused`             | `flags:ImGuiFocusedFlags\|nil`                           | `boolean`       | Returns true if window is focused   |
| `IsWindowHovered`             | `flags:ImGuiHoveredFlags\|nil`                           | `boolean`       | Returns true if window is hovered   |
| `GetWindowDrawList`           | -                                                        | `ImDrawList`    | Gets window's draw list             |
| `GetWindowDpiScale`           | -                                                        | `number`        | Gets window's DPI scale             |
| `GetWindowPos`                | -                                                        | `number, number`| Gets window position                |
| `GetWindowSize`               | -                                                        | `number, number`| Gets window size                    |
| `GetWindowWidth`              | -                                                        | `number`        | Gets window width                   |
| `GetWindowHeight`             | -                                                        | `number`        | Gets window height                  |
| `GetWindowContentRegionMin`   | -                                                        | `number, number`| Gets window content region min      |
| `GetWindowContentRegionMax`   | -                                                        | `number, number`| Gets window content region max      |
| `GetWindowContentRegionWidth` | -                                                        | `number`        | Gets window content region width    |
| `SetNextWindowPos`            | `pos:ImVec2`, `cond:ImGuiCond\|nil`, `pivot:ImVec2\|nil` | -               | Sets next window position           |
| `SetNextWindowSize`           | `size:ImVec2`, `cond:ImGuiCond\|nil`                     | -               | Sets next window size               |
| `SetNextWindowContentSize`    | `size:ImVec2`                                            | -               | Sets next window content size       |
| `SetNextWindowCollapsed`      | `collapsed:boolean`, `cond:ImGuiCond\|nil`               | -               | Sets next window collapsed state    |
| `SetNextWindowFocus`          | -                                                        | -               | Sets next window to be focused      |
| `SetNextWindowBgAlpha`        | `alpha:number`                                           | -               | Sets next window background alpha   |
| `SetNextWindowViewport`       | `viewport:ImGuiViewport`                                 | -               | Sets next window viewport           |
| `SetWindowPos`                | `pos:ImVec2`, `cond:ImGuiCond\|nil`                      | -               | Sets current window position        |
| `SetWindowSize`               | `size:ImVec2`, `cond:ImGuiCond\|nil`                     | -               | Sets current window size            |
| `SetWindowCollapsed`          | `collapsed:boolean`, `cond:ImGuiCond\|nil`               | -               | Sets current window collapsed state |
| `SetWindowFocus`              | -                                                        | -               | Sets current window to be focused   |
| `SetWindowFocus`              | `name:string`                                            | -               | Sets named window to be focused     |
| `SetWindowFontScale`          | `scale:number`                                           | -               | Sets current window font scale      |

## Content Region

| Function                      | Params | Return    | Description                        |
| :-                            | :-     | :-        | :-                                 |
| `GetContentRegionAvail`       | -      | `ImVec2`  | Gets available content region      |
| `GetContentRegionMax`         | -      | `ImVec2`  | Gets maximum content region        |
| `GetWindowContentRegionMin`   | -      | `ImVec2`  | Gets window content region minimum |
| `GetWindowContentRegionMax`   | -      | `ImVec2`  | Gets window content region maximum |
| `GetWindowContentRegionWidth` | -      | `number`  | Gets window content region width   |

## Scrolling

| Function             | Params                                         | Return   | Description                           |
| :-                   | :-                                             | :-       | :-                                    |
| `GetScrollX`         | -                                              | `number` | Gets horizontal scroll position       |
| `GetScrollY`         | -                                              | `number` | Gets vertical scroll position         |
| `SetScrollX`         | `scroll_x:number`                              | -        | Sets horizontal scroll position       |
| `SetScrollY`         | `scroll_y:number`                              | -        | Sets vertical scroll position         |
| `GetScrollMaxX`      | -                                              | `number` | Gets maximum horizontal scroll        |
| `GetScrollMaxY`      | -                                              | `number` | Gets maximum vertical scroll          |
| `SetScrollHereX`     | `center_x_ratio:number\|nil`                   | -        | Sets horizontal scroll to current pos |
| `SetScrollHereY`     | `center_y_ratio:number\|nil`                   | -        | Sets vertical scroll to current pos   |
| `SetScrollFromPosX`  | `local_x:number`, `center_x_ratio:number\|nil` | -        | Sets horizontal scroll from pos       |
| `SetScrollFromPosY`  | `local_y:number`, `center_y_ratio:number\|nil` | -        | Sets vertical scroll from pos         |

## Style Stacks

| Function                 | Params                                    | Return   | Description                     |
| :-                       | :-                                        | :-       | :-                              |
| `PushStyleVar`           | `idx:ImGuiStyleVar`, `val:number\|ImVec2` | -        | Pushes a style variable         |
| `PopStyleVar`            | `count:integer\|nil`                      | -        | Pops style variables            |
| `PushStyleColor`         | `idx:ImGuiCol`, `col:ImVec4`              | -        | Pushes a style color            |
| `PopStyleColor`          | `count:integer\|nil`                      | -        | Pops style colors               |
| `PushFont`               | `font:ImFont`                             | -        | Pushes a font                   |
| `PopFont`                | -                                         | -        | Pops current font               |
| `PopAllowKeyboardFocus`  | -                                         | -        | Pops keyboard focus allowance   |
| `PushAllowKeyboardFocus` | `allow_keyboard_focus:boolean`            | -        | Pushes keyboard focus allowance |
| `PushItemWidth`          | `item_width:number`                       | -        | Pushes item width               |
| `PopItemWidth`           | -                                         | -        | Pops item width                 |
| `SetNextItemWidth`       | `item_width:number`                       | -        | Sets next item width            |
| `CalcItemWidth`          | -                                         | `number` | Calculates item width           |
| `PushTextWrapPos`        | `wrap_pos_x:number\|nil`                  | -        | Pushes text wrap position       |
| `PopTextWrapPos`         | -                                         | -        | Pops text wrap position         |

## Cursor & Layout

| Function                       | Params                                                   | Return   | Description                        |
| :-                             | :-                                                       | :-       | :-                                 |
| `Separator`                    | -                                                        | -        | Adds a separator                   |
| `SameLine`                     | `offset_from_start_x:number\|nil`, `spacing:number\|nil` | -        | Moves cursor to same line          |
| `NewLine`                      | -                                                        | -        | Adds a new line                    |
| `Spacing`                      | -                                                        | -        | Adds vertical spacing              |
| `Dummy`                        | `size:ImVec2`                                            | -        | Adds a dummy item                  |
| `Indent`                       | `indent_w:number\|nil`                                   | -        | Indents the layout                 |
| `Unindent`                     | `indent_w:number\|nil`                                   | -        | Unindents the layout               |
| `BeginGroup`                   | -                                                        | -        | Begins a group                     |
| `EndGroup`                     | -                                                        | -        | Ends a group                       |
| `GetCursorPos`                 | -                                                        | `ImVec2` | Gets cursor position               |
| `SetCursorPos`                 | `pos:ImVec2`                                             | -        | Sets cursor position               |
| `SetCursorPosX`                | `x:number`                                               | -        | Sets cursor X position             |
| `SetCursorPosY`                | `y:number`                                               | -        | Sets cursor Y position             |
| `GetCursorPosX`                | -                                                        | `number` | Gets cursor X position             |
| `GetCursorPosY`                | -                                                        | `number` | Gets cursor Y position             |
| `GetCursorStartPos`            | -                                                        | `ImVec2` | Gets cursor start position         |
| `GetCursorScreenPos`           | -                                                        | `ImVec2` | Gets cursor screen position        |
| `SetCursorScreenPos`           | `pos:ImVec2`                                             | -        | Sets cursor screen position        |
| `AlignTextToFramePadding`      | -                                                        | -        | Aligns text to frame padding       |
| `GetTextLineHeight`            | -                                                        | `number` | Gets text line height              |
| `GetTextLineHeightWithSpacing` | -                                                        | `number` | Gets text line height with spacing |
| `GetFrameHeight`               | -                                                        | `number` | Gets frame height                  |
| `GetFrameHeightWithSpacing`    | -                                                        | `number` | Gets frame height with spacing     |
| `GetFontSize`                  | -                                                        | `number` | Gets font size                     |

## ID Management

| Function | Params            | Return    | Description         |
| :-       | :-                | :-        | :-                  |
| `PushID` | `str_id:string`   | -         | Pushes string ID    |
| `PushID` | `int_id:integer`  | -         | Pushes integer ID   |
| `PushID` | `ptr_id:userdata` | -         | Pushes pointer ID   |
| `PopID`  | -                 | -         | Pops ID             |
| `GetID`  | `str_id:string`   | `integer` | Gets ID from string |

## Text Widgets

| Function          | Params                                  | Return    | Description                        |
| :-                | :-                                      | :-        | :-                                 |
| `Text`            | `text:string`                           | -         | Displays text                      |
| `Text`            | `fmt:string`, `...:any`                 | -         | Displays formatted text            |
| `TextUnformatted` | `text:string`                           | -         | Displays unformatted text          |
| `TextColored`     | `col:ImVec4`, `text:string`             | -         | Displays colored text              |
| `TextColored`     | `col:ImVec4`, `fmt:string`, `...:any`   | -         | Displays formatted colored text    |
| `TextDisabled`    | `text:string`                           | -         | Displays disabled text             |
| `TextDisabled`    | `fmt:string`, `...:any`                 | -         | Displays formatted disabled text   |
| `TextWrapped`     | `text:string`                           | -         | Displays wrapped text              |
| `TextWrapped`     | `fmt:string`, `...:any`                 | -         | Displays formatted wrapped text    |
| `LabelText`       | `label:string`, `text:string`           | -         | Displays label with text           |
| `LabelText`       | `label:string`, `fmt:string`, `...:any` | -         | Displays label with formatted text |
| `BulletText`      | `text:string`                           | -         | Displays bulleted text             |
| `BulletText`      | `fmt:string`, `...:any`                 | -         | Displays formatted bulleted text   |
| `Bullet`          | -                                       | -         | Displays a bullet                  |

## Main Widgets

| Function            | Params                                                                                                                                                                                                             | Return                      | Description                          |
| :-                  | :-                                                                                                                                                                                                                 | :-                          | :-                                   |
| `Button`            | `label:string`, `size:ImVec2\|nil`                                                                                                                                                                                 | `boolean`                   | Creates a button                     |
| `SmallButton`       | `label:string`                                                                                                                                                                                                     | `boolean`                   | Creates a small button               |
| `InvisibleButton`   | `str_id:string`, `size:ImVec2`, `flags:ImGuiButtonFlags\|nil`                                                                                                                                                      | `boolean`                   | Creates invisible button             |
| `ArrowButton`       | `str_id:string`, `dir:ImGuiDir`                                                                                                                                                                                    | `boolean`                   | Creates arrow button                 |
| `DragFloat`         | `label:string`, `v:number`, `v_speed:number\|nil`, `v_min:number\|nil`, `v_max:number\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                   | `boolean, number`           | Drag for float value                 |
| `DragFloat2`        | `label:string`, `v:number[]`, `v_speed:number\|nil`, `v_min:number\|nil`, `v_max:number\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                 | `boolean, number[]`         | Drag for 2 float values              |
| `DragFloat3`        | `label:string`, `v:number[]`, `v_speed:number\|nil`, `v_min:number\|nil`, `v_max:number\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                 | `boolean, number[]`         | Drag for 3 float values              |
| `DragFloat4`        | `label:string`, `v:number[]`, `v_speed:number\|nil`, `v_min:number\|nil`, `v_max:number\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                 | `boolean, number[]`         | Drag for 4 float values              |
| `DragFloatRange2`   | `label:string`, `v_current_min:number`, `v_current_max:number`, `v_speed:number\|nil`, `v_min:number\|nil`, `v_max:number\|nil`, `format:string\|nil`, `format_max:string\|nil`, `flags:ImGuiSliderFlags\|nil`     | `boolean, number, number`   | Drag for float range                 |
| `DragInt`           | `label:string`, `v:integer`, `v_speed:number\|nil`, `v_min:integer\|nil`, `v_max:integer\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                | `boolean, integer`          | Drag for integer value               |
| `DragInt2`          | `label:string`, `v:integer[]`, `v_speed:number\|nil`, `v_min:integer\|nil`, `v_max:integer\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                              | `boolean, integer[]`        | Drag for 2 integer values            |
| `DragInt3`          | `label:string`, `v:integer[]`, `v_speed:number\|nil`, `v_min:integer\|nil`, `v_max:integer\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                              | `boolean, integer[]`        | Drag for 3 integer values            |
| `DragInt4`          | `label:string`, `v:integer[]`, `v_speed:number\|nil`, `v_min:integer\|nil`, `v_max:integer\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                              | `boolean, integer[]`        | Drag for 4 integer values            |
| `DragIntRange2`     | `label:string`, `v_current_min:integer`, `v_current_max:integer`, `v_speed:number\|nil`, `v_min:integer\|nil`, `v_max:integer\|nil`, `format:string\|nil`, `format_max:string\|nil`, `flags:ImGuiSliderFlags\|nil` | `boolean, integer, integer` | Drag for integer range               |
| `DragScalar`        | `label:string`, `data_type:ImGuiDataType`, `p_data:any`, `v_speed:number\|nil`, `p_min:any\|nil`, `p_max:any\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                            | `boolean`                   | Drag for scalar value                |
| `SliderFloat`       | `label:string`, `v:number`, `v_min:number`, `v_max:number`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                                    | `boolean, number`           | Slider for float value               |
| `SliderFloat2`      | `label:string`, `v:number[]`, `v_min:number`, `v_max:number`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                                  | `boolean, number[]`         | Slider for 2 float values            |
| `SliderFloat3`      | `label:string`, `v:number[]`, `v_min:number`, `v_max:number`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                                  | `boolean, number[]`         | Slider for 3 float values            |
| `SliderFloat4`      | `label:string`, `v:number[]`, `v_min:number`, `v_max:number`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                                  | `boolean, number[]`         | Slider for 4 float values            |
| `SliderAngle`       | `label:string`, `v_rad:number`, `v_degrees_min:number\|nil`, `v_degrees_max:number\|nil`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                      | `boolean, number`           | Slider for angle in radians          |
| `SliderInt`         | `label:string`, `v:integer`, `v_min:integer`, `v_max:integer`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                                 | `boolean, integer`          | Slider for integer value             |
| `SliderInt2`        | `label:string`, `v:integer[]`, `v_min:integer`, `v_max:integer`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                               | `boolean, integer[]`        | Slider for 2 integer values          |
| `SliderInt3`        | `label:string`, `v:integer[]`, `v_min:integer`, `v_max:integer`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                               | `boolean, integer[]`        | Slider for 3 integer values          |
| `SliderInt4`        | `label:string`, `v:integer[]`, `v_min:integer`, `v_max:integer`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                               | `boolean, integer[]`        | Slider for 4 integer values          |
| `SliderScalar`      | `label:string`, `data_type:ImGuiDataType`, `p_data:any`, `p_min:any`, `p_max:any`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                             | `boolean`                   | Slider for scalar value              |
| `VSliderFloat`      | `label:string`, `size:ImVec2`, `v:number`, `v_min:number`, `v_max:number`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                     | `boolean, number`           | Vertical slider for float            |
| `VSliderInt`        | `label:string`, `size:ImVec2`, `v:integer`, `v_min:integer`, `v_max:integer`, `format:string\|nil`, `flags:ImGuiSliderFlags\|nil`                                                                                  | `boolean, integer`          | Vertical slider for integer          |
| `Checkbox`          | `label:string`, `v:boolean`                                                                                                                                                                                        | `boolean, boolean`          | Checkbox widget                      |
| `CheckboxFlags`     | `label:string`, `flags:integer`, `flags_value:integer`                                                                                                                                                             | `boolean, integer`          | Checkbox for flags                   |
| `RadioButton`       | `label:string`, `active:boolean`                                                                                                                                                                                   | `boolean`                   | Radio button                         |
| `RadioButtonInt`    | `label:string`, `v:integer`, `v_button:integer`                                                                                                                                                                    | `boolean, integer`          | Radio button returning integer       |
| `ProgressBar`       | `fraction:number`, `size_arg:ImVec2\|nil`, `overlay:string\|nil`                                                                                                                                                   | -                           | Progress bar                         |
| `TreeNode`          | `label:string`, `flags:ImGuiTreeNodeFlags\|nil`                                                                                                                                                                    | `boolean`                   | Tree node with label                 |
| `TreeNode`          | `str_id:string`, `flags:ImGuiTreeNodeFlags\|nil`, `fmt:string`, `...:any`                                                                                                                                          | `boolean`                   | Tree node with string ID and format  |
| `TreeNode`          | `ptr_id:userdata`, `flags:ImGuiTreeNodeFlags\|nil`, `fmt:string`, `...:any`                                                                                                                                        | `boolean`                   | Tree node with pointer ID and format |
| `TreePush`          | -                                                                                                                                                                                                                  | -                           | Pushes tree node                     |
| `TreePush`          | `str_id:string`                                                                                                                                                                                                    | -                           | Pushes tree node with string ID      |
| `TreePush`          | `ptr_id:userdata`                                                                                                                                                                                                  | -                           | Pushes tree node with pointer ID     |
| `TreePop`           | -                                                                                                                                                                                                                  | -                           | Pops tree node                       |
| `GetTreeNodeToLabelSpacing` | -                                                                                                                                                                                                          | `number`                    | Gets tree node to label spacing      |
| `CollapsingHeader`  | `label:string`, `flags:ImGuiTreeNodeFlags\|nil`                                                                                                                                                                    | `boolean`                   | Collapsing header                    |
| `CollapsingHeader`  | `label:string`, `p_open:boolean`, `flags:ImGuiTreeNodeFlags\|nil`                                                                                                                                                  | `boolean, boolean`          | Collapsing header with open state    |
| `ListBox`           | `label:string`, `current_item:integer`, `items:string[]`, `height_in_items:integer\|nil`                                                                                                                           | `boolean, integer`          | List box                             |
| `ListBox`           | `label:string`, `current_item:integer`, `items_getter:function`, `data:userdata`, `items_count:integer`, `height_in_items:integer\|nil`                                                                            | `boolean, integer`          | List box with callback               |
| `BeginListBox`      | `label:string`, `size:ImVec2\|nil`                                                                                                                                                                                 | `boolean`                   | Begins a list box                    |
| `EndListBox`        | -                                                                                                                                                                                                                  | -                           | Ends a list box                      |
| `BeginCombo`        | `label:string`, `preview_value:string`, `flags:ImGuiComboFlags\|nil`                                                                                                                                               | `boolean`                   | Begins a combo box                   |
| `EndCombo`          | -                                                                                                                                                                                                                  | -                           | Ends a combo box                     |
| `Combo`             | `label:string`, `current_item:integer`, `items:string[]`, `popup_max_height_in_items:integer\|nil`                                                                                                                 | `boolean, integer`          | Combo box                            |
| `Combo`             | `label:string`, `current_item:integer`, `items_getter:function`, `data:userdata`, `items_count:integer`, `popup_max_height_in_items:integer\|nil`                                                                  | `boolean, integer`          | Combo box with callback              |

## Color Editor/Picker

| Function              | Params                                                                                    | Return              | Description               |
| :-                    | :-                                                                                        | :-                  | :-                        |
| `ColorEdit3`          | `label:string`, `col:number[]`, `flags:ImGuiColorEditFlags\|nil`                          | `boolean, number[]` | Color editor for 3 values |
| `ColorEdit4`          | `label:string`, `col:number[]`, `flags:ImGuiColorEditFlags\|nil`                          | `boolean, number[]` | Color editor for 4 values |
| `ColorPicker3`        | `label:string`, `col:number[]`, `flags:ImGuiColorEditFlags\|nil`                          | `boolean, number[]` | Color picker for 3 values |
| `ColorPicker4`        | `label:string`, `col:number[]`, `flags:ImGuiColorEditFlags\|nil`, `ref_col:number[]\|nil` | `boolean, number[]` | Color picker for 4 values |
| `ColorButton`         | `desc_id:string`, `col:ImVec4`, `flags:ImGuiColorEditFlags\|nil`, `size:ImVec2\|nil`      | `boolean`           | Color button              |
| `SetColorEditOptions` | `flags:ImGuiColorEditFlags`                                                               | -                   | Sets color edit options   |

## Trees

| Function       | Params                                                                 | Return    | Description                          |
| :-             | :-                                                                     | :-        | :-                                   |
| `TreeNodeEx`   | `label:string`, `flags:ImGuiTreeNodeFlags\|nil`                        | `boolean` | Tree node with extended flags        |
| `TreeNodeEx`   | `str_id:string`, `flags:ImGuiTreeNodeFlags`, `fmt:string`, `...:any`   | `boolean` | Tree node with string ID and format  |
| `TreeNodeEx`   | `ptr_id:userdata`, `flags:ImGuiTreeNodeFlags`, `fmt:string`, `...:any` | `boolean` | Tree node with pointer ID and format |

## Selectables

| Function     | Params                                                                                         | Return             | Description                         |
| :-           | :-                                                                                             | :-                 | :-                                  |
| `Selectable` | `label:string`, `selected:boolean\|nil`, `flags:ImGuiSelectableFlags\|nil`, `size:ImVec2\|nil` | `boolean`          | Selectable item                     |
| `Selectable` | `label:string`, `p_selected:boolean`, `flags:ImGuiSelectableFlags\|nil`, `size:ImVec2\|nil`    | `boolean, boolean` | Selectable item with selected state |

## List Boxes

| Function        | Params                                                                | Return    | Description                              |
| :-              | :-                                                                    | :-        | :-                                       |
| `ListBoxHeader` | `label:string`, `size:ImVec2\|nil`                                    | `boolean` | Begins list box (legacy)                 |
| `ListBoxHeader` | `label:string`, `items_count:integer`, `height_in_items:integer\|nil` | `boolean` | Begins list box with item count (legacy) |
| `ListBoxFooter` | -                                                                     | -         | Ends list box (legacy)                   |

## Data Plotting

| Function        | Params                                                                                                                                                                                                                  | Return | Description                   |
| :-              | :-                                                                                                                                                                                                                      | :-     | :-                            |
| `PlotLines`     | `label:string`, `values:number[]`, `values_offset:integer\|nil`, `overlay_text:string\|nil`, `scale_min:number\|nil`, `scale_max:number\|nil`, `graph_size:ImVec2\|nil`                                                 | -      | Plot lines                    |
| `PlotLines`     | `label:string`, `values_getter:function`, `data:userdata`, `values_count:integer`, `values_offset:integer\|nil`, `overlay_text:string\|nil`, `scale_min:number\|nil`, `scale_max:number\|nil`, `graph_size:ImVec2\|nil` | -      | Plot lines with callback      |       
| `PlotHistogram` | `label:string`, `values:number[]`, `values_offset:integer\|nil`, `overlay_text:string\|nil`, `scale_min:number\|nil`, `scale_max:number\|nil`, `graph_size:ImVec2\|nil`                                                 | -      | Plot histogram                |
| `PlotHistogram` | `label:string`, `values_getter:function`, `data:userdata`, `values_count:integer`, `values_offset:integer\|nil`, `overlay_text:string\|nil`, `scale_min:number\|nil`, `scale_max:number\|nil`, `graph_size:ImVec2\|nil` | -      | Plot histogram with callback  |

## Value Helpers

| Function       | Params                                                  | Return | Description                      |
| :-             | :-                                                      | :-     | :-                               |
| `ValueBool`    | `prefix:string`, `b:boolean`                            | -      | Displays boolean value           |
| `ValueInt`     | `prefix:string`, `v:integer`                            | -      | Displays integer value           |
| `ValueUint`    | `prefix:string`, `v:integer`                            | -      | Displays unsigned integer value  |
| `ValueFloat`   | `prefix:string`, `v:number`, `float_format:string\|nil` | -      | Displays float value             |

## Menus

| Function            | Params                                                                                  | Return             | Description                   |
| :-                  | :-                                                                                      | :-                 | :-                            |
| `BeginMenuBar`      | -                                                                                       | `boolean`          | Begins a menu bar             |
| `EndMenuBar`        | -                                                                                       | -                  | Ends a menu bar               |
| `BeginMainMenuBar`  | -                                                                                       | `boolean`          | Begins main menu bar          |
| `EndMainMenuBar`    | -                                                                                       | -                  | Ends main menu bar            |
| `BeginMenu`         | `label:string`, `enabled:boolean\|nil`                                                  | `boolean`          | Begins a menu                 |
| `EndMenu`           | -                                                                                       | -                  | Ends a menu                   |
| `MenuItem`          | `label:string`, `shortcut:string\|nil`, `selected:boolean\|nil`, `enabled:boolean\|nil` | `boolean`          | Menu item                     |
| `MenuItem`          | `label:string`, `shortcut:string\|nil`, `p_selected:boolean`, `enabled:boolean\|nil`    | `boolean, boolean` | Menu item with selected state |

## Tooltips

| Function        | Params                  | Return | Description                 |
| :-              | :-                      | :-     | :-                          |
| `BeginTooltip`  | -                       | -      | Begins a tooltip            |
| `EndTooltip`    | -                       | -      | Ends a tooltip              |
| `SetTooltip`    | `text:string`           | -      | Sets tooltip text           |
| `SetTooltip`    | `fmt:string`, `...:any` | -      | Sets formatted tooltip text |

## Popups & Modals

| Function                  | Params                                                              | Return    | Description                     |
| :-                        | :-                                                                  | :-        | :-                              |
| `BeginPopup`              | `str_id:string`, `flags:ImGuiWindowFlags\|nil`                      | `boolean` | Begins a popup                  |
| `BeginPopupModal`         | `name:string`, `p_open:boolean\|nil`, `flags:ImGuiWindowFlags\|nil` | `boolean` | Begins modal popup              |
| `EndPopup`                | -                                                                   | -         | Ends a popup                    |
| `OpenPopup`               | `str_id:string`, `popup_flags:ImGuiPopupFlags\|nil`                 | -         | Opens a popup                   |
| `OpenPopupOnItemClick`    | `str_id:string\|nil`, `popup_flags:ImGuiPopupFlags\|nil`            | -         | Opens popup on item click       |
| `CloseCurrentPopup`       | -                                                                   | -         | Closes current popup            |
| `BeginPopupContextItem`   | `str_id:string\|nil`, `popup_flags:ImGuiPopupFlags\|nil`            | `boolean` | Begins context popup for item   |
| `BeginPopupContextWindow` | `str_id:string\|nil`, `popup_flags:ImGuiPopupFlags\|nil`            | `boolean` | Begins context popup for window |
| `BeginPopupContextVoid`   | `str_id:string\|nil`, `popup_flags:ImGuiPopupFlags\|nil`            | `boolean` | Begins context popup for void   |
| `IsPopupOpen`             | `str_id:string`, `flags:ImGuiPopupFlags\|nil`                       | `boolean` | Checks if popup is open         |

## Columns

| Function           | Params                                                           | Return    | Description               |
| :-                 | :-                                                               | :-        | :-                        |
| `BeginColumns`     | `str_id:string`, `count:integer`, `flags:ImGuiColumnsFlags\|nil` | -         | Begins columns            |
| `EndColumns`       | -                                                                | -         | Ends columns              |
| `NextColumn`       | -                                                                | -         | Moves to next column      |
| `GetColumnIndex`   | -                                                                | `integer` | Gets current column index |
| `GetColumnOffset`  | `column_index:integer\|nil`                                      | `number`  | Gets column offset        |
| `SetColumnOffset`  | `column_index:integer`, `offset:number`                          | -         | Sets column offset        |
| `GetColumnWidth`   | `column_index:integer\|nil`                                      | `number`  | Gets column width         |
| `SetColumnWidth`   | `column_index:integer`, `width:number`                           | -         | Sets column width         |
| `GetColumnsCount`  | -                                                                | `integer` | Gets columns count        |

## Tab Bars & Tabs
 
| Function           | Params                                                                | Return             | Description             |
| :-                 | :-                                                                    | :-                 | :-                      |
| `BeginTabBar`      | `str_id:string`, `flags:ImGuiTabBarFlags\|nil`                        | `boolean`          | Begins a tab bar        |
| `EndTabBar`        | -                                                                     | -                  | Ends a tab bar          |
| `BeginTabItem`     | `label:string`, `p_open:boolean\|nil`, `flags:ImGuiTabItemFlags\|nil` | `boolean, boolean` | Begins a tab item       |
| `EndTabItem`       | -                                                                     | -                  | Ends a tab item         |
| `TabItemButton`    | `label:string`, `flags:ImGuiTabItemFlags\|nil`                        | `boolean`          | Tab item button         |
| `SetTabItemClosed` | `tab_or_docked_window_label:string`                                   | -                  | Sets tab item as closed |

## Logging

| Function            | Params                                                 | Return    | Description       |
| :-                  | :-                                                     | :-        | :-                |
| `LogToTTY`          | `auto_open_depth:integer\|nil`                         | -         | Logs to TTY       |
| `LogToFile`         | `auto_open_depth:integer\|nil`, `filename:string\|nil` | -         | Logs to file      |
| `LogToClipboard`    | `auto_open_depth:integer\|nil`                         | -         | Logs to clipboard |
| `LogFinish`         | -                                                      | -         | Finishes logging  |
| `LogButtons`        | -                                                      | -         | Shows log buttons |
| `LogText`           | `fmt:string`, `...:any`                                | -         | Logs text         |

## Drag & Drop

| Function                | Params                                                                | Return              | Description               |
| :-                      | :-                                                                    | :-                  | :-                        |
| `BeginDragDropSource`   | `flags:ImGuiDragDropFlags\|nil`                                       | `boolean`           | Begins drag drop source   |
| `EndDragDropSource`     | -                                                                     | -                   | Ends drag drop source     |
| `BeginDragDropTarget`   | -                                                                     | `boolean`           | Begins drag drop target   |
| `EndDragDropTarget`     | -                                                                     | -                   | Ends drag drop target     |
| `AcceptDragDropPayload` | `type:string`                                                         | `ImGuiPayload\|nil` | Accepts drag drop payload |
| `SetDragDropPayload`    | `type:string`, `data:userdata`, `size:integer`, `cond:ImGuiCond\|nil` | `boolean`           | Sets drag drop payload    |

## Clipping

| Function       | Params                                                                                     | Return | Description           |
| :-             | :-                                                                                         | :-     | :-                    |
| `PushClipRect` | `clip_rect_min:ImVec2`, `clip_rect_max:ImVec2`, `intersect_with_current_clip_rect:boolean` | -      | Pushes clip rectangle |
| `PopClipRect`  | -                                                                                          | -      | Pops clip rectangle   |

## Focus & Activation

| Function               | Params                | Return  | Description                |
| :-                     | :-                    | :-      | :-                         |
| `SetItemDefaultFocus`  | -                     | -       | Sets item as default focus |
| `SetKeyboardFocusHere` | `offset:integer\|nil` | -       | Sets keyboard focus here   |

## Item Utilities

| Function                     | Params                               | Return    | Description                           |
| :-                           | :-                                   | :-        | :-                                    |
| `IsItemHovered`              | `flags:ImGuiHoveredFlags\|nil`       | `boolean` | Checks if item is hovered             |
| `IsItemActive`               | -                                    | `boolean` | Checks if item is active              |
| `IsItemFocused`              | -                                    | `boolean` | Checks if item is focused             |
| `IsItemClicked`              | `mouse_button:ImGuiMouseButton\|nil` | `boolean` | Checks if item is clicked             |
| `IsItemVisible`              | -                                    | `boolean` | Checks if item is visible             |
| `IsItemEdited`               | -                                    | `boolean` | Checks if item is edited              |
| `IsItemActivated`            | -                                    | `boolean` | Checks if item is activated           |
| `IsItemDeactivated`          | -                                    | `boolean` | Checks if item is deactivated         |
| `IsItemDeactivatedAfterEdit` | -                                    | `boolean` | Checks if item deactivated after edit |
| `IsItemToggledOpen`          | -                                    | `boolean` | Checks if item is toggled open        |
| `IsAnyItemHovered`           | -                                    | `boolean` | Checks if any item is hovered         |
| `IsAnyItemActive`            | -                                    | `boolean` | Checks if any item is active          |
| `IsAnyItemFocused`           | -                                    | `boolean` | Checks if any item is focused         |
| `GetItemRectMin`             | -                                    | `ImVec2`  | Gets item rectangle minimum           |
| `GetItemRectMax`             | -                                    | `ImVec2`  | Gets item rectangle maximum           |
| `GetItemRectSize`            | -                                    | `ImVec2`  | Gets item rectangle size              |
| `SetItemAllowOverlap`        | -                                    | -         | Sets item to allow overlap            |
| `GetItemID`                  | -                                    | `integer` | Gets item ID                          |

## Viewports

| Function          | Params | Return          | Description          |
| :-                | :-     | :-              | :-                   |
| `GetMainViewport` | -      | `ImGuiViewport` | Gets main viewport   |

## Miscellaneous Utilities

| Function                           | Params                                                                                                                                       | Return                   | Description                      |
| :-                                 | :-                                                                                                                                           | :-                       | :-                               |
| `IsRectVisible`                    | `size:ImVec2`                                                                                                                                | `boolean`                | Checks if rect visible by size   |
| `IsRectVisible`                    | `rect_min:ImVec2`, `rect_max:ImVec2`                                                                                                         | `boolean`                | Checks if rect visible by rect   |
| `GetTime`                          | -                                                                                                                                            | `number`                 | Gets current time                |
| `GetFrameCount`                    | -                                                                                                                                            | `integer`                | Gets frame count                 |
| `GetStyleColorName`                | `idx:ImGuiCol`                                                                                                                               | `string`                 | Gets style color name            |
| `GetStyleColorVec4`                | `idx:ImGuiCol`                                                                                                                               | `ImVec4`                 | Gets style color as vector       |
| `CalcTextSize`                     | `text:string`, `text_end:string\|nil`, `hide_text_after_double_hash:boolean\|nil`, `wrap_width:number\|nil`                                  | `ImVec2`                 | Calculates text size             |
| `CalcListClipping`                 | `items_count:integer`, `items_height:number`                                                                                                 | `integer, integer`       | Calculates list clipping         |
| `BeginChildFrame`                  | `id:integer`, `size:ImVec2`, `flags:ImGuiWindowFlags\|nil`                                                                                   | `boolean`                | Begins a child frame             |
| `EndChildFrame`                    | -                                                                                                                                            | -                        | Ends a child frame               |
| `ColorConvertU32ToFloat4`          | `in:integer`                                                                                                                                 | `ImVec4`                 | Converts U32 color to float4     |
| `ColorConvertFloat4ToU32`          | `in:ImVec4`                                                                                                                                  | `integer`                | Converts float4 color to U32     |
| `ColorConvertRGBtoHSV`             | `r:number`, `g:number`, `b:number`                                                                                                           | `number, number, number` | Converts RGB to HSV              |
| `ColorConvertHSVtoRGB`             | `h:number`, `s:number`, `v:number`                                                                                                           | `number, number, number` | Converts HSV to RGB              |
| `GetKeyIndex`                      | `imgui_key:ImGuiKey`                                                                                                                         | `integer`                | Gets key index                   |
| `IsKeyDown`                        | `user_key_index:integer`                                                                                                                     | `boolean`                | Checks if key is down            |
| `IsKeyPressed`                     | `user_key_index:integer`, `repeat:boolean\|nil`                                                                                              | `boolean`                | Checks if key is pressed         |
| `IsKeyReleased`                    | `user_key_index:integer`                                                                                                                     | `boolean`                | Checks if key is released        |
| `GetKeyPressedAmount`              | `key_index:integer`, `repeat_delay:number`, `rate:number`                                                                                    | `integer`                | Gets key pressed amount          |
| `CaptureKeyboardFromApp`           | `want_capture_keyboard:boolean\|nil`                                                                                                         | -                        | Captures keyboard from app       |
| `IsMouseDown`                      | `button:ImGuiMouseButton\|nil`                                                                                                               | `boolean`                | Checks if mouse button is down   |
| `IsMouseClicked`                   | `button:ImGuiMouseButton\|nil`, `repeat:boolean\|nil`                                                                                        | `boolean`                | Checks if mouse button clicked   |
| `IsMouseReleased`                  | `button:ImGuiMouseButton\|nil`                                                                                                               | `boolean`                | Checks if mouse button released  |
| `IsMouseDoubleClicked`             | `button:ImGuiMouseButton\|nil`                                                                                                               | `boolean`                | Checks if mouse double-clicked   |
| `GetMouseClickedCount`             | `button:ImGuiMouseButton\|nil`                                                                                                               | `integer`                | Gets mouse clicked count         |
| `IsMouseHoveringRect`              | `r_min:ImVec2`, `r_max:ImVec2`, `clip:boolean\|nil`                                                                                          | `boolean`                | Checks if mouse hovering rect    |
| `IsMousePosValid`                  | `mouse_pos:ImVec2\|nil`                                                                                                                      | `boolean`                | Checks if mouse position valid   |
| `IsAnyMouseDown`                   | -                                                                                                                                            | `boolean`                | Checks if any mouse down         |
| `GetMousePos`                      | -                                                                                                                                            | `ImVec2`                 | Gets mouse position              |
| `GetMousePosOnOpeningCurrentPopup` | -                                                                                                                                            | `ImVec2`                 | Gets mouse pos on opening popup  |
| `IsMouseDragging`                  | `button:ImGuiMouseButton\|nil`, `lock_threshold:number\|nil`                                                                                 | `boolean`                | Checks if mouse dragging         |
| `GetMouseDragDelta`                | `button:ImGuiMouseButton\|nil`, `lock_threshold:number\|nil`                                                                                 | `ImVec2`                 | Gets mouse drag delta            |
| `ResetMouseDragDelta`              | `button:ImGuiMouseButton\|nil`                                                                                                               | -                        | Resets mouse drag delta          |
| `GetMouseCursor`                   | -                                                                                                                                            | `ImGuiMouseCursor`       | Gets mouse cursor                |
| `SetMouseCursor`                   | `cursor_type:ImGuiMouseCursor`                                                                                                               | -                        | Sets mouse cursor                |
| `CaptureMouseFromApp`              | `want_capture_mouse:boolean\|nil`                                                                                                            | -                        | Captures mouse from app          |
| `GetClipboardText`                 | -                                                                                                                                            | `string`                 | Gets clipboard text              |
| `SetClipboardText`                 | `text:string`                                                                                                                                | -                        | Sets clipboard text              |
| `LoadIniSettingsFromDisk`          | `ini_filename:string`                                                                                                                        | -                        | Loads INI settings from disk     |
| `LoadIniSettingsFromMemory`        | `ini_data:string`, `ini_size:integer\|nil`                                                                                                   | -                        | Loads INI settings from memory   |
| `SaveIniSettingsToDisk`            | `ini_filename:string`                                                                                                                        | -                        | Saves INI settings to disk       |
| `SaveIniSettingsToMemory`          | `out_ini_size:integer\|nil`                                                                                                                  | `string`                 | Saves INI settings to memory     |
| `DebugTextEncoding`                | `text:string`                                                                                                                                | -                        | Debugs text encoding             |
| `DebugCheckVersionAndDataLayout`   | `version_str:string`, `sz_io:integer`, `sz_style:integer`, `sz_vec2:integer`, `sz_vec4:integer`, `sz_drawvert:integer`, `sz_drawidx:integer` | `boolean`                | Debugs version and data layout   |

## Input Handling

| Function                          | Params                               | Return    | Description                       |
| :-                                | :-                                   | :-        | :-                                |
| `SetNextFrameWantCaptureKeyboard` | `want_capture_keyboard:boolean\|nil` | -         | Sets next frame keyboard capture  |
| `SetNextFrameWantCaptureMouse`    | `want_capture_mouse:boolean\|nil`    | -         | Sets next frame mouse capture     |
| `SetNextWindowScroll`             | `scroll:ImVec2`                      | -         | Sets next window scroll           |
| `SetNextWindowSizeConstraints`    | `size_min:ImVec2`, `size_max:ImVec2` | -         | Sets next window size constraints |
| `GetFontTexUvWhitePixel`          | -                                    | `ImVec2`  | Gets font texture UV white pixel  |
| `GetColorU32`                     | `idx:ImGuiCol`                       | `integer` | Gets color as U32 by index        |
| `GetColorU32`                     | `col:ImVec4`                         | `integer` | Gets color as U32 by vector       |
| `IsRectVisible`                   | -                                    | `boolean` | Checks if rectangle visible       |
| `BeginDisabled`                   | `disabled:boolean`                   | -         | Begins disabled state             |
| `EndDisabled`                     | -                                    | -         | Ends disabled state               |
| `PushButtonRepeat`                | `repeat:boolean`                     | -         | Pushes button repeat state        |
| `PopButtonRepeat`                 | -                                    | -         | Pops button repeat state          |

## Input Text Widgets

| Function             | Params                                                                                                                                                                           | Return               | Description          |
| :-                   | :-                                                                                                                                                                               | :-                   | :-                   |
| `InputText`          | `label:string`, `buf:string`, `buf_size:integer\|nil`, `flags:ImGuiInputTextFlags\|nil`, `callback:function\|nil`, `user_data:any\|nil`                                          | `boolean, string`    | Input text           |
| `InputTextMultiline` | `label:string`, `buf:string`, `size:ImVec2\|nil`, `flags:ImGuiInputTextFlags\|nil`, `callback:function\|nil`, `user_data:any\|nil`                                               | `boolean, string`    | Multiline input text |
| `InputTextWithHint`  | `label:string`, `hint:string`, `buf:string`, `buf_size:integer\|nil`, `flags:ImGuiInputTextFlags\|nil`, `callback:function\|nil`, `user_data:any\|nil`                           | `boolean, string`    | Input text with hint |
| `InputFloat`         | `label:string`, `v:number`, `step:number\|nil`, `step_fast:number\|nil`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil`                                                  | `boolean, number`    | Input float          |
| `InputFloat2`        | `label:string`, `v:number[]`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil`                                                                                             | `boolean, number[]`  | Input 2 floats       |
| `InputFloat3`        | `label:string`, `v:number[]`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil`                                                                                             | `boolean, number[]`  | Input 3 floats       |
| `InputFloat4`        | `label:string`, `v:number[]`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil`                                                                                             | `boolean, number[]`  | Input 4 floats       |
| `InputInt`           | `label:string`, `v:integer`, `step:integer\|nil`, `step_fast:integer\|nil`, `flags:ImGuiInputTextFlags\|nil`                                                                     | `boolean, integer`   | Input integer        |
| `InputInt2`          | `label:string`, `v:integer[]`, `flags:ImGuiInputTextFlags\|nil`                                                                                                                  | `boolean, integer[]` | Input 2 integers     |
| `InputInt3`          | `label:string`, `v:integer[]`, `flags:ImGuiInputTextFlags\|nil`                                                                                                                  | `boolean, integer[]` | Input 3 integers     |
| `InputInt4`          | `label:string`, `v:integer[]`, `flags:ImGuiInputTextFlags\|nil`                                                                                                                  | `boolean, integer[]` | Input 4 integers     |
| `InputDouble`        | `label:string`, `v:number`, `step:number\|nil`, `step_fast:number\|nil`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil`                                                  | `boolean, number`    | Input double         |
| `InputScalar`        | `label:string`, `data_type:ImGuiDataType`, `p_data:any`, `p_step:any\|nil`, `p_step_fast:any\|nil`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil`                       | `boolean`            | Input scalar         |
| `InputScalarN`       | `label:string`, `data_type:ImGuiDataType`, `p_data:any`, `components:integer`, `p_step:any\|nil`, `p_step_fast:any\|nil`, `format:string\|nil`, `flags:ImGuiInputTextFlags\|nil` | `boolean`            | Input scalar N       |

## Image Functions

| Function      | Params                                                                                                                                                 | Return    | Description       |
| :-            | :-                                                                                                                                                     | :-        | :-                |
| `Image`       | `user_texture_id:any`, `size:ImVec2`, `uv0:ImVec2\|nil`, `uv1:ImVec2\|nil`, `tint_col:ImVec4\|nil`, `border_col:ImVec4\|nil`                           | -         | Displays an image |
| `ImageButton` | `user_texture_id:any`, `size:ImVec2`, `uv0:ImVec2\|nil`, `uv1:ImVec2\|nil`, `frame_padding:integer\|nil`, `bg_col:ImVec4\|nil`, `tint_col:ImVec4\|nil` | `boolean` | Image button      |

## Docking

| Function                | Params                                                                                     | Return    | Description                      |
|  :-                     | :-                                                                                        | :-        | :-                               |
| `DockSpace`             | `id:integer`, `size:ImVec2\|nil`, `flags:ImGuiDockNodeFlags\|nil`, `window_class:any\|nil` | `integer` | Creates dock space               |
| `DockSpaceOverViewport` | `viewport:ImGuiViewport\|nil`, `flags:ImGuiDockNodeFlags\|nil`, `window_class:any\|nil`    | `integer` | Creates dock space over viewport |
| `SetNextWindowDockID`   | `dock_id:integer`, `cond:ImGuiCond\|nil`                                                   | -         | Sets next window dock ID         |
| `SetNextWindowClass`    | `window_class:any`                                                                         | -         | Sets next window class           |
| `GetWindowDockID`       | -                                                                                          | `integer` | Gets window dock ID              |
| `IsWindowDocked`        | -                                                                                          | `boolean` | Checks if window docked          |

## Tables

| Function                 | Params                                                                                                               | Return                     | Description                 |
| :-                       | :-                                                                                                                   | :-                         | :-                          |
| `BeginTable`             | `str_id:string`, `column:integer`, `flags:ImGuiTableFlags\|nil`, `outer_size:ImVec2\|nil`, `inner_width:number\|nil` | `boolean`                  | Begins a table              |
| `EndTable`               | -                                                                                                                    | -                          | Ends a table                |
| `TableNextRow`           | `row_flags:ImGuiTableRowFlags\|nil`, `min_row_height:number\|nil`                                                    | -                          | Moves to next table row     |
| `TableNextColumn`        | -                                                                                                                    | `boolean`                  | Moves to next table column  |
| `TableSetColumnIndex`    | `column_n:integer`                                                                                                   | `boolean`                  | Sets table column index     |
| `TableSetupColumn`       | `label:string`, `flags:ImGuiTableColumnFlags\|nil`, `init_width_or_weight:number\|nil`, `user_id:integer\|nil`       | -                          | Sets up table column        |
| `TableSetupScrollFreeze` | `cols:integer`, `rows:integer`                                                                                       | -                          | Sets up table scroll freeze |
| `TableHeadersRow`        | -                                                                                                                    | -                          | Adds table headers row      |
| `TableHeader`            | `label:string`                                                                                                       | -                          | Adds table header           |
| `TableGetSortSpecs`      | -                                                                                                                    | `ImGuiTableSortSpecs\|nil` | Gets table sort specs       |
| `TableGetColumnCount`    | -                                                                                                                    | `integer`                  | Gets table column count     |
| `TableGetColumnIndex`    | -                                                                                                                    | `integer`                  | Gets table column index     |
| `TableGetRowIndex`       | -                                                                                                                    | `integer`                  | Gets table row index        |
| `TableGetColumnName`     | `column_n:integer\|nil`                                                                                              | `string`                   | Gets table column name      |
| `TableGetColumnFlags`    | `column_n:integer\|nil`                                                                                              | `ImGuiTableColumnFlags`    | Gets table column flags     |
| `TableSetColumnEnabled`  | `column_n:integer`, `v:boolean`                                                                                      | -                          | Sets table column enabled   |
| `TableSetColumnWidth`    | `column_n:integer`, `width:number`                                                                                   | -                          | Sets table column width     |
| `TableSetBgColor`        | `target:ImGuiTableBgTarget`, `color:integer`, `column_n:integer\|nil`                                                | -                          | Sets table background color |

## State Management

| Function          | Params                                   | Return | Description               |
| :-                | :-                                       | :-     | :-                        |
| `SetNextItemOpen` | `is_open:boolean`, `cond:ImGuiCond\|nil` | -      | Sets next item open state |

## Memory Management

| Function                | Params                                                            | Return                    | Description              |
| :-                      | :-                                                                | :-                        | :-                       |
| `SetAllocatorFunctions` | `alloc_func:function`, `free_func:function`, `user_data:any\|nil` | -                         | Sets allocator functions |
| `GetAllocatorFunctions` | -                                                                 | `function, function, any` | Gets allocator functions |
| `MemAlloc`              | `size:integer`                                                    | `any`                     | Allocates memory         |
| `MemFree`               | `ptr:any`                                                         | -                         | Frees memory             |

## Enums & Constants

The ImGui library provides numerous enums and constants for configuration:

- `ImGui.WindowFlags` - Window behavior flags
- `ImGui.ChildFlags` - Child window flags
- `ImGui.InputTextFlags` - Input text behavior flags
- `ImGui.TreeNodeFlags` - Tree node behavior flags
- `ImGui.SelectableFlags` - Selectable item flags
- `ImGui.ComboFlags` - Combo box flags
- `ImGui.TabBarFlags` - Tab bar flags
- `ImGui.TabItemFlags` - Tab item flags
- `ImGui.FocusedFlags` - Focus behavior flags
- `ImGui.HoveredFlags` - Hover behavior flags
- `ImGui.DragDropFlags` - Drag and drop flags
- `ImGui.ColorEditFlags` - Color editor flags
- `ImGui.SliderFlags` - Slider behavior flags
- `ImGui.MouseButton` - Mouse button identifiers
- `ImGui.MouseCursor` - Mouse cursor types
- `ImGui.Cond` - Condition flags
- `ImGui.Col` - Color identifiers
- `ImGui.StyleVar` - Style variable identifiers
- `ImGui.DataType` - Data types
- `ImGui.Dir` - Direction identifiers
- `ImGui.SortDirection` - Sort directions
- `ImGui.Key` - Key identifiers
- `ImGui.BackendFlags` - Backend capability flags
- `ImGui.TableFlags` - Table behavior flags
- `ImGui.TableColumnFlags` - Table column flags
- `ImGui.TableRowFlags` - Table row flags
- `ImGui.TableBgTarget` - Table background targets
- `ImGui.DockNodeFlags` - Docking node flags
- `ImGui.DrawFlags` - Drawing flags
- `ImGui.DrawListFlags` - Draw list flags

These enums can be accessed through the `ImGui` table (e.g., `ImGui.WindowFlags.NoTitleBar`).

Main growlauncher docs [here](./README.md)