# Growlauncher API

Growlauncher supports [lua programming language](https://www.google.com/search?q=lua) that allows you to run scripts in Growtopia.

unfinished: [addIntoModule](#addintomodule), [NewDrawList](#newdrawlist), [warn](#warn)

# Path
```storage/emulated/0/Android/data/launcher.powerkuy/ScriptLua/```

# Structs

* [PacketRaw](#packetraw)
* [VariantList](#variantlist)
* [Tankpacket](#tankpacket-struct)

* [NetAvatar](#netavatar)
* [WorldObject](#worldobject)
* [Inventory](#inventory)
* [Tile](#tile)
* [ClientNPC](#clientnpc)
* [TileExtra](#tileextra)
* [Data](#data)

* [Vec2i](#vec2i)
* [Vec2f](#vec2f)
* [Vec3](#vec3)
* [Vec4](#vec4)


# Functions

* [Sleep](#sleep)
* [LogToConsole](#logtoconsole)
* [sendNotification](#sendnotification)
* [FindPath](#findpath)
* [EditToggle](#edittoggle-or-edittoggle-or-editvalue)
* [FindItemID](#finditemid)
* [GetWorldName](#getworldname-or-getcurrentworldname)
* [growtopia](#growtopia)

* [sendDialog](#senddialog)
* [AddIntoModule](#addintomodule)

* [GetLocal](#getlocal-or-getlocal)
* [GetInventory](#getinventory-or-getinventory)
* [GetTile](#gettile-or-gettile)
* [GetTiles](#gettiles-or-gettiles)
* [GetObjectList](#getobjectlist-or-getobjectlist)
* [GetNPCList](#getnpclist-or-getnpclist)
* [GetPlayerList](#getplayerlist-or-getplayerlist)
* [getPlayerByNetID](#getplayerbynetid)

* [SendPacket](#sendpacket-or-sendpacket)
* [SendPacketRaw](#sendpacketraw-or-sendpacketraw)
* [SendVariant](#sendvariant-or-sendvariant)

* [AddHook](#addhook-or-addhook)
* [applyHook](#applyhook)
* [CSleep](#csleep)
* [removeHook](#removehook-or-removehook)
* [runThread](#runthread)
* [runCoroutine](#runcoroutine)
* [getValue](#getvalue)

* [growlauncher](#growlauncher)
* [setMinimum](#setminimum)
* [GetTime](#gettime)
* [tile](#tile-1)
* [ImVec2](#imvec2)
* [ImVec4](#imvec4)
* [NewDrawList](#setminimum)
* [warn](#warn)


# Deprecated Functions

* [GetGems](#getgems)
* [SetPathFlag](#setpathflag)



# Structs


## NetAvatar
NetAvatar struct (char)
```lua
local NetAvatar = {
    int posX,
    int posY,
    int netID,
    string name,
    int userID,
    string country,
    int punchID,
    int guildFlag,
    bool isLeft,
    float posXenc,
    float posYenc,
    int sizeX,
    int sizeY,
    float sizeXenc,
    float sizeYenc,
    float waterSpeed,
    float status,
    float irisColor, --[[= vec4, (not added)]]
    float pupilColor, --[[= vec4, (not added)]]
    equip = {
        int hair,
        int shirt,
        int pants,
        int feet,
        int hand,
        int back,
        int face,
        int mask,
        int necklace
    },
    effect = {
        int hair,
        int shirt,
        int pants,
        int feet,
        int hand,
        int back,
        int face,
        int mask,
        int necklace
    }
}
```

## VariantList
VariantList struct (Variant Data)
```lua
local Variant = {
    v1 (int, string, bool, vec2, vec3)
    v2 (int, string, bool, vec2, vec3)
    v3 (int, string, bool, vec2, vec3)
    v4 (int, string, bool, vec2, vec3)
    v5 (int, string, bool, vec2, vec3)
    v6 (int, string, bool, vec2, vec3)
}
```

## tankpacket struct
TankPacket struct
```lua
local TankPacket = {
    int secnetid,
    int padding1,
    int padding2,
    int padding3,
    int padding4,
    int padding5,
    int time
}
```

## WorldObject
WorldObject struct 
```lua
local WorldObject = {
    int posX,
    int posY,
    int itemid,
    int id,
    int invbit,
    int amount
}
```

## Inventory
Inventory struct
```lua
local Inventory = {
    int id,
    int amount
}
```

## Tile
Tile struct
```lua
local Tile = {
    int x,
    int y,
    int fg,
    int bg,
    int flag,
    bool readyharvest,
    TileExtra extra,
    bool colliable,
    int coltype
}
```

## TileExtra
TileExtra Struct
```lua
local extra = {
    string label,
    int owner,
    int flag,
    int type,
    int[] admin,
    int lastupdate,
    int alttype,
    int growth,
    int fruitcount
}
```

## PacketRaw
PacketRaw struct
```lua
local PacketRaw = {
    int type,
    int value,
    int x,
    int y,
    int px,
    int py,
    int state,
    int netid,
    int xspeed,
    int yspeed
}
```


## raw type 
```
PACKET_STATE = 0,
PACKET_CALL_FUNCTION = 1
PACKET_UPDATE_STATUS = 2
PACKET_TILE_CHANGE_REQUEST = 3
PACKET_SEND_MAP_DATA = 4
PACKET_SEND_TILE_UPDATE_DATA = 5
PACKET_SEND_TILE_UPDATE_DATA_MULTIPLE = 6
PACKET_TILE_ACTIVATE_REQUEST = 7
PACKET_TILE_APPLY_DAMAGE = 8
PACKET_SEND_INVENTORY_STATE = 9
PACKET_ITEM_ACTIVATE_REQUEST = 10
PACKET_ITEM_ACTIVATE_OBJECT_REQUEST = 11
PACKET_SEND_TILE_TREE_STATE = 12
PACKET_MODIFY_ITEM_INVENTORY = 13
PACKET_ITEM_CHANGE_OBJECT = 14
PACKET_SEND_LOCK = 15
PACKET_SEND_ITEM_DATABASE_DATA = 16
PACKET_SEND_PARTICLE_EFFECT = 17
PACKET_SET_ICON_STATE = 18
PACKET_ITEM_EFFECT = 19
PACKET_SET_CHARACTER_STATE = 20
PACKET_PING_REPLY = 21
PACKET_PING_REQUEST = 22
PACKET_GOT_PUNCHED = 23
PACKET_APP_CHECK_RESPONSE = 24
PACKET_APP_INTEGRITY_FAIL = 25
PACKET_DISCONNECT = 26
PACKET_BATTLE_JOIN = 27
PACKET_BATTLE_EVEN = 28
PACKET_USE_DOOR = 29
PACKET_SEND_PARENTAL = 30
PACKET_GONE_FISHIN = 31
PACKET_STEAM = 32
PACKET_PET_BATTLE = 33
PACKET_NPC = 34
PACKET_SPECIAL = 35
PACKET_SEND_PARTICLE_EFFECT_V2 = 36
GAME_ACTIVE_ARROW_TO_ITEM = 37
GAME_SELECT_TILE_INDEX = 38
```

## ClientNPC
ClientNPC struct
```lua
local ClientNPC = {
    Vec2i pos,
    Vec2i targetpos,
    int id,
    int type
}
```

## Data
Data struct
```lua
local Data = {
    string title,
    string message,
    string confirm,
    string url,
    string alias
}
```

## Vec2i
Vector2 struct
```lua
local Vec2i = {
    int x, -- x
    int y  -- y
}
```

## Vec2f
Vector2 struct
```lua
local Vec2f = {
    float x, -- width
    float y  -- height
}
```

## Vec3
Vector3 struct
```lua
local Vec3 = {
    float x,
    float y,
    float z
}
```


## Vec4
Vector4 struct
```lua
local Vec4 = {
    float x, --a
    float y, --r
    float z, --g
    float w  --b
}
```

# enum type
```lua
enum MenuType{
    Toggle = 0
    Slider = 1
    Item_Picker = 2
    Json_Data = 3
    Module = 4
    String = 5
    Select Tile = 6
}
```



# Functions



## sleep or Sleep
`sleep(int time)`

Adds delay between actions (in miliseconds), no return.

Example:
```lua
LogToConsole("First")
sleep(1000)
LogToConsole("Second")
```


## LogToConsole
`LogToConsole(string text)`

Sends text into the console, returns string text.

Example:
```lua
LogToConsole("Console is here")
```


## sendNotification
`sendNotification(string text)`

Sends notification with the growlauncher UI, no return.

Example:
```lua
sendNotification("Notification here")
```


## findPath or FindPath
`findPath(int x, int y, bool check_only)` 2-3 params

Move to/ check a certain tile in a world using coordinate, returns bool isblocked.

Example:
```lua
findPath(0,0) --move to top left of the world
```


## editToggle or EditToggle or editValue
`editToggle(string name, bool value)`

Edit a toggle value, no return.

Example:
```lua
editToggle("ModFly", true)
```


## findItemID or FindItemID
`findItemID(string item_name)`

Returns int itemid using item name.

Example:
```lua
LogToConsole(findItemID("Dirt")) --log the itemid of dirt
```


## GetWorldName or getCurrentWorldName
`GetWorldName()` or `getCurrentWorldName()` no param

Returns string worldname where you are in.

Example:
```lua
LogToConsole("I'm in world "..GetWorldName())
```


## growtopia
| index function(args)                          | return | description                          | Example
| :-                                            | :-     | :-                                   | :-
| `setWeather(int weatherid)`                   | -      | Sets visual weather (0 until 74).    | `growtopia.setWeather(5)`
| `isOnPos(int posx, int posy)`                 | bool   | Checks if char is on coordinate.     | `LogToConsole(growtopia.isOnPos(0, 0))`
| `notify(string message)`                      | -      | Notify a message like OnTextOverlay. | `growtopia.notify("Notif here")`
| `sendDialog(string dialog)`                   | -      | Sends growtopia dialog using var.v2. | `growtopia.sendDialog("add_textbox\|Ey\|left\|\nadd_quick_exit")`
| `getItemID(string item_name)`                 | int    | Returns item id using item name.     | `LogToConsole(growtopia.getItemID("Dirt"))`
| `checkInventory(int item_id)`                 | bool   | Checks if you have an item using id. | `LogToConsole(growtopia.checkInventory(2))`
| `getItemName(int item_id)`                    | string | Returns item name using item id.     | `LogToConsole(growtopia.getItemName(2))`
| `checkInventoryCount(int item_id)`            | int    | Returns item amount using item id.   | `LogToConsole(growtopia.checkInventoryCount(2))`
| `tileChange(int posx, int posy, int item_id)` | bool   | Sends packetraw using pos and id.    | `growtopia.tileChange(50, 23, 18)`
| `warpTo(string nameworld)`                    | -      | Join a certain world.                | `growtopia.warpTo("WORLD")`
| `enter(int x, int y)` 0 or 2 param            | -      | Enter a door using coordinate.       | `growtopia.enter()`


## sendDialog
`sendDialog(Data dialog)`

Sends [Data dialog](#data) to the server, no return.

Example:
```lua
sendDialog({title = "IniEy", message = "Ey", confirm = "Eyo", url = "https://media.discordapp.net/attachments/1208061157160521779/1228934600529678386/Ey_iniey.png?ex=662dd989&is=661b6489&hm=3bf0116594328b864c92560ec3b163fcaa71517623d09d6efd8713185854e7cd", alias = "Eys"})
```


## getLocal or GetLocal
`getLocal()` no param

Returns [NetAvatar player](#netavatar).

Example:
```lua
LogToConsole("I'm currently in `2"..(GetLocal().posX//32).."`o,`2"..(GetLocal().posX//32))
```


## getInventory or GetInventory
`getInventory()` no param

Returns [Inventory inventorylist](#inventory).

Example:
```lua
for _, item in pairs(getInventory()) do
    LogToConsole("I have = "..item.amount.." "..growtopia.getItemName(item.id))
end
```


## getTile or GetTile
`getTile(int tilex, int tiley)`

Returns [Tile tile](#tile).

Example:
```lua
LogToConsole("Foreground id = "..getTile(0, 0).fg)
```


## getTiles or GetTiles
`GetTiles()` no param

Returns [Tile tile](#tile).

Example:
```lua
for _, tile in pairs(GetTiles()) do
    LogToConsole("Block found in "..(tile.posX//32)..(tile.posY//32))
end
```


## getObjectList or GetObjectList
`getObjectList()` no param

Returns [WorldObject object](#worldobject).

Example:
```lua
for _, obj in pairs(getObjectList()) do
    LogToConsole("Object found in "..(obj.posX//32)..", "..(obj.posY//32))
end
```


## getNPCList or GetNPCList
`getNPCList()` no param

Returns [ClientNPC ClientNPC](#clientnpc).

Example:
```lua
for _, ClientNPC in pairs(getNPCList()) do
    LogToConsole("Found ghost in "..(npc.pos.x//32)..", "..(npc.pos.y//32))
end
```


## getPlayerList or GetPlayerList
`getPlayerList()` no param

Returns [NetAvatar playerlist](#netavatar).

Example:
```lua
--check player in the world
players = ""
for _, player in pairs(getPlayerList()) do
    players = players..player.name..","
end
LogToConsole(players:sub(0,-2))
```


## getPlayerByNetID
`getPlayerByNetID(int netID)`

Returns [NetAvatar player](#netavatar).

Example:
```lua
LogToConsole(getPlayerByNetID(1).name)
```


## sendPacket or SendPacket
`sendPacket(int type, string packet, bool to_client_first)` 2 - 3 param

Sends type and packet to server or to client first, no return.

Example:
```lua
sendPacket(2, "action|respawn")
```


## sendPacketRaw or SendPacketRaw
`sendPacketRaw(bool to_client_first, struct PacketRaw packet)`

Sends [packet](#packetraw) to server or to client first.

Example:
```lua
sendPacketRaw(false, {type = 3, value = 48, x = GetLocal().posX//32, y = GetLocal().posX//32, px = x*32, py = y*32, })
```


## sendVariant or SendVariant
`sendVariant(variantlist)` or `(varlist, packet)` or `(variantlist, use_net_id, net_id, value)` 1 - 4 param

Sends [Variantlist variantlist](#variantlist) to server, no return.

Example:
```lua
sendVariant({v1 = "OnConsoleMessage", v2 = "Console here"})
```



#
# Hook Events

``onSendPacket(type,pkt)`` 

``onSendPacketRaw(pkt)``

``onVariant(var)``

``onGamePacket(pkt)``

``onDraw(deltaTime)``

``onValue(type, name, value)``

#


## addHook or AddHook
`addHook(function func, string event_name, bool no_return)` 2 - 3 param

Hooks a certain event with any or certain return.

Example:
```lua
--disable trash
addHook(function(type,pkt)
    if type == 2 and pkt:find("trash") then
        return true
    end
end, "onSendPacket")
```


## applyHook
`applyHook(bool no_return)` 0 - 1 param

Applies all defined hook functions in the current script.

Example:
```lua
--disable trash
function OnSendPacket(type,pkt)
    if type == 2 and pkt:find("trash") then
        return true
    end
end
applyHook()
```


## CSleep
`CSleep(int time)`

Add delay between actions inside a [hook](#hooks) (in miliseconds), no return.

Example:
```lua
CSleep(1000)
```


## removeHook or RemoveHook
`removeHook(string event_name)`

Remove a certain hook by using event name, no return.

Example:
```lua

removeHook("onSendPacket")
```


## runThread
`runThread(function func, args)`

Run a thread of a function or with arguments, no return.

Example:
```lua
AddHook(function(type,pkt)
    if type == 2 then
        runThread(function(p)
            for a=1,3 do
                LogToConsole(p)
                CSleep(1000)
            end
        end, pkt)
    end
end, "onSendPacket")
```


## runCoroutine
`runCoroutine(function func, args)`

Run a coroutine of a function or with arguments, no return.

Example:
```lua
AddHook(function(type,pkt)
    if type == 2 then
        runCoroutine(function(p)
            for a=1,3 do
                LogToConsole(p)
                CSleep(1000)
            end
        end, pkt)
    end
end, "onSendPacket")
```


## getValue
`getValue(int type, string name_value)`

Check the value using type and name.

Example:
```lua
getValue(0, "ModFly")
```


## addIntoModule
`addIntoModule(string json)`

Add a custom module to growlauncher by using json, no return.

Example:
```lua
addIntoModule(json)
```


## growlauncher
| index                       | return         | description              | Example
| :-                          | :-             | :-                       | :-
| getVersion()                | string version | returns version string.  | `LogToConsole(growlauncher.getVersion())`
| isOnPos(int posx, int posy) | int version    | returns version integer. | `LogToConsole(growlauncher.getVersionInt(growlauncher.getVersion()))`
| version                     | int version    | returns version integer. | `LogToConsole(growlauncher.version)`


## setMinimum
`setMinimum(string version)`

Set a minimum version of growlauncher to run a script, no return.

Example:
```lua
setMinimum(string version)
```


## getTime
`getTime()` no param

Returns int time.

Example:
```lua
LogToConsole(getTime())
return int
```


## tile
(Prototype)
| Function                      | return   | Description
| :-                            | :-       | :-
| `getTile(int x, int y)`       | userdata | Returns userdata.
| `setFg(userdata, int itemid)` | userdata | Sets visual foreground using item id.
| `setBg(userdata, int itemid)` | userdata | Sets visual background using item id.

Example:
```lua
tile.setFg(tile.getTile(GetLocal().posX//32,GetLocal().posY//32), 7188)
```


## ImVec2
`ImVec2(Vec2f)`

Sets [Vec2f](#vec2f) as the width and height or value, returns [Vec2f](#vec2f).

Example:
```lua
ImVec2(0,0)
```


## ImVec4
`ImVec4(Vec4)`

Sets [Vec4](#vec4) as the color value, returns [Vec4](#vec4).

Example:
```lua
ImVec4(0, 0.55f, 0.56f, 1)
```


## NewDrawList
`NewDrawList()` no param

Returns struct.
```lua
NewDrawList()
```


## warn
`warn(string text)`

No return.
```lua
warn(text)
```



# Deprecated Functions

## GetGems
`GetGems()` no param (deprecated) 

Returns int gems_amount.

Example:
```lua
LogToConsole("My gems is "..GetGems())
```


## SetPathFlag
`SetPathFlag(int flag)` (deprecated) 

Sets flag of findpath into certain value, no return.

Example:
```lua
SetPathFlag(1)
```

# JSON Module Attributes

| string type  | icon | menu | text | alias | default | expandable | background | list_child | min | max | support_text | fill | type | value |
| :-           | :-:  | :-:  | :-:  | :-:   | :-:     | :-:        | :-:        | :-:        | :-: | :-: | :-:          | :-:  | :-:  | :-:   |
| label        | ✔    | ✔   | ❌   | ❌   | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ❌           | ❌  | -    | -      |
| dialog       | ❌   | ✔   | ✔    | ❌   | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ✔            | ✔   | -    | -      |
| toggle       | ❌   | ❌  | ✔    | ✔    | ✔      | ✔          | ✔          | ✔         | ❌  | ❌ | ❌           | ❌  | 0    | bool   |
| slider       | ❌   | ❌  | ✔    | ✔    | ✔      | ❌         | ❌         | ❌        | ✔   | ✔  | ❌           | ❌  | 1    | int    |
| item_picker  | ❌   | ❌  | ✔    | ✔    | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ❌           | ❌  | 2    | string |
| json_data    | ❌   | ❌  | ❌   | ✔    | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ❌           | ❌  | 3    | string |
| module       | ❌   | ❌  | ❌   | ✔    | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ❌           | ❌  | 4    | string |
| input_string | ✔    | ❌  | ✔    | ✔    | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ❌           | ❌  | 5    | string |
| select_tile  | ❌   | ❌  | ❌   | ✔    | ❌     | ❌         | ❌         | ❌        | ❌  | ❌ | ❌           | ❌  | 6    | table  |


## Sub

To make new category inside module, no return.

Example:
```json
{
    "sub_name": "Ey's Wheel",
    "icon": "Loop",
    "menu": []
}
```


## Label

To make label inside category, no return.

Example:
```json
{
    "type": "label",
    "text": "text"
}
```


## Dialog

To make dialog inside category.

Example:
```json
{
    "type": "dialog",
    "text": "Setting",
    "support_text": "Save path setting",
    "fill": true,
    "menu": []
}
```


## Toggle

type = 0

To make toggle inside category, returns bool value.

Example:
```json
{
    "type": "toggle",
    "text": "text",
    "alias": "alias_name",
    "default": true, //optional
    "expandable": true, //optional
    "background": false, //optional
    "list_child": [] //optional
}
```


## Slider

type = 1

To make slider inside category, returns int value.

Example:
```json
{
    "type": "slider",
    "text": "text",
    "min": 0,
    "max": 100,
    "default": 50,
    "alias": "alias_name"
}
```


## Item Picker

type = 2

To make item picker inside category, returns string value.

Example:
```json
{
    "type": "item_picker",
    "text": "text",
    "alias": "alias_name"
}
```


## Json Data

type = 3

Example:
```json
{
    "type": "json_data",
    "alias": "alias_name"
}
```


## Module

type = 4

Example:
```json
{
    "type": "module",
    "alias": "alias_name"
}
```


## String

type = 5

Returns string value.

Example:
```json
{
    "type": "input_string",
    "text": "text",
    "default": "text", //optional
    "alias": "alias_name"
}
```


## Select Tile

type = 6

To make tile selector inside category, returns [Vec2i value](#Vec2i).

Example:
```json
{
    "type": "select_tile",
    "alias": "alias_name"
}
```



#


This API documentation was made by @iniey / <@763737006450671646> (discord)

Helper in [Powerkuy Community](https://discord.gg/powerkuyofficial)

Admin in [Growtopia Mart](https://discord.gg/gtmart)

Youtube: [IniEy](https://youtube.com/@iniey)



set string default?
more example?



