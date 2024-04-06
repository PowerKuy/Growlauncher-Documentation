# Growlauncher API

Growlauncher supports [lua]() programming language that allows you to run scripts in Growtopia.


# Struct

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

* [Vec2](#vec2)
* [Vec3](#vec3)
* [Vec4](#vec4)


# Functions

* [SendPacket](#sendpacket-or-sendpacket)
* [SendPacketRaw](#sendpacketraw-or-sendpacketraw)
* [SendVariant](#sendvariant-or-sendvariant)

* [GetLocal](#getlocal-or-getlocal)
* [GetInventory](#getinventory-or-getinventory)
* [GetTile](#gettile-or-gettile)
* [GetTiles](#gettiles-or-gettiles)
* [GetObjectList](#getobjectlist-or-getobjectlist)
* [GetNPCList](#getnpclist-or-getnpclist)
* [GetPlayerList](#getplayerlist-or-getplayerlist)
* [getPlayerByNetID](#getplayerbynetid)

* [Sleep](#sleep)
* [LogToConsole](#logtoconsole)
* [sendNotification](#sendnotification)
* [FindPath](#findpath)
* [EditToggle](#edittoggle)
* [FindItemID](#finditemid)
* [GetWorldName](#getworldname-or-getcurrentworldname)
* [growtopia](#growtopia)

* [sendDialog](#senddialog)
* [AddIntoModule](#addintomodule)

* [CSleep](#csleep)
* [AddHook](#addhook)
* [applyHook](#applyhook)
* [removeHook](#removehook-or-removehook)
* [runThread](#runthread)
* [runCoroutine](#runcoroutine)
* [getValue](#getvalue)
* [editValue](#editvalue)

* [growlauncher](#growlauncher)
* [setMinimum](#setminimum)
* [GetTime](#gettime)
* [ImVec2](#imvec2)
* [ImVec4](#imvec4)
* [NewDrawList](#setminimum)
* [warn](#warn)
* [tile](#tile-1)


# Deprecated Functions

* [GetGems](#getgems)
* [SetPathFlag](#setpathflag)


## NetAvatar
NetAvatar struct (char)
```lua
local NetAvatar = {
    posX,
    posY,
    netID,
    name,
    userID,
    country,
    punchID,
    guildflag,
    isLeft,
    posXenc,
    posYenc,
    sizeX,
    sizeY,
    sizeXenc,
    sizeYenc,
    waterSpeed,
    status,
    irisColor --[[= vec4 (not added)]],
    pupilColor --[[= vec4 (not added)]],
    equip = {
        hair,
        shirt,
        pants,
        feet,
        hand,
        back,
        face,
        mask,
        necklace
    },
    effect = {
        hair,
        shirt,
        pants,
        feet,
        hand,
        back,
        face,
        mask,
        necklace
    }
}
```
## VariantList
VariantList struct (Variant Data)
```lua
local Variant = {
    v1 (int, string ,bool, vec2, vec3)
    v2 (int, string ,bool, vec2, vec3)
    v3 (int, string ,bool, vec2, vec3)
    v4 (int, string ,bool, vec2, vec3)
    v5 (int, string ,bool, vec2, vec3)
    v6 (int, string ,bool, vec2, vec3)
}
```
## tankpacket struct
TankPacket struct
```lua
local TankPacket = {
    secnetid,
    padding1,
    padding2,
    padding3,
    padding4,
    padding5,
    time
}
```
## WorldObject
WorldObject struct 
```lua
local WorldObject = {
    posX,
    posY,
    itemid,
    id,
    invbit,
    amount
}
```
## Inventory
Inventory struct
```lua
local Inventory = {
    id,
    amount
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
## PacketRaw
PacketRaw struct
```lua
local PacketRaw = {
    type,
    value,
    x,
    y,
    px,
    py,
    state,
    netid,
    xspeed,
    yspeed
}
```
## ClientNPC
ClientNPC struct
```lua
local ClientNPC = {
    Vec2 pos,
    Vec2 targetpos,
    int id,
    int type
}
```
## TileExtra
TileExtra struct
```lua
local TileExtra = {
    string label,
    int owner,
    int flag,
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
## Vec2
Vector2 struct
```lua
local Vec2 = {
    float x, --width
    float y  --height
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

# Functions

## sendPacket or SendPacket
### `sendPacket(int type, string packet, bool to_client_first)` 2 - 3 param
Sends type and packet to server or to client first.
```lua
sendPacket(int type, string packet, bool to_client_first)
--no return
```
## sendPacketRaw or SendPacketRaw
### `sendPacketRaw(bool to_client_first, struct PacketRaw packet)` 1 - 2 param
Sends [packet](#netavatar-or-netavatar) to server or to client first.
```lua
sendPacketRaw(bool to_client_first, struct PacketRaw packet)
--no return
```
## sendVariant or SendVariant
### `sendVariant(VariantList variantlist, varlist, packet)` or `(VariantList variantlist, use_net_id, value)` 1 - 3 param
Sends [variantlist](#variantlist) to server.
```lua
sendVariant(struct VariantList variantlist)
--no return
```

## getLocal or GetLocal
### `getLocal()`
Returns [player](#netavatar).
```lua
getLocal()
--no param
return struct NetAvatar player
```
## getInventory or GetInventory
### `getInventory()`
Returns [inventorylist](#inventory).
```lua
getInventory()
--no param
return struct Inventory inventorylist
```
## getTile or GetTile
### `getTile(int tilex, int tiley)`
Returns [tile](#tile).
```lua
getTile(int tilex, int tiley)
return struct Tile tile
```
## getTiles or GetTiles
### `GetTiles()`
Returns [tile](#tile).
```lua
GetTiles()
--no param
return struct Tile tiles
```
## getObjectList or GetObjectList
### `getObjectList()`
Returns [object](#worldobject).
```lua
getObjectList()
--no param
return struct WorldObject object
```
## getNPCList or GetNPCList
### `getNPCList`
Returns [ClientNPC](#clientnpc).
```lua
getNPCList()
--no param
return struct ClientNPC
```
## getPlayerList or GetPlayerList
### `getPlayerList()`
Returns [playerlist](#netavatar).
```lua
getPlayerList()
--no param
return struct NetAvatar playerlist
```
## getPlayerByNetID
### `getPlayerByNetID()`
Returns [player](#netavatar).
```lua
getPlayerByNetID(int)
return struct NetAvatar
```

## sleep or Sleep
### `sleep(int time)`
Adds delay between actions (in miliseconds).
```lua
sleep(int time)
--no return
```
## LogToConsole
### `LogToConsole(string text)`
Sends text into the console.
```lua
LogToConsole(string text) 
return string text
```
## sendNotification
### `sendNotification(string text)`
Sends notification with the growlauncher UI.
```lua
sendNotification(string text) 
--no return
```
## findPath or FindPath
###  `findPath(x, y, bool check_only)`
Move to a certain tile in a world using coordinate, returns bool isblocked.
```lua
findPath(int x, int y, bool check_only)
-- 2-3 params
return bool isblocked
```
## editToggle or EditToggle
### `editToggle(string name, bool value)`
Edit a toggle value.
```lua
editToggle(string name, bool value) 
--no return
```
## findItemID or FindItemID
###  `findItemID(string item_name)`
Returns item id using item name.
```lua
findItemID(string item_name)
return int itemid
```
## GetWorldName or getCurrentWorldName
### `GetWorldName()` or `getCurrentWorldName()`
Returns the current world you are in.
```lua
GetWorldName()
--no param
return string worldname
```
## growtopia
| index function(args)                        | return | description                                               |
| :-                                          | :-     | :-                                                        |
| setWeather(int weatherid)                   | -      | Sets visual weather (0 < weatherid < 74).                 |
| isOnPos(int posx, int posy)                 | bool   | Checks char position is on certain tile using coordinate. |
| notify(string message)                      | -      | Notify a message like OnTextOverlay.                      |
| sendDialog(string dialog)                   | -      | Sends dialog "OnDialogRequest" using var.v2.              |
| getItemID(string item_name)                 | int    | Returns item id using item name.                          |
| checkInventory(int item_id)                 | bool   | Checks if we item is available using item id.             |
| getItemName(int item_id)                    | string | Returns item name using item id.                          |
| checkInventoryCount(int item_id)            | int    | Returns item count in inventory using item id.            |
| tileChange(int posx, int posy, int item_id) | bool   | Sends packetraw using pos and id.                         |
| warpTo(string nameworld)                    | -      | Join a certain world.                                     |
| enter(int x, int y)                         | -      | Enter a door/ portal near char using coordinate.          |
```lua
growtopia = {
    setWeather(int weatherid), --no return
    isOnPos(int posx, int posy), --return bool
    notify(string message), --no return
    sendDialog(string dialog), --no return
    getItemID(string item_name), --return int
    checkInventory(int item_id), --return bool
    getItemName(int item_id), --return string
    checkInventoryCount(int item_id), --return int
    tileChange(int posx, int posy, int item_id), --return bool
    warpTo(string nameworld), --no return
    enter(int x, int y) --no return
}
```

## sendDialog
### `sendDialog(dialog)`
Sends [dialog](#data) to the server.
```lua
sendDialog(--[[struct data]] dialog)
--no return
```
### `addIntoModule(string json)`
Add a custom module to growlauncher by using json.
## addIntoModule
```lua
addIntoModule(string json)
--no return
```
# 
### Hooks
event_name = "onSendPacket(type,pkt)" or "onSendPacketRaw(pkt)" or "onVariant(var)" or "onGamePacket(pkt)" or "onDraw(deltaTime)}
#
## CSleep
### `CSleep(int time)`
Add delay between actions inside a hook (in miliseconds).
```lua
CSleep(int time)
--no return
```
## addHook or AddHook
### `addHook(function func, string event_name, bool no_return)` 2 - 3 param
Hooks a certain event with any or certain return.
```lua
addHook(function func, string event_name, bool no_return)
--no return
```
## applyHook
### `applyHook(bool no_return)` 0 - 1 param
Applies all defined hook functions inside a script.
```lua
applyHook()
--no return
```
## removeHook or RemoveHook
### `removeHook(string event_name)`
Remove a certain hook by using event name.
```lua
removeHook(string event_name)
--no return
```
## runThread
### `runThread(function func, args)`
Run a thread of a function or with arguments.
```lua
runThread(function func, args)
--no return
```
## runCoroutine
### `runCoroutine(function func, args)`
Run a coroutine of a function or with arguments.
```lua
runCoroutine(function func, args)
--no return
```
## getValue
### `getValue(int type, string name_value)`
Check the type and name.
```lua
getValue(int type, string name_value)
return bool
```
## editValue
### `editValue(string name, value)`
To edit the name and value.
```lua
editValue(string name, value)
--no return
```

## growlauncher
| index                       | return         | description 
| :-                          | :-             | :-          
| getVersion()                | string version | aaa
| isOnPos(int posx, int posy) | int version    | return version integer.
| version                     | int version    | aaa
```lua
growlauncher = {
    getVersion(), --no param, return string version
    getVersionInt(string version), --return int version
    version --return int ; version == getVersionInt(getVersion())
}
```
## setMinimum
### `setMinimum(string version)`
Set a minimum version of growlauncher to run a script.
```lua
setMinimum(string version)
--no return
```
## getTime
### `getTime()`
Returns time.
```lua
getTime()
--no param
return int
```
## ImVec2
### `ImVec2(vec2)`
Sets [vec2](#growlauncher) as the width and height value
```lua
ImVec2(--[[struct Vector2]])
return struct Vec2
```
## ImVec4
### `ImVec2(vec4)`
Sets [vec4](#vec4) as the color value.
```lua
ImVec4(--[[struct Vector4]])
return struct Vec4
```
## NewDrawList
```lua
NewDrawList()
return struct 
```
## warn
```lua
warn(string text)
```
## Tile
```lua
tile = {
    setFg(?,number),
    setBg(?,number),
    getTile(number,number)
}
```

# Deprecated Functions
## GetGems
### `GetGems()`
(deprecated) Returns gems value.
```lua
GetGems()
--no param
return int gems_amount
```
## SetPathFlag
### `SetPathFlag(int flag)`
(deprecated) Sets flag of findpath into certain value.
```lua
SetPathFlag(int flag)
--no return
```
