# Growlauncher API

Growlauncher supports [lua programming language](https://www.google.com/search?q=lua) that allows you to run scripts in Growtopia.


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
```

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
`sendPacket(int type, string packet, bool to_client_first)` 2 - 3 param

Sends type and packet to server or to client first.

Example:
```lua
sendPacket(int type, string packet, bool to_client_first)
--no return
```


## sendPacketRaw or SendPacketRaw
`sendPacketRaw(bool to_client_first, struct PacketRaw packet)` 1 - 2 param

Sends [packet](#netavatar-or-netavatar) to server or to client first.

Example:
```lua
sendPacketRaw(bool to_client_first, struct PacketRaw packet)
--no return
```


## sendVariant or SendVariant
`sendVariant(VariantList variantlist, varlist, packet)` or `(VariantList variantlist, use_net_id, value)` 1 - 3 param, no return.

Sends [variantlist](#variantlist) to server.

Example:
```lua
sendVariant(struct VariantList variantlist)
--no return
```


## getLocal or GetLocal
`getLocal()` no param

Returns [NetAvatar player](#netavatar).

Example:
```lua
--check char position
LogToConsole("I'm currently in (`2"..(GetLocal().posX//32).."`o,`2"..(GetLocal().posX//32).."`o)")
```


## getInventory or GetInventory
`getInventory()` no param

Returns [Inventory inventorylist](#inventory).

Example:
```lua
--check dirt amount in inventory
id = 2 -- dirt id = 2
items = 0
for _, item in pairs(getInventory()) do
    if item.id == id then
        items = item.amount
        break
    end
end
LogToConsole("`2"..items)
```


## getTile or GetTile
`getTile(int tilex, int tiley)`

Returns [Tile tile](#tile).

Example:
```lua
--awdsawwad
```


## getTiles or GetTiles
`GetTiles()` no param

Returns [Tile tile](#tile).

Example:
```lua
GetTiles()
--no param
return struct Tile tiles
```


## getObjectList or GetObjectList
`getObjectList()` no param

Returns [WorldObject object](#worldobject).

Example:
```lua
getObjectList()
--no param
return struct WorldObject object
```


## getNPCList or GetNPCList
`getNPCList` no param

Returns [ClientNPC ClientNPC](#clientnpc).

Example:
```lua
getNPCList()
--no param
return struct ClientNPC
```


## getPlayerList or GetPlayerList
`getPlayerList()` no param

Returns [playerlist](#netavatar).

Example:
```lua
--check player in the world
players = ""
for _, playerlist in pairs(getPlayerList()) do
    players = players..playerlist.name..","
end
LogToConsole(players)
```


## getPlayerByNetID
`getPlayerByNetID(int netID)`

Returns [NetAvatar player](#netavatar).

Example:
```lua
LogToConsole(getPlayerByNetID(1).name)
```




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

Sends text into the console, return string text.

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
`findPath(x, y, bool check_only)` 2-3 params

Move to/ check a certain tile in a world using coordinate, returns bool isblocked.

Example:
```lua
findPath(0,0) --move to top left of the world
```


## editToggle or EditToggle
`editToggle(string name, bool value)`

Edit a toggle value, no return.

Example:
```lua
editToggle("ModFly", true) --turn the modfly on
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
LogToConsole("I'm in world ".GetWorldName())
```


## growtopia
| index function(args)                          | return | description                                               |
| :-                                            | :-     | :-                                                        |
| `setWeather(int weatherid)`                   | -      | Sets visual weather (0 < weatherid < 74).                 |
| `isOnPos(int posx, int posy)`                 | bool   | Checks char position is on certain tile using coordinate. |
| `notify(string message)`                      | -      | Notify a message like OnTextOverlay.                      |
| `sendDialog(string dialog)`                   | -      | Sends dialog "OnDialogRequest" using var.v2.              |
| `getItemID(string item_name)`                 | int    | Returns item id using item name.                          |
| `checkInventory(int item_id)`                 | bool   | Checks if we item is available using item id.             |
| `getItemName(int item_id)`                    | string | Returns item name using item id.                          |
| `checkInventoryCount(int item_id)`            | int    | Returns item count in inventory using item id.            |
| `tileChange(int posx, int posy, int item_id)` | bool   | Sends packetraw using pos and id.                         |
| `warpTo(string nameworld)`                    | -      | Join a certain world.                                     |
| `enter(int x, int y)` 0 or 2 param            | -      | Enter a door/ portal near char using coordinate.          |

Examples:
```lua
--don't do all of this suddenly
growtopia.setWeather(5)
LogToConsole(growtopia.isOnPos(0, 0))
growtopia.notify("Notif here")
growtopia.sendDialog("add_textbox|Sample dialog|left|\nend_dialog|continue||ok")
LogToConsole(growtopia.getItemID("Dirt"))
LogToConsole(growtopia.checkInventory(2))
LogToConsole(growtopia.getItemName(2))
LogToConsole(growtopia.checkInventoryCount(2))
growtopia.tileChange(GetLocal().posX//32, GetLocal().posY//32, 18)
growtopia.warpTo("WORLD")
growtopia.enter()
```

## sendDialog
`sendDialog(Data dialog)`

Sends [Data dialog](#data) to the server, no return.

Example:
```lua
sendDialog(dialog)
```

## addIntoModule
`addIntoModule(string json)`

Add a custom module to growlauncher by using json, no return.

Example:
```lua
addIntoModule(string json)
--no return
```
#
# Hooks
event_name = "onSendPacket(type,pkt)" or "onSendPacketRaw(pkt)" or "onVariant(var)" or "onGamePacket(pkt)" or "onDraw(deltaTime)}
#

## CSleep
`CSleep(int time)`

Add delay between actions inside a [hook](#hooks) (in miliseconds), no return.

Example:
```lua
CSleep(1000)
```


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
end, "OnSendPacket")
```


## applyHook
`applyHook(bool no_return)` 0 - 1 param

Applies all defined hook functions inside a script.

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


## removeHook or RemoveHook
`removeHook(string event_name)`

Remove a certain hook by using event name, no return.

Example:
```lua

removeHook("OnSendPacket")
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
end, "OnSendPacket")
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
end, "OnSendPacket")
```


## getValue
`getValue(int type, string name_value)`

Check the type and name, return bool.

Example:
```lua
getValue(int type, string name_value)
```


## editValue
`editValue(string name, value)`

To edit the name and value, no return.

Example:
```lua
editValue(string name, value)
```

## growlauncher
| index                       | return         | description 
| :-                          | :-             | :-          
| getVersion()                | string version | aaa
| isOnPos(int posx, int posy) | int version    | return version integer.
| version                     | int version    | aaa

Example:
```lua
growlauncher = {
    getVersion(), --no param, return string version
    getVersionInt(string version), --return int version
    version --return int ; version == getVersionInt(getVersion())
}
```


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
```lua
getTime()
return int
```


## ImVec2
`ImVec2(Vec2 vec2)`

Sets [Vec2 vec2](#vec2) as the width and height value, return [Vec2 vec2](#vec2).

Example:
```lua
ImVec2(0,0)
```


## ImVec4
`ImVec4(Vec4 vec4)`

Sets [Vec4 vec4](#vec4) as the color value, return [Vec4 vec4](#vec4).

Example:
```lua
ImVec4(0, 0.55f, 0.56f, 1)
```


## NewDrawList
`NewDrawList()`
Returns struct.
```lua
NewDrawList()
```


## warn
`warn(string text)`
```lua
warn(text)
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
`GetGems()` no param (deprecated) 

Returns int gems_amount.

Example:
```lua
LogToConsole("My gems is "..GetGems())
```


## SetPathFlag
`SetPathFlag(int flag)` (deprecated) 

Sets flag of findpath into certain value, no return

Example:
```lua
SetPathFlag(1)
```
