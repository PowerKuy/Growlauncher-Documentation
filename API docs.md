# Growlauncher API

Growlauncher supports [lua programming language](https://www.google.com/search?q=lua) that allows you to run scripts in Growtopia.

unfinished: [addIntoModule](#addintomodule), [NewDrawList](#newdrawlist), [warn](#warn)

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

* [Vec2](#vec2)
* [Vec3](#vec3)
* [Vec4](#vec4)


# Functions

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

* [AddHook](#addhook)
* [applyHook](#applyhook)
* [CSleep](#csleep)
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
    double x, -- x/ width
    double y  -- y/ height
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
LogToConsole("I'm in world "..GetWorldName())
```


## growtopia
| index function(args)                          | return | description                          | Example
| :-                                            | :-     | :-                                   | :-
| `setWeather(int weatherid)`                   | -      | Sets visual weather (0 until 74).    | `growtopia.setWeather(5)`
| `isOnPos(int posx, int posy)`                 | bool   | Checks if char is on coordinate.     | `LogToConsole(growtopia.isOnPos(0, 0))`
| `notify(string message)`                      | -      | Notify a message like OnTextOverlay. | `growtopia.notify("Notif here")`
| `sendDialog(string dialog)`                   | -      | Sends growtopia dialog using var.v2. | `growtopia.sendDialog("add_textbox\|Ey\|left\|\nend_dialog\|\|\|ok")`
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
sendDialog({title = "IniEy", message = "Ey", confirm = "Eyo", url = "https://cdn.discordapp.com/attachments/887373003820789820/1218932537062064288/261262976_436671485194162_5765880893693920153_n-removebg-preview.png?ex=661beb63&is=66097663&hm=2a494d7b1b9a52cc66de99cd47bfddcbb0676023363790a668aaaacab3a22f04&", alias = "Eys"})
```


## addIntoModule
`addIntoModule(string json)`

Add a custom module to growlauncher by using json, no return.

Example:
```lua
addIntoModule(json)
```


## getLocal or GetLocal
`getLocal()` no param

Returns [NetAvatar player](#netavatar).

Example:
```lua
LogToConsole("I'm currently in (`2"..(GetLocal().posX//32).."`o,`2"..(GetLocal().posX//32).."`o)")
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
sendVariant({v1 = "OnConsoleMessage", v2 = "Console here", v3 = 1, v4 = 0, v5 = 0})
```



#
# Hooks
event_name = "onSendPacket(type,pkt)" or "onSendPacketRaw(pkt)" or "onVariant(var)" or "onGamePacket(pkt)" or "onDraw(deltaTime)}
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
end, "OnSendPacket")
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
| getVersion()                | string version | returns version string.
| isOnPos(int posx, int posy) | int version    | returns version integer.
| version                     | int version    | returns version integer.

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


## tile
| Function                      | return   | Description
| :-                            | :-       | :-
| `setFg(int x, int y)`         | userdata | Returns userdata.
| `setFg(userdata, int itemid)` | userdata | Sets visual foreground using item id.
| `setBg(userdata, int itemid)` | userdata | Sets visual background using item id.

Example:
```lua
tile.setFg(tile.getTile(x,y), int itemid)
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
