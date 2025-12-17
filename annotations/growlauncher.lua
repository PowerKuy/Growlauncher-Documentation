---@meta

---@class Vector2
---@field x number
---@field y number

---@class Vector3
---@field x number
---@field y number
---@field z number

---@class Rect
---@field x number
---@field y number
---@field w number
---@field h number

---@class TankPacket
---@field netid number
---@field secnetid number
---@field type number
---@field state number
---@field value number
---@field x number
---@field y number
---@field xspeed number
---@field yspeed number
---@field px number
---@field py number
---@field padding1 number
---@field padding2 number
---@field padding3 number
---@field padding4 number
---@field padding5 number
---@field time number

---@class Dialog
---@field title string
---@field alias string
---@field message string
---@field confirm string
---@field ignore string
---@field url string

---@class Variant
---@field x number?
---@field y number?
---@field z number?

---@class VariantList
---@field v1 Variant|string|number|boolean
---@field v2 Variant|string|number|boolean
---@field v3 Variant|string|number|boolean
---@field v4 Variant|string|number|boolean
---@field v5 Variant|string|number|boolean
---@field v6 Variant|string|number|boolean
---@field v7 Variant|string|number|boolean

---@class NetAvatarClothes
---@field hair number
---@field shirt number
---@field pants number
---@field feet number
---@field hand number
---@field back number
---@field face number
---@field mask number
---@field necklace number

---@class NetAvatar
---@field pos Vector2
---@field size Vector2
---@field posX number
---@field posY number
---@field posXenc number
---@field posYenc number
---@field sizeX number
---@field sizeY number
---@field sizeXenc number
---@field sizeYenc number
---@field punchID number
---@field userID number
---@field name string
---@field netID number
---@field isLeft boolean
---@field status number
---@field irisColor number
---@field pupilColor number
---@field onGround boolean
---@field country string
---@field equip NetAvatarClothes
---@field effect NetAvatarClothes

---@class InventoryItem
---@field id number
---@field amount number

---@class WorldObject
---@field pos Vector2
---@field itemid number
---@field amount number
---@field invbit number
---@field id number

---@class ClientNPC
---@field pos Vector2
---@field targetpos Vector2
---@field id number
---@field type number

---@class ItemInfo
---@field id number
---@field type number
---@field name string
---@field breakHits number
---@field rarity number
---@field collisiontype number
---@field growTime number

---@class TileExtra
---@field type number
---@field label string
---@field label2 string
---@field label3 string
---@field owner number
---@field owner_signed number
---@field vend_price number
---@field vend_item number
---@field dshelf1 number
---@field dshelf2 number
---@field dshelf3 number
---@field dshelf4 number
---@field flag number
---@field admin number[]
---@field lastupdate number
---@field lastupdate2 number
---@field alttype number
---@field growth number
---@field volume number
---@field fruitcount number
---@field visible boolean
---@field color number

---@class Tile
---@field fg number
---@field bg number
---@field flag number
---@field collidable boolean
---@field x number
---@field y number
---@field coltype number
---@field extra TileExtra?
---@field progress number
---@field readyharvest boolean

---@class WorldTileMap
---@field size Vector2

-- Core Functions

---Log text to console
---@param text string|number|boolean
function LogToConsole(text) end

---Add data into module
---@param json string
---@param category_name string|nil
function addIntoModule(json, category_name) end

---Get value by type and name
---@param type number 0=boolean, 1=integer, 2=string
---@param name string
---@return boolean|number|string
function getValue(type, name) end

---Set value without trigger UI update
---@param name string
---@param value any
function setValue(name, value) end

---Bind Value
---@param type number 0=boolean, 1=integer, 2=string
---@param alias string
---@param default string|number|boolean
---@return boolean|number|string
function bindValue(type, alias, default) end

---Send notification popup
---@param text string
function sendNotification(text) end

---Get current time in milliseconds
---@return number
function getTime() end

---Send packet to server
---@param type number
---@param packet string
---@param to_client_first boolean?
function sendPacket(type, packet, to_client_first) end

---Sleep for specified milliseconds (yields in coroutine)
---@param delay number
function sleep(delay) end

---Get current world name
---@return string
function getCurrentWorldName() end

---Send raw tank packet
---@param flag boolean
---@param packet TankPacket
function sendPacketRaw(flag, packet) end

---Send dialog to Java
---@param dialog Dialog
function sendDialog(dialog) end

---Allow game to run (deprecated)
function allowGameRun() end

---Send variant list
---@param variantlist VariantList
---@param packet_data TankPacket?
---@param netid number?
---@param value number?
function sendVariantList(variantlist, packet_data, netid, value) end

---Find path to coordinates
---@param x number
---@param y number
---@param check_only boolean?
---@return boolean isBlocked
function FindPath(x, y, check_only) end

---Deprecated function placeholder
function deprecatedFunction() end

---Find item ID by name
---@param itemname string
---@return number itemid
function findItemID(itemname) end

---Get player by NetID
---@param netid number
---@return NetAvatar
function getPlayerByNetID(netid) end

---Get inventory items
---@return InventoryItem[]
function getInventory() end

---Send data to Java
---@param message string
function sendToJava(message) end

---Get list of world objects
---@return WorldObject[]
function getObjectList() end

---Get client NPC list
---@return ClientNPC[]
function getNPCList() end

---Get current gems amount
---@return number
function getGems() end

---Edit/change value or toggle
---@param name string
---@param value string|boolean|number
function editValue(name, value) end

---Set minimum version requirement
---@param version string
function setMinimum(version) end

---Run function in separate thread
---@param func function
---@param ... any
function runThread(func, ...) end

---Run coroutine tick (internal)
function tickCoroutine() end

---Run coroutine thread
---@param func function
---@param ... any
---@return any ...
function runCoroutine(func, ...) end

---Sleep in coroutine context
---@param milliseconds number
function CSleep(milliseconds) end

---Get item info by ID
---@param id number
---@return ItemInfo
function getItemInfoByID(id) end

---Get tile at coordinates
---@param x number
---@param y number
---@return Tile
function getTile(x, y) end

---Get item info by name
---@param name string
---@return ItemInfo
function getItemInfoByName(name) end

---Get all tiles in world
---@return Tile[]
function getTiles() end

---Get local player data
---@return NetAvatar
function getLocal() end

---Get list of all players
---@return NetAvatar[]
function getPlayerList() end

---Add shortcut
---@param name string
function addShortcut(name) end

---Remove shortcut
---@param name string
function removeShortcut(name) end

---Add hook for events
---@param func function
---@param name string|"ondraw"|"onvalue"|"ondialog"|"onsendpacket"|"onvariant"|"onsendpacketraw"|"ondrawimgui"|"ongamepacket"
---@param noret boolean?
function addHook(func, name, noret) end

---Remove hook
---@param name string|"ondraw"|"onvalue"|"ondialog"|"onsendpacket"|"onvariant"|"onsendpacketraw"|"ondrawimgui"|"ongamepacket"
function removeHook(name) end

---Decrypt text (internal)
---@param text string
function decryptText(text) end

---Decrypt text alternative (internal)
---@param text string
function decryptTextHuh(text) end

---Get world tile map
---@return WorldTileMap
function getWorldTileMap() end

---Check radius
---@param circle_x number
---@param circle_y number
---@param rad number
---@param x number
---@param y number
function isInside(circle_x, circle_y, rad, x, y) end

---@param packet TankPacket
function gamePacket(packet) end

-- Aliases for compatibility
editToggle = editValue

---Applies hooks to predefined global functions.
function applyHook() end
ApplyHook = applyHook

---@param o any
---@return string
function dumpTable(o) end

---@param text string
function log(text) end

---@class Growtopia
local growtopia = {}

---Enter a gateway door
---@param x number
---@param y number
---@param n number
function growtopia.enterGateway(x, y, n) end

---@param text string
---@param toClient boolean|nil
function growtopia.sendChat(text, toClient) end

---@param posx number
---@param posy number
---@param value number
function growtopia.tileChange(posx, posy, value) end

---@param dialog string
function growtopia.sendDialog(dialog) end

---@param msg string
function growtopia.notify(msg) end

---@param weatherid number
function growtopia.setWeather(weatherid) end

---@param id number
---@return string
function growtopia.getItemName(id) end

---@param name string
---@return number
function growtopia.getItemID(name) end

---@param itemid number
---@return boolean
function growtopia.checkInventory(itemid) end

---@param itemid number
---@return number
function growtopia.checkInventoryCount(itemid) end

---@param posx number
---@param posy number
---@return boolean
function growtopia.isOnPos(posx, posy) end

---@param world_name string
function growtopia.warpTo(world_name) end

function growtopia.enter() end

function growtopia.enterPos() end

---@param itemID number
function growtopia.dropItem(itemID) end

---@param itemID number
---@param amount number
function growtopia.confirmDropItem(itemID, amount) end

---@param url string
---@return string, string
function fetch(url)
end

---@param x number
---@param y number
---@return any
function tile.getTile(x, y) end
--- Deprecated
function tile.setFg(...) end
--- Deprecated
function tile.setBg(...) end

---@class ItemInfoManager
local itemInfoManager = {}
---@param id number
---@return table|nil
function itemInfoManager.getItemInfoByID(id) end
---@param name string
---@return table|nil
function itemInfoManager.getItemInfoByName(name) end

---@return ItemInfoManager
function getItemInfoManager() end

---Splits a string by a separator.
---@param str string
---@param regex string
---@return string[]
function split(str, regex) end

---Splits the string by separator.
---@param sep string
---@return string[]
function string:split(sep) end

---@param min number
---@param max number
---@return number
function randomSleep(min, max) end

---@param min number
---@param max number
---@return number
function randomCSleep(min, max) end

---@param name string
---@param s string
function writeToLocal(name, s) end

---@param function_cond fun(): boolean
---@param timeout number|nil
function await(function_cond, timeout) end

---@param c_x number
---@param c_y number
---@param radius number
---@param x number
---@param y number
---@return boolean
function isInside(c_x, c_y, radius, x, y) end

---@param name string
---@param icon string
function addCategory(name, icon) end

-- Deprecated function
---@param path string
---@param name string
function executeFromAssets(path, name) end

--- Trigger function onValue
---@param name string
---@param func function
function setOnValue(name, func) end

---@meta

---@class UserInterface
---@field sub_name string
---@field menu table[]
---@field icon string?
local UserInterface = {}
UserInterface.__index = UserInterface

---Create a new UserInterface instance
---@param sub_name string? The name of the UI sub-category (default: "Untitled")
---@param icon string? Optional icon for the UI
---@return UserInterface
function UserInterface.new(sub_name, icon) end

---Add a label to the UI
---@param text string The label text
---@return UserInterface self For method chaining
function UserInterface:addLabel(text) end

---Add a label with app styling
---@param text string The label text
---@param icon string? Optional icon for the label
---@return UserInterface self For method chaining
function UserInterface:addLabelApp(text, icon) end

---Add a toggle control
---@param text string The toggle text/label
---@param default boolean? Default state (default: false)
---@param alias string? Alias for the toggle
---@param autosave boolean? Whether to autosave the toggle state
---@return UserInterface self For method chaining
function UserInterface:addToggle(text, default, alias, autosave) end

---Add a toggle button control
---@param text string The toggle button text/label
---@param default boolean? Default state (default: false)
---@param alias string? Alias for the toggle button
---@return UserInterface self For method chaining
function UserInterface:addToggleButton(text, default, alias) end

---Add a button control
---@param text string The button text/label
---@param alias string? Alias for the button
---@return UserInterface self For method chaining
function UserInterface:addButton(text, alias) end

---Add a child button to a parent element
---@param parent table The parent element to add the button to
---@param text string The button text/label
---@param alias string? Alias for the button
---@return UserInterface self For method chaining
function UserInterface:addChildButton(parent, text, alias) end

---Add an expandable toggle control
---@param text string The toggle text/label
---@param default boolean? Default state (default: false)
---@param alias string? Alias for the toggle
---@param always_expand boolean? Whether the toggle is always expanded
---@param background boolean? Background setting for the toggle
---@return table expandable_toggle The created expandable toggle (for adding children)
function UserInterface:addExpandableToggle(text, default, alias, always_expand, background) end

---Add a child toggle to a parent element
---@param parent table The parent element to add the toggle to
---@param text string The toggle text/label
---@param default boolean? Default state (default: false)
---@param alias string? Alias for the toggle
---@param autosave boolean? Whether to autosave the toggle state
---@param background boolean? Background setting for the toggle
---@return UserInterface self For method chaining
function UserInterface:addChildToggle(parent, text, default, alias, autosave, background) end

---Add a slider control
---@param text string The slider text/label
---@param min_val number? Minimum value (default: 0)
---@param max_val number? Maximum value (default: 10)
---@param default_val number? Default value (default: 5)
---@param step number? Step size for the slider
---@param use_dot boolean? Whether to use dot notation
---@param alias string? Alias for the slider
---@return UserInterface self For method chaining
function UserInterface:addSlider(text, min_val, max_val, default_val, step, use_dot, alias) end

---Add a child slider to a parent element
---@param parent table The parent element to add the slider to
---@param text string The slider text/label
---@param min_val number? Minimum value (default: 0)
---@param max_val number? Maximum value (default: 10)
---@param default_val number? Default value (default: 5)
---@param step number? Step size for the slider
---@param use_dot boolean? Whether to use dot notation
---@param alias string? Alias for the slider
---@return UserInterface self For method chaining
function UserInterface:addChildSlider(parent, text, min_val, max_val, default_val, step, use_dot, alias) end

---Add a tooltip
---@param text string The tooltip text
---@param support_text string? Additional support text (default: "")
---@param icon string? Optional icon for the tooltip
---@param background boolean? Background setting for the tooltip
---@return UserInterface self For method chaining
function UserInterface:addTooltip(text, support_text, icon, background) end

---Add a child tooltip to a parent element
---@param parent table The parent element to add the tooltip to
---@param text string The tooltip text
---@param support_text string? Additional support text (default: "")
---@param icon string? Optional icon for the tooltip
---@param background boolean? Background setting for the tooltip
---@return UserInterface self For method chaining
function UserInterface:addChildTooltip(parent, text, support_text, icon, background) end

---Add an item picker control
---@param text string The item picker text/label
---@param item string? The item type (default: "Blank")
---@param default string? Default selected item (default: "Blank")
---@param alias string? Alias for the item picker
---@return UserInterface self For method chaining
function UserInterface:addItemPicker(text, item, default, alias) end

---Add a child item picker to a parent element
---@param parent table The parent element to add the item picker to
---@param text string The item picker text/label
---@param item string? The item type (default: "Blank")
---@param default string? Default selected item (default: "Blank")
---@param alias string? Alias for the item picker
---@return UserInterface self For method chaining
function UserInterface:addChildItemPicker(parent, text, item, default, alias) end

---Add an integer input control
---@param text string The input text/label
---@param default string? Default value (default: "0")
---@param label string? Input label (default: "Value")
---@param placeholder string? Placeholder text (default: "0")
---@param icon string? Optional icon for the input
---@param alias string? Alias for the input
---@return UserInterface self For method chaining
function UserInterface:addInputInt(text, default, label, placeholder, icon, alias) end

---Add a child integer input to a parent element
---@param parent table The parent element to add the input to
---@param text string The input text/label
---@param default string? Default value (default: "0")
---@param label string? Input label (default: "Value")
---@param placeholder string? Placeholder text (default: "0")
---@param icon string? Optional icon for the input
---@param alias string? Alias for the input
---@return UserInterface self For method chaining
function UserInterface:addChildInputInt(parent, text, default, label, placeholder, icon, alias) end

---Add a string input control
---@param text string The input text/label
---@param default string? Default value (default: "")
---@param label string? Input label (default: "Text")
---@param placeholder string? Placeholder text (default: "")
---@param icon string? Optional icon for the input
---@param alias string? Alias for the input
---@return UserInterface self For method chaining
function UserInterface:addInputString(text, default, label, placeholder, icon, alias) end

---Add a child string input to a parent element
---@param parent table The parent element to add the input to
---@param text string The input text/label
---@param default string? Default value (default: "")
---@param label string? Input label (default: "Text")
---@param placeholder string? Placeholder text (default: "")
---@param icon string? Optional icon for the input
---@param alias string? Alias for the input
---@return UserInterface self For method chaining
function UserInterface:addChildInputString(parent, text, default, label, placeholder, icon, alias) end

---Add a dialog control
---@param text string The dialog text/label
---@param support_text string? Support text for the dialog (default: "Click to open")
---@param menu_items table? Menu items for the dialog (default: {})
---@return table dialog The created dialog (for adding menu items)
function UserInterface:addDialog(text, support_text, menu_items) end

---Add a divider element
---@return UserInterface self For method chaining
function UserInterface:addDivider() end

---Add a display list control
---@param text string The display list text/label
---@param default string? Default value (default: "")
---@param alias string? Alias for the display list
---@return UserInterface self For method chaining
function UserInterface:addDisplayList(text, default, alias) end

---Add a tile select control
---@param text string The tile select text/label
---@param default string? Default value (default: "{}")
---@param alias string? Alias for the tile select
---@param count number? Number of tiles
---@return UserInterface self For method chaining
function UserInterface:addTileSelect(text, default, alias, count) end

---Generate JSON representation of the UI
---@return string json The JSON string
function UserInterface:generateJSON() end

---Convert a table to JSON format
---@param t table The table to convert
---@param indent string? Current indentation level
---@return string json The JSON string representation
function UserInterface:tableToJSON(t, indent) end

---Print the JSON representation to console
function UserInterface:printJSON() end

---Get the path library for the application
---@return string path The path to the application library
function getAppLibrary() end

---Load built-in modules
---@param name string The name of the module to load
function requireModule(name) end

---@meta

---@class Preferences
---@field name string               # Nama file preferences
---@field values table<string, any> # Key-value dari preferences
local Preferences = {}

---Bikin instance baru dari Preferences
---@param name string Nama file preferences (misalnya: "settings.json")
---@return Preferences
function Preferences:new(name) end

---Load preferences dari file
function Preferences:load() end

---Save preferences ke file
---@throws string kalau file gagal dibuka
function Preferences:save() end

---Ambil value dari preferences
---@param name string Key dari value
---@param default any Default value kalau nggak ada
---@return any
function Preferences:get(name, default) end

---Set value ke preferences
---@param name string Key dari value
---@param value any Value yang mau disimpan
function Preferences:set(name, value) end

-- Global assignments so Sumneko sees them
_G.Callback = Callback
_G.growtopia = growtopia
_G.tile = tile
_G.itemInfoManager = itemInfoManager
_G.Preferences = Preferences