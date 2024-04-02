# Growlauncher

API
Growlauncher supports lua programming language that allows you to run scripts in Growtopia.

# Struct

## NetAvatar
NetAvatar is same as Player
```lua
--NetAvatar Struct
local NetAvatar= {
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
    waterSpeed
}
```

## VariantList
VariantList to manage data from Variant Data
```lua
--Struct Variant
local Variant= {
    v0 (int, string ,bool, vec2, vec3)
    v1 (int, string ,bool, vec2, vec3)
    v2 (int, string ,bool, vec2, vec3)
    v3 (int, string ,bool, vec2, vec3)
    v4 (int, string ,bool, vec2, vec3)
    v5 (int, string ,bool, vec2, vec3)
}
```

## WorldObject
WorldObject Struct
```lua
--Struct WorldObject
local WorldObject= {
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
--Struct Inventory
local Inventory= {
    id,
    amount
}
```

## Tile
Tile Struct
```lua
--Struct Tile
local Tile= {
    int x,
    int y,
    int fg,
    int bg,
    int flag,
    bool readyharvest,
    TileExtra extra
}
```

## PacketRaw
PacketRaw Struct
```lua
--Struct PacketRaw
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
--Struct ClientNPC
local ClientNPC= {
    Vec2 pos,
    Vec2 targetpos,
    int id,
    int type
}
```

## TileExtra
Tile Extra Struct
```lua
--Struct TileExtra
local TileExtra= {
    string label
    int owner
    int flag
    int type
}
```

## Vec2
Vector2 Struct
```lua
--Struct Vec2
local Vec2= {
    float x,
    float y
}
```

## Vec3
Vector3 Struct
```lua
--Struct Vec3
local Vec3= {
    float x,
    float y,
    float z
}
```


# Functions


## GetWorldName or getCurrentWorldName
```lua
GetWorldName(--[[no param]]) -- 'function: 0x63ece74'
return worldname: string
```
## sendPacket or SendPacket
```lua
sendPacket(type: number, packet: string, to_client_first) -- 'function: 0x63ecba4'
--no return
```
```lua
## sendPacketRaw or SendPacketRaw
```lua
sendPacketRaw(flag: bool,packet: struct PacketRaw) -- 'function: 0x63ed010'
--flag = to client
--no return
```
## sendVariant or SendVariant
```lua
sendVariant(struct VariantList) -- 'function: 0x63ed85c'
return isblocked: number
```


## getLocal or GetLocal
```lua
getLocal(--[[no param]]) -- 'function: 0x63ef830'
return player: struct NetAvatar
```
## getInventory or GetInventory
```lua
getInventory(--[[no param]]) -- 'function: 0x63f0344'
return inventorylist: struct Inventory
```
## getTile or GetTile
```lua
getTile({tilex: number, tiley: number}) -- 'function: 0x63ef0a8'
return tile: struct Tile
```
## getTiles or GetTiles
```lua
GetTiles(--[[no param]]) -- 'function: 0x63ef0a8'
return tiles: struct Tile
```
## getObjectList or GetObjectList
```lua
getObjectList(--[[no param]]) -- 'function: 0x63f074c'
return object: struct WorldObject
```
## getNPCList or GetNPCList
```lua
getNPCList(--[[no param]]) -- 'function: 0x63f0a5c'
return struct ClientNPC
```
## getPlayerList or GetPlayerList
```lua
getPlayerList(--[[no param]]) -- 'function: 0x63effdc'
return playerlist: struct NetAvatar
```
## getPlayerByNetID
```lua
getPlayerByNetID(number) -- 'function: 0x63f0120'
return struct NetAvatar
```


## sleep or Sleep
```lua
Sleep(number) -- 'function: 0x63ecdbc'
--no return
```
## CSleep
```lua
CSleep(number) -- 'function: 0x63f21fc'
--no return
```
## LogToConsole
```lua
LogToConsole(text: string) -- 'function: 0x63eb6f0'
return text: string
```
## findPath or FindPath
```lua
findPath(x: number,y: number, check_only: bool) -- 'function: 0x63eedf4'
return isblocked: boolean
```
## editToggle or EditToggle
```lua
editToggle(name: string, value: bool) -- 'function: 0x63f14fc'
--no return
```
## findItemID or FindItemID
```lua
findItemID(string) -- 'function: 0x63efe40'
return itemid: number
```
## sendNotification
```lua
sendNotification(text: string) -- 'function: 0x63ec894'
--no return
```
## addHook or AddHook
```lua
addHook(function: function,hookname: string) -- 'function: 0x63ebaac'
--no return
```
## applyHook
```lua
applyHook(--[[no param]]) -- 'function: 0x63ec56c'
--no return
```
## runThread
```lua
runThread(function: string, args: any) -- 'function: 0x63f1e30'
```
## runCoroutine
```lua
runCoroutine(function: string, args: any) -- 'function: 0x63f2024'
```
## growtopia
```lua
growtopia = -- table: 0xbf37f8e0
{
    setWeather(number), -- 'function: 0xbf37fa80',
    isOnPos(x: number, y: number), -- 'function: 0xbf37f940',
    notify(string), -- 'function: 0xbf37f9e0',
    sendDialog(string), -- 'function: 0xbf37f9c0',
    getItemID(string), -- 'function: 0xbf37fb00',
    checkInventory(number), -- 'function: 0xbf37f960',
    getItemName(number), -- 'function: 0xbf37fa20',
    checkInventoryCount(number), -- 'function: 0xbf37fa60',
    tileChange(x: number, y: number, id: number), -- 'function: 0xbf37f900',
    warpTo(string), -- 'function: 0xbf37fac0',
}
```
## growlauncher
```lua
growlauncher = -- table: 0xbf37f800
{
    getVersion(), -- 'function: 0xbf37f820',
    version(), -- '6020',
    getVersionInt(), -- 'function: 0xbf37f880',
}
```
## setMinimum
```lua
setMinimum(version) -- 'function: 0x63f1938'
```
## addIntoModule
```lua
addIntoModule(json: string) -- 'function: 0x63eb954'
```
## sendDialog
```lua
sendDialog(dialog: string--[[var.v2]]) -- 'function: 0x63ed3f8'
```
## GetGems (deprecated)
```lua
GetGems(--[[no param]]) -- 'function: 0x63ef050'
return gems_amount: number
```
## getTime
```lua
getTime(--[[no param]]) -- 'function: 0x63ecb04'
return number
```


## ImVec2
```lua
ImVec2() -- 'function: 0xbefa4570'
return struct Vec2
```
## ImVec4
```lua
ImVec4() -- 'function: 0xbefa45a0'
return struct Vec4
```


## NewDrawList
```lua
NewDrawList() -- 'function: 0xbd4fc6a0'
return struct
```
## getValue
```lua
getValue(type: number,name_value: string) -- 'function: 0x63ec364'
```
## warn
```lua
warn(string) -- 'function: 0x64f41a8'
```
## SetPathFlag (deprecated)
```lua
SetPathFlag(flag: integer) -- 'function: 0x63ef050'
--no return
```
## editValue
```lua
editValue(name: string, value) -- 'function: 0x63f14fc'
```
## Tile
```lua
tile = -- table: 0xbf37fb60
{
    setFg(?,number), -- 'function: 0xbf37fbc0',
    setBg(?,number), -- 'function: 0xbf37fba0',
    getTile(number,number), -- 'function: 0xbf37fb80',
}
```
## dir
```lua
dir -- 'file (0xb911af08)'
```
