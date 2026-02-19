@ -1,635 +0,0 @@

# Growlauncher API Documentation

[![](assets/logo.png)](https://github.com/IniEyyy/Growlauncher-Documentation/blob/main/README.md)

[![Docs Status](https://img.shields.io/badge/Status-Complete-green)]()
[![Lua Version](https://img.shields.io/badge/Lua-5.4-blue)](https://www.lua.org/)

Growlauncher provides Lua scripting support for Growtopia.
This documentation is intended for users who want to create, customize, and extend scripts for personal use.

---

# 📚 Table of Contents

- [📝 Introduction](#-introduction)
- [🚀 Getting Started](#-getting-started)
  - [Script Path](#script-path)
  - [Module Icon Source](#module-icon-source)
  - [Growtopia Packet Type](#growtopia-enum-packet-type)
  - [Growlauncher enum MenuTypes](#growlauncher-enum-menutype)
- [🧱 Structs](#-structs)
  - [WorldTileMap](#worldtilemap)
  - [Vector2](#vector2)
  - [Vector3](#vector3)
  - [Vector4](#vector4)
  - [Rect](#rect)
  - [Variant](#variant)
  - [InventoryItem](#inventoryitem)
  - [ClientNPC](#clientnpc)
  - [VariantList](#variantlist)
  - [WorldObject](#worldobject)
  - [Dialog](#dialog)
  - [NetAvatarClothes](#netavatarclothes)
  - [Tile](#tile)
  - [ItemInfo](#iteminfo)
  - [NetAvatar](#netavatar)
  - [TankPacket](#tankpacket)
  - [TileExtra](#tileextra)
- [🚀 Main Functions](#-main-functions)
  - [Console & Logging](#console--logging)
  - [Networking & Packets](#networking--packets)
  - [Player Info](#player-info)
  - [Item Info](#item-info)
  - [World & Game State](#world--game-state)
  - [Math & Utility](#math--utility)
- [🎣 Hooks, Callbacks & Concurrency](#-hooks-callbacks--concurrency)
  - [Hook Events](#hook-events)
  - [Hook & Callback Functions](#hook--callbacks-functions)
  - [Threading & Coroutine](#threading--coroutine)
- [📑 Namespaces](#-namespaces)
  - [ItemInfoManager](#iteminfomanager-namespace)
  - [Tile](#tile-namespace)
  - [Growtopia](#growtopia-namespace)
  - [Growlauncher](#growlauncher-namespace)
  - [Preferences](#preferences-namespace)
  - [UserInterface](#userinterface-namespace)
  - [UIManager](#uimanager-namespace)
- [📦 Value & Modules](#-value--modules)
  - [Value Functions](#value)
  - [Modules (Notification & UI)](#notification--ui-modules)
- [🛑 Deprecated](#-deprecated)
- [📜 Sample Script](#-sample-scripts)
- [🙌 Credits](#-credits)
- [🏠 Community](#-community)

---

# 📝 Introduction

Growlauncher exposes a Lua API that allows you to:

- Interact with the Growtopia client.
- Automate actions like sending packets, moving, and reading game state.
- Create custom modules and user interfaces.

---

# 🚀 Getting Started

Make sure to use real growlauncher, buy it [here](#-community).

## Script Path

- **GL < v6.1.25**:
  `storage/emulated/0/Android/data/launcher.powerkuy.growlauncher/ScriptLua/`
- **GL v6.1.25+**:
  `storage/emulated/0/Android/data/launcher.powerkuy.growlauncher/files/ScriptLua/`
- **GL v7.0.0+**:
  `storage/emulated/0/Android/data/launcher.powerkuy.growlauncher/media/ScriptLua/` <- to support new android system

## Module Icon Source

- `https://fonts.google.com/icons?icon.set=Material+Icons&icon.style=Filled`

## Growtopia enum Packet Type

| Packet Type                           | Value |
| :-                                    | :-:   |
| PACKET_STATE                          | 0     |
| PACKET_CALL_FUNCTION                  | 1     |
| PACKET_UPDATE_STATUS                  | 2     |
| PACKET_TILE_CHANGE_REQUEST            | 3     |
| PACKET_SEND_MAP_DATA                  | 4     |
| PACKET_SEND_TILE_UPDATE_DATA          | 5     |
| PACKET_SEND_TILE_UPDATE_DATA_MULTIPLE | 6     |
| PACKET_TILE_ACTIVATE_REQUEST          | 7     |
| PACKET_TILE_APPLY_DAMAGE              | 8     |
| PACKET_SEND_INVENTORY_STATE           | 9     |
| PACKET_ITEM_ACTIVATE_REQUEST          | 10    |
| PACKET_ITEM_ACTIVATE_OBJECT_REQUEST   | 11    |
| PACKET_SEND_TILE_TREE_STATE           | 12    |
| PACKET_MODIFY_ITEM_INVENTORY          | 13    |
| PACKET_ITEM_CHANGE_OBJECT             | 14    |
| PACKET_SEND_LOCK                      | 15    |
| PACKET_SEND_ITEM_DATABASE_DATA        | 16    |
| PACKET_SEND_PARTICLE_EFFECT           | 17    |
| PACKET_SET_ICON_STATE                 | 18    |
| PACKET_ITEM_EFFECT                    | 19    |
| PACKET_SET_CHARACTER_STATE            | 20    |
| PACKET_PING_REPLY                     | 21    |
| PACKET_PING_REQUEST                   | 22    |
| PACKET_GOT_PUNCHED                    | 23    |
| PACKET_APP_CHECK_RESPONSE             | 24    |
| PACKET_APP_INTEGRITY_FAIL             | 25    |
| PACKET_DISCONNECT                     | 26    |
| PACKET_BATTLE_JOIN                    | 27    |
| PACKET_BATTLE_EVEN                    | 28    |
| PACKET_USE_DOOR                       | 29    |
| PACKET_SEND_PARENTAL                  | 30    |
| PACKET_GONE_FISHIN                    | 31    |
| PACKET_STEAM                          | 32    |
| PACKET_PET_BATTLE                     | 33    |
| PACKET_NPC                            | 34    |
| PACKET_SPECIAL                        | 35    |
| PACKET_SEND_PARTICLE_EFFECT_V2        | 36    |
| GAME_ACTIVE_ARROW_TO_ITEM             | 37    |
| GAME_SELECT_TILE_INDEX                | 38    |

## Growlauncher enum Menutype

| MenuType     | Num |
| :-           | :-: |
| Toggle       | 0   |
| Slider       | 1   |
| Item_Picker  | 2   |
| Json_Data    | 3   |
| Module       | 4   |
| String       | 5   |
| Select Tile  | 6   |
| Display List | 7   |

## ImGui docs

- [here](./IMGUI.md)

---

# 🧱 Structs

| Struct                                    | Fields                                                                                          |
| :-                                        | :-                                                                                              |
| [**WorldTileMap**](#worldtilemap)         | `size`                                                                                          |
| [**Vector2**](#vector2)                   | `x`, `y`                                                                                        |
| [**Vector3**](#vector3)                   | `x`, `y`, `z`                                                                                   |
| [**Variant**](#variant)                   | `x`, `y`, `z`                                                                                   |
| [**Vector4**](#vector4)                   | `x`, `y`, `z`, `w`                                                                              |
| [**Rect**](#rect)                         | `x`, `y`, `w`, `h`                                                                              |
| [**InventoryItem**](#inventoryitem)       | `id`, `amount`                                                                                  |
| [**VariantList**](#variantlist)           | `v1`,  `v2`, `v3`, `v4`, `v5`, `v6`, `v7`                                                       |
| [**ClientNPC**](#clientnpc)               | [`pos`](#vector2), `targetpos`, `id`, `type`                                                    |
| [**WorldObject**](#worldobject)           | [`pos`](#vector2), `itemid`, `amount`, `invbit`, `id`                                           |
| [**Dialog**](#dialog)                     | `title`, `alias`, `message`, `confirm`, `ignore`, `url`                                         |
| [**Tile**](#tile)                         | `x`, `y`, `fg`, `bg`, `collidable`, `extra`, `progress`, `readyharvest`                         |
| [**ItemInfo**](#iteminfo)                 | `id`, `type`, `name`, `breakHits`, `rarity`, `collisiontype`, `growTime`                        |
| [**NetAvatar**](#netavatar)               | `pos`, `size`, `posX`, `posY`, `netID`, `userID`, `name`, `equip`, `effect`                     |
| [**NetAvatarClothes**](#netavatarclothes) | `hair`, `shirt`, `pants`, `feet`, `hand`, `back`, `face`, `mask`, `necklace`                    |
| [**TankPacket**](#tankpacket)             | `netid`, `secnetid`, `type`, `state`, `value`, `x`, `y`, `xspeed`, `yspeed`, `px`, `py`, `time`, `padding1`, `padding2`, `padding3`, `padding4`, `padding5`, `time` |
| [**TileExtra**](#tileextra)               | `type`, `label`, `label2`, `label3`, `owner`, `owner_signed`, `vend_price`, `vend_item`, `dshelf1`, `dshelf2`, `dshelf3`, `dshelf4`, `flag`, `admin`, `lastupdate`, `lastupdate2`, `alttype`, `growth`, `volume`, `fruitcount`, `visible`, `color` |

### WorldTileMap

| Field  | Type                |
| :-     | :-:                 |
| `size` | [Vector2](#vector2) |

### Vector2

| Field | Type   |
| :-    | :-:    |
| `x`   | number |
| `y`   | number |

### Vector3

| Field | Type   |
| :-    | :-:    |
| `x`   | number |
| `y`   | number |
| `z`   | number |

### Vector4

| Field | Type   |
| :-    | :-:    |
| `x`   | number |
| `y`   | number |
| `z`   | number |
| `w`   | number |

### Rect

| Field | Type   |
| :-    | :-:    |
| `x`   | number |
| `y`   | number |
| `w`   | number |
| `h`   | number |

### InventoryItem

| Field    | Type   |
| :-       | :-:    |
| `id`     | number |
| `amount` | number |

### Variant

| Field | Type    |
| :-    | :-:     |
| `x`   | number? |
| `y`   | number? |
| `z`   | number? |

### ClientNPC

| Field       | Type                |
| :-          | :-:                 |
| `pos`       | [Vector2](#vector2) |
| `targetpos` | [Vector2](#vector2) |
| `id`        | number              |
| `type`      | number              |

### VariantList

| Field | Type                                      |
| :-    | :-:                                       |
| `v1`  | [Variant](#variant)/string/number/boolean |
| `v2`  | [Variant](#variant)/string/number/boolean |
| `v3`  | [Variant](#variant)/string/number/boolean |
| `v4`  | [Variant](#variant)/string/number/boolean |
| `v5`  | [Variant](#variant)/string/number/boolean |
| `v6`  | [Variant](#variant)/string/number/boolean |
| `v7`  | [Variant](#variant)/string/number/boolean |

### WorldObject

| Field    | Type                |
| :-       | :-:                 |
| `pos`    | [Vector2](#vector2) |
| `itemid` | number              |
| `amount` | number              |
| `invbit` | number              |
| `id`     | number              |

### Dialog

| Field     | Type   |
| :-        | :-:    |
| `title`   | string |
| `alias`   | string |
| `message` | string |
| `confirm` | string |
| `ignore`  | string |
| `url`     | string |

### NetAvatarClothes

| Field     | Type   |
| :-        | :-:    |
| `hair`    | number |
| `shirt`   | number |
| `pants`   | number |
| `feet`    | number |
| `hand`    | number |
| `back`    | number |
| `face`    | number |
| `mask`    | number |
| `necklace`| number |

### Tile

| Field          | Type                     |
| :-             | :-:                      |
| `fg`           | number                   |
| `bg`           | number                   |
| `flag`         | number                   |
| `collidable`   | boolean                  |
| `x`            | number                   |
| `y`            | number                   |
| `coltype`      | number                   |
| `extra`        | [TileExtra](#tileextra)? |
| `progress`     | number                   |
| `readyharvest` | boolean                  |

### ItemInfo

| Field           | Type   |
| :-              | :-:    |
| `id`            | number |
| `type`          | number |
| `name`          | string |
| `breakHits`     | number |
| `rarity`        | number |
| `collisiontype` | number |
| `growTime`      | number |

### NetAvatar

| Field       | Type                                  |
| :-          | :-:                                   |
| `pos`       | [Vector2](#vector2)                   |
| `size`      | [Vector2](#vector2)                   |
| `posX`      | number                                |
| `posY`      | number                                |
| `posXenc`   | number                                |
| `posYenc`   | number                                |
| `sizeX`     | number                                |
| `sizeY`     | number                                |
| `sizeXenc`  | number                                |
| `sizeYenc`  | number                                |
| `punchID`   | number                                |
| `userID`    | number                                |
| `name`      | string                                |
| `netID`     | number                                |
| `isLeft`    | boolean                               |
| `status`    | number                                |
| `irisColor` | number                                |
| `pupilColor`| number                                |
| `onGround`  | boolean                               |
| `country`   | string                                |
| `equip`     | [NetAvatarClothes](#netavatarclothes) |
| `effect`    | [NetAvatarClothes](#netavatarclothes) |

### TankPacket

| Field      | Type   |
| :-         | :-:    |
| `netid`    | number |
| `secnetid` | number |
| `type`     | number |
| `state`    | number |
| `value`    | number |
| `x`        | number |
| `y`        | number |
| `xspeed`   | number |
| `yspeed`   | number |
| `px`       | number |
| `py`       | number |
| `padding1` | number |
| `padding2` | number |
| `padding3` | number |
| `padding4` | number |
| `padding5` | number |
| `time`     | number |

### TileExtra

| Field          | Type     |
| :-             | :-:      |
| `type`         | number   |
| `label`        | string   |
| `label2`       | string   |
| `label3`       | string   |
| `owner`        | number   |
| `owner_signed` | number   |
| `vend_price`   | number   |
| `vend_item`    | number   |
| `dshelf1`      | number   |
| `dshelf2`      | number   |
| `dshelf3`      | number   |
| `dshelf4`      | number   |
| `flag`         | number   |
| `admin`        | number[] |
| `lastupdate`   | number   |
| `lastupdate2`  | number   |
| `alttype`      | number   |
| `growth`       | number   |
| `volume`       | number   |
| `fruitcount`   | number   |
| `visible`      | boolean  |
| `color`        | number   |

---

# 🚀 Main Functions

## Console & Logging

| Function       | Params                         | Return   | Description            | Example                              |
| :-             | :-                             | :-:      | :-                     | :-                                   |
| `log`          | `text:string\|number\|boolean` | -        | Logs text to console   | `log("Hello")`                       |
| `LogToConsole` | `text:string\|number\|boolean` | -        | Logs text to console   | `logToConsole("Hello")`              |
| `dumpTable`    | `o: any`                       | `string` | Dump table into string | `tbl = {1,2,3}; log(dumpTable(tbl))` |

## Networking & Packets

| Function        | Params                                                                                                | Return | Description                    | Example                                                       |
| :-              | :-                                                                                                    | :-:    | :-                             | :-                                                            |
| `gamePacket`    | [`packet:TankPacket`](#tankpacket)                                                                    | -      | Trigger game packet (internal) | `gamePacket(pkt)`                                             | X
| `sendToJava`    | `message:string`                                                                                      | -      | (internal)                     | -                                                             | X
| `sendPacket`    | `type:number`, `packet:string`, `to_client_first?:boolean`                                            | -      | Send packet to server          | `sendPacket(2,"action\|input\ntext\|Hi")`                     |
| `sendVariant`   | `variantlist:VariantList`, [`packet_data?:TankPacket`](#tankpacket), `netid?:number`, `value?:number` | -      | Send variant list              | `sendVariant({v1 = "OnConsoleMessage", v2 = "Console here"})` |
| `sendPacketRaw` | `flag:boolean`, [`packet:TankPacket`](#tankpacket)                                                    | -      | Send raw TankPacket            | `p=getLocal(); sendPacketRaw(false, {type=3, value=18, x=p.posX, y=p.posY, px=p.posX//32, py = p.posY//32})` |

## Player Info

| Function             | Params             | Return                              | Description                       | Example                                                   |
| :-                   | :-:                | :-                                  | :-                                | :-                                                        |
| `getGems`            | -                  | `number`                            | Get current gem amount            | `log(getGems())`                                          |
| `getLocal`           | -                  | [`NetAvatar`](#netavatar)           | Get local player                  | `log(getLocal().name)`                                    |
| `getInventory`       | -                  | [`InventoryItem[]`](#inventoryitem) | Get inventory items               | `for _,item in pairs(getInventory()) do log(item.id) end` |

## Item Info

| Function             | Params             | Return                              | Description                       | Example                             |
| :-                   | :-                 | :-                                  | :-                                | :-                                  |
| `findItemID`         | `itemname:string`  | `number`                            | Find item ID by name              | `log(findItemID("Dirt"))`           |
| `getItemInfoByID`    | `id:number`        | [`ItemInfo`](#iteminfo)             | Get item info by ID               | `log(getItemInfoByID(2).name)`      |
| `getItemInfoByName`  | `name:string`      | [`ItemInfo`](#iteminfo)             | Get item info by name             | `log(getItemInfoByName("Dirt").id)` |

## World & Game State

| Function                               | Params                                                     | Return                          | Description                | Example                                                   |
| :-                                     | :-                                                         | :-                              | :-                         | :-                                                        |
| `getTile`                              | `x:number,y:number`                                        | [`Tile`](#tile)                 | Get tile at coordinates    | `log(getTile(10,5).fg)`                                   |
| `getTiles`                             | -                                                          | [`Tile[]`](#tile)               | Get all tiles              | `for _,i in pairs(getTiles()) do log(i.fg) end`           |
| `FindPath`                             | `x:number`, `y:number`, `check_only?:boolean`              | `boolean`                       | Pathfinding check          | `FindPath(10,5,true)`                                     |
| `isInside`                             | `cx:number`, `cy:number`, `rad:number, x:number, y:number` | `boolean`                       | Check inside circle radius | `isInside(0,0,10,5,5)`                                    |
| `getNPCList`                           | -                                                          | [`ClientNPC[]`](#clientnpc)     | Get list client-side NPCs  | `for _,n in pairs(getNPCList()) do log(n.id) end`         |
| `getPlayerList`                        | -                                                          | [`NetAvatar[]`](#netavatar)     | Get list of players.       | `for _,plr in pairs(getPlayerList)) do log(plr.name) end` |
| `getObjectList`                        | -                                                          | [`WorldObject[]`](#worldobject) | Get list of world objects  | `for _,obj in pairs(objs) do log(obj.itemid) end`         |
| `getWorldTileMap`                      | -                                                          | [`WorldTileMap`](#worldtilemap) | Get world tile map         | `log(getWorldTileMap().x)`                                |
| `getPlayerByNetID`                     | `netid:number`                                             | [`NetAvatar`](#netavatar)       | Get player by NetID        | `log(getPlayerByNetID(1).name)`                           |
| `GetWorldName` / `getCurrentWorldName` | -                                                          | `string`                        | Get current world name     | `log(GetWorldName())`                                     |

## Math & Utility

| Function            | Params                                         | Return           | Description                      | Example                                                           |
| :-                  | :-                                             | :-               | :-                               | :-                                                                |
| `split`             | `str:string`, `regex:string`                   | `string[]`       | Split string by regex.           | `str = "a,b,c"; for _,a in pairs(str:split(",")) do log(a) end`   |
| `ImVec2`            | `x:number`, `y:number`                         | [Vec2](#vector2) | Sets width and height or value.  | `ImVec2(1,0.3)`                                                   |
| `ImVec4`            | `x:number`, `y:number`, `z:number`, `w:number` | [Vec4](#vector4) | Sets the color value.            | `ImVec4(0,0.55,0.56,1)`                                           |
| `getTime`           | -                                              | `number`         | Current time in ms.              | `getTime()`                                                       |
| `decryptText`       | `text:string`                                  | -                | Decrypt (internal).              | -                                                                 | X
| `string:split`      | `sep:string`                                   | `string[]`       | Split string by sep.             | `str = "1,2"; for _,a in pairs(str:split(",")) do log(a) end`     |
| `writeToLocal`      | `name:string`, `s:string`                      | -                | Write local file/data.           | `writeToLocal("save.txt","ok")`                                   |
| `getAppLibrary`     | -                                              | `string`         | Get app library path.            | `log(getAppLibrary())`                                            |
| `decryptTextHuh`    | `text:string`                                  | -                | Decrypt alt (internal).          | -                                                                 | X
| `executeFromAssets` | `path:string`, `name:string`                   | -                | Deprecated execute asset.        | -                                                                 |
| `error`             | `text:string`                                  | -                | Shows an error warning.          | `error("error text")`                                             |
| `fetch`             | `url:string`                                  | response, error                | Get text data from url          | `fetch("https://raw.githubusercontent.com/PowerKuy/Growlauncher-Documentation/refs/heads/main/sample-scripts/example-for-fetch.lua")`                                             |

---

# 📑 Namespaces

## ItemInfoManager Namespace

| Function                            | Parameters    | Returns          | Description                           |
| :-                                  | :-            | :-               | :-                                    |
| `getItemInfoManager`                | -             | `ItemInfoManager`| Get global `ItemInfoManager` instance |
| `itemInfoManager.getItemInfoByID`   | `id:number`   | `table\|nil`     | Get item info object by item ID       |
| `itemInfoManager.getItemInfoByName` | `name:string` | `table\|nil`     | Get item info object by name          |

## Tile Namespace

| Function       | Params                           | Return          | Description                | Example                                                                   |
| :-             | :-                               | :-              | :-                         | :-                                                                        |
| `tile.getTile` | `x:number`, `y:number`           | [`Tile`](#tile) | Get tile at coordinates    | `tile.getTile(GetLocal().posX//32,GetLocal().posY//32)`                   |
| `tile.setFg`   | [`Tile`](#tile), `itemid:number` | -               | Change foreground visually | `tile.setFg(tile.getTile(GetLocal().posX//32,GetLocal().posY//32), 7188)` |
| `tile.setBg`   | [`Tile`](#tile), `itemid:number` | -               | Change background visually | `tile.setFg(tile.getTile(GetLocal().posX//32,GetLocal().posY//32), 7188)` |

## Growtopia Namespace

| Function                        | Params                                       | Return     | Description                         | Example                                                              |
| :-                              | :-                                           | :-         | :-                                  | :-                                                                   |
| `growtopia.enter`               | -                                            | -          | Enter main door (spawn)             | `growtopia.enter()`                                                  |
| `growtopia.warpTo`              | `world_name:string`                          | -          | Warp to another world               | `growtopia.warpTo("START")`                                          |
| `growtopia.notify`              | `msg:string`                                 | -          | Show a notification                 | `growtopia.notify("Warning!")`                                       |
| `growtopia.isOnPos`             | `posx:number`, `posy:number`                 | `boolean`  | Check if player is on given pos     | `growtopia.isOnPos(3,2)`                                             |
| `growtopia.sendChat`            | `text:string`, `toClient?:boolean`           | -          | Send chat message                   | `growtopia.sendChat("Hello")`                                        |
| `growtopia.enterPos`            | -                                            | -          | Enter by current position           | `growtopia.enterPos()`                                               |
| `growtopia.dropItem`            | `itemID:number`                              | -          | Drop 1 of an item                   | `growtopia.dropItem(242)`                                            |
| `growtopia.getItemID`           | `name:string`                                | `number`   | Get item ID by name                 | `growtopia.getItemID("Dirt")`                                        |
| `growtopia.tileChange`          | `posx:number`, `posy:number`, `value:number` | -          | Change a tile value                 | `growtopia.tileChange(1,2,3)`                                        |
| `growtopia.sendDialog`          | `dialog:string`                              | -          | Send dialog as string               | `growtopia.sendDialog("add_textbox\|iniey\|left\|\nadd_quick_exit")` |
| `growtopia.setWeather`          | `weatherid:number`                           | -          | Set world weather                   | `growtopia.setWeather(6)`                                            |
| `growtopia.getItemName`         | `id:number`                                  | `string`   | Get item name by ID                 | `log(growtopia.getItemName(2))`                                      |
| `growtopia.enterGateway`        | `x:number`, `y:number`, `n:number`           | -          | Enter a gateway door                | `growtopia.enterGateway(getLocal().posX//32,getLocal().posY//32,0)`  |
| `growtopia.checkInventory`      | `itemid:number`                              | `boolean`  | Check if player has item            | `log(growtopia.checkInventory(242))`                                 |
| `growtopia.confirmDropItem`     | `itemID:number`, `amount:number`             | -          | Drop specific amount of item        | `growtopia.confirmDropItem(242,10)`                                  |
| `growtopia.checkInventoryCount` | `itemid:number`                              | `number`   | Count how many items player has     | `growtopia.checkInventoryCount(242)`                                 |

## Growlauncher Namespace

| index                        | Params | Return           | Description          | Example                                                      |
| :-                           | :-     | :-               | :-                   | :-                                                           |
| `growlauncher.version`       | -      | `version:number` | Get version integer. | `log(growlauncher.version)`                                  |
| `growlauncher.getVersion`    | -      | `version:string` | Get version string.  | `log(growlauncher.getVersion())`                             |
| `growlauncher.getVersionInt` | -      | `version:number` | Get version integer. | `log(growlauncher.getVersionInt(growlauncher.getVersion()))` |

## Preferences Namespace

| Function | Params                       | Return        | Description                            |
| :-       | :-                           | :-            | :-                                     |
| `:new`   | `name:string`                | `Preferences` | Create new preferences instance        |
| `:load`  | -                            | -             | Load preferences from file             |
| `:save`  | -                            | -             | Save preferences to file               |
| `:get`   | `name:string`, `default:any` | `any`         | Get value by key with default fallback |
| `:set`   | `name:string`, `value:any`   | -             | Set value by key                       |

**Examples:**

```lua
local pref = require("preferences")
pref:new("configFile")
pref:save()
pref:set("config", true)    
config = pref:get("config", false)
log(config)
```

## UserInterface Namespace

JSON builder functions for making custom module.

| Function               | Params                                                                                                                                          | Return                    | Description                           |
| :-                     | :-                                                                                                                                              | :-                        | :-                                    |
| `UserInterface.new`    | `sub_name?:string`, `icon?:string`                                                                                                              | `UserInterface`           | Create new UI instance                |
| `:addLabel`            | `text:string`                                                                                                                                   | `self`                    | Add label                             |
| `:addLabelApp`         | `text:string`, `icon?:string`                                                                                                                   | `self`                    | Add label with app style              |
| `:addToggle`           | `text:string`, `default?:boolean`, `alias?:string`, `autosave?:boolean`                                                                         | `self`                    | Add toggle switch                     |
| `:addToggleButton`     | `text:string`, `default?:boolean`, `alias?:string`                                                                                              | `self`                    | Add toggle button                     |
| `:addButton`           | `text:string`, `alias?:string`                                                                                                                  | `self`                    | Add button                            |
| `:addChildButton`      | `parent:table`, `text:string`, `alias?:string`                                                                                                  | `self`                    | Add button inside another element     |
| `:addExpandableToggle` | `text:string`, `default?:boolean`, `alias?:string`, `always_expand?:boolean`, `background?:boolean`                                             | `expandable_toggle:table` | Add expandable toggle (with children) |
| `:addChildToggle`      | `parent:table`, `text:string`, `default?:boolean`, `alias?:string`, `autosave?:boolean`, `background?:boolean`                                  | `self`                    | Add toggle inside parent              |
| `:addSlider`           | `text:string`, `min?:number`, `max?:number`, `default?:number`, `step?:number`, `use_dot?:boolean`, `alias?:string`                             | `self`                    | Add slider                            |
| `:addChildSlider`      | `parent:table`, `text:string`, `min_val?:number`, `max_val?:number`, `default_val?:number`, `step?:number`, `use_dot?:boolean`, `alias?:string` | `self`                    | Add slider as child                   |
| `:addTooltip`          | `text:string`, `support_text?:string`, `icon?:string`, `background?:boolean`                                                                    | `self`                    | Add tooltip                           |
| `:addChildTooltip`     | `parent:table`, `text:string`, `support_text?:string`, `icon?:string`, `background?:boolean`                                                    | `self`                    | Add tooltip inside parent             |
| `:addItemPicker`       | `text:string`, `item?:string`, `default?:string`, `alias?:string`                                                                               | `self`                    | Add item picker                       |
| `:addChildItemPicker`  | `parent:table`, `text:string`, `item?:string`, `default?:string`, `alias?:string`                                                               | `self`                    | Add item picker inside parent         |
| `:addInputInt`         | `text:string`, `default?:string`, `label?:string`, `placeholder?:string`, `icon?:string`, `alias?:string`                                       | `self`                    | Add integer input                     |
| `:addChildInputInt`    | `parent:table`, `text:string`, `default?:string`, `label?:string`, `placeholder?:string`, `icon?:string`, `alias?:string`                       | `self`                    | Add int input as child                |
| `:addInputString`      | `text:string`, `default?:string`, `label?:string`, `placeholder?:string`, `icon?:string`, `alias?:string`                                       | `self`                    | Add text input                        |
| `:addChildInputString` | `parent:table`, `text:string`, `default?:string`, `label?:string`, `placeholder?:string`, `icon?:string`, `alias?:string`                       | `self`                    | Add string input as child             |
| `:addDialog`           | `text:string`, `support_text?:string`, `menu_items?:table`                                                                                      | `dialog:table`            | Add dialog                            |
| `:addDivider`          | -                                                                                                                                               | `self`                    | Add divider                           |
| `:addDisplayList`      | `text:string`, `default?:string`, `alias?:string`                                                                                               | `self`                    | Add display list                      |
| `:addTileSelect`       | `text:string`, `default?:string`, `alias?:string`, `count?:number`                                                                              | `self`                    | Add tile select                       |
| `:generateJSON`        | -                                                                                                                                               | `json:string`             | Generate JSON for UI                  |
| `:tableToJSON`         | `t:table`, `indent?:string`                                                                                                                     | `json:string`             | Convert table to JSON string          |
| `:printJSON`           | -                                                                                                                                               | -                         | Print JSON to console                 |

## UIManager Namespace

| Function          | Params                           | Return      | Description                       |
| :-                | :-                               | :-          | :-                                |
| `UIManager.new`   | -                                | `UIManager` | Creates a new UIManager instance  |
| `:printJSON`      | `ui:UserInterface`               | -           | Prints the JSON of the UI         |
| `:generateJSON`   | `ui:UserInterface`               | `string`    | Generates a JSON string of the UI |
| `:addSubCategory` | `ui:UserInterface`, `meta:table` | `UIManager` | Adds a sub-category to the UI     |

---

# 🎣 Hooks, Callbacks & Concurrency

## Hook Events

- `onVariant(var, pkt)` [`var:VariantList`](#variantlist)[`pkt:TankPacket`](#tankpacket)
- `onGamePacket(pkt)` [`pkt:TankPacket`](#tankpacket)
- `onSendPacketRaw(pkt)` [`pkt:TankPacket`](#tankpacket)
- `onSendPacket(type,pkt)` `type:number`, `pkt:string`
- `onValue(type,name,value)` `type:number`, `name:string`, `value:string|number|boolean|table`
- `onDrawImGui(deltaTime)` `deltaTime:number`
- `onDraw(deltaTime)` `deltaTime:number`
- `onDialog(title,alias,isAccepted)` `title:string`, `alias:string`, `isAccepted:boolean`

## Hook & Callbacks Functions

| Function             | Params                                           | Return | Description                               | Example                                                  |
| :-                   | :-                                               | :-     | :-                                        | :-                                                       |
| `addHook`            | `func:function`, `name:string`, `noret?:boolean` | -      | Add event hook. (noret is deprecated rn.) | `addHook(onDraw,"onDraw")`                               |
| `applyHook`          | -                                                | -      | Apply hooks.                              | `applyHook()`                                            |
| `removeHook`         | `name:string`                                    | -      | Remove event hook.                        | `removeHook("onDraw")`                                   |
| `AddHookCallback`    | `func:function`, `name:string`                   | -      | Low-level hook callback                   | `AddHookCallback("OnPlayerJoin", "join_logger", function(player) log("Player joined: " .. player.name) end)` |
| `CallHookCallback`   | `name:string`, `...`                             | -      | Call a registered hook callback           | `CallHookCallback("OnPlayerJoin", { name = "TestBot" })`                                                     |
| `RemoveHookCallback` | `name:string`                                    | -      | Remove a hook callback                    | `RemoveHookCallback("OnPlayerJoin", "join_logger")`                                                          |

<!-- 
#Callback
#Callback.hooks 
-->

## Threading & Coroutine

| Function        | Params                                           | Return    | Description                 | Example                                         |
| :-              | :-                                               | :-        | :-                          | :-                                              |
| `await`         | `function_cond:fun():boolean`, `timeout?:number` | -         | Await condition             | `await(function() return ready end,1000)`       |
| `sleep`         | `delay:number`                                   | -         | Sleep (ms)                  | `sleep(1000)`                                   |
| `CSleep`        | `milliseconds:number`                            | -         | Coroutine sleep             | `CSleep(500)`                                   |
| `randomSleep`   | `min:number`, `max:number`                       | `number`  | Random sleep (ms)           | `randomSleep(500,1000)`                         |
| `randomCSleep`  | `min:number`, `max:number`                       | `number`  | Random coroutine sleep      | `randomCSleep(200,400)`                         |
| `runThread`     | `func:function`, `...any`                        | `any ...` | Run function in new thread  | `runThread(function() log("Thread") end)`       |
| `runCoroutine`  | `func:function`, `...any`                        | `any ...` | Run coroutine               | `runCoroutine(function() log("Coroutine") end)` |
| `tickCoroutine` | -                                                | -         | Tick coroutine (internal)   | -                                               | X

---

# 📦 Value & Modules

## Value

| Function       | Params                                                           | Return                    | Description                      | Example                                     |
| :-             | :-                                                               | :-                        | :-                               | :-                                          |
| `getValue`     | `type:number (0=boolean,1=number,2=str)`, `name:string`          | `boolean\|number\|string` | Get value by type and name       | `getValue(0, "ModFly")`                     |
| `setValue`     | `name:string`, `value:any`                                       | -                         | Set value (no UI update)         | `setValue("cheat_config_fastbuy_count",1)`  |
| `bindValue`    | `type:number`, `alias:string`, `default:string\|number\|boolean` | `boolean\|number\|string` | Bind alias with default value    | `bindValue(1, "autocrime_delay", 500)()`    |
| `editValue`    | `name:string`, `value:string\|boolean\|number`                   | -                         | Edit or toggle value             | `editValue("cheat_config_fastbuy_count",1)` |
| `editToggle`   | `name:string`, `value:boolean`                                   | -                         | Edit or toggle value             | `editToggle("ModFly", true)`                |
| `setMinimum`   | `version:string`                                                 | -                         | Set minimum version requirement  | `setMinimum("6.0.0")`                       |
| `setOnValue`   | `name:string`, `func:function`                                   | -                         | Callback when value changes      | `setOnValue("autocrime_delay", onChange)`   |
| `addIntoModule`| `json:string`, `category_name?:string`                           | -                         | Add JSON into module             | `addIntoModule('{"key":1}',"Test")`         |

## Notification & UI Modules

| Function           | Params                           | Return | Description               | Example                                  |
| :-                 | :-                               | :-     | :-                        | :-                                       |
| `sendDialog`       | [`dialog:Dialog`](#dialog)       | -      | Send a GL dialog          | `sendDialog({title="Ey",message="HEY"})` |
| `addCategory`      | `name:string`, `icon:string`     | -      | Add UI category           | `addCategory("Tools","Verified")`        |
| `addShortcut`      | `name:string`                    | -      | Add shortcut              | `addShortcut("FindPath")`                |
| `removeShortcut`   | `name:string`                    | -      | Remove shortcut           | `removeShortcut("FindPath")`             |
| `requireModule`    | `name:string`                    | -      | Requires module           | `requireModule("IniEy")`                 |
| `addIntoModule`    | `json:string`, `category:string` | -      | Adds JSON-defined module  | `addIntoModule("{}", "IniEy")`           |
| `sendNotification` | `text:string`                    | -      | Send notification popup   | `sendNotification("Saved!")`             |

---

# 🛑 Deprecated

| Function              | Params                                                                     | Return                  | Description                     |
| :-                    | :-                                                                         | :-                      | :-                              |
| `allowGameRun`        | -                                                                          | -                       | Deprecated allow run (internal) | X
| `deprecatedFunction`  | -                                                                          | -                       | Placeholder function (internal) | X
| `executeFromAssets`   | `path:string`, `name:string`                                               | -                       | Deprecated asset execute        |
| `createPlayer`        | `name:string`, `flag:string`, `netID:number`, `posX:number`, `posY:number` | [NetAvatar](#netavatar) | Spawn a visual NPC Avatar       |

---

# 📜 Sample Scripts

- [UI Sample Script](sample-scripts/sample-ui.lua)
- [Powerkuy's script](https://discord.com/channels/897496245373906995/1230832789541224489/1230832789541224489)

---

# 🗒️ Lua Annotation Files

For better experience when creating lua scripts, install `sumneko` extension in vscode

- [ImGui](annotations/imgui.lua)
- [Growlauncher](annotations/growlauncher.lua)

---

# 📌 Notes

- Support us by buying the real growlauncher.
- More free scripts there!

---

# 🙌 Credits

- **Author:** IniEy
- **Creator:** Powerkuy

---

# 🏠 Community

Official discord server: [![Powerkuy Commmunity](https://img.shields.io/discord/897496245373906995)](https://discord.gg/powerkuyofficial)

