# AmethystTraveling
A Minecraft datapack for building fast travel points.
It utilizes amethysts and makes them a consistently needed resource for fast travel.

## Features:
- fast travel between distant places and diminsions
- allows to carry nearby npcs (also mobs)
- different tiers of fast travel points
  - affects speed and available diminsions
- in-game manual (written book)
- designed to be multiplayer friendly
- translations are available with the resource pack: [AmethystTraveling-language-pack](https://github.com/Pretorer/AmethystTraveling-language-pack)

## Usage:
To get the in-game manual, enter the command `/trigger AmethystTraveling.getManual`.

### Building
To build a fast travel point, a 3x3 platform must be constructed from amethyst blocks. 
The "catalyst" block in the center determines the time it takes for the fast travel point to channel. 
In addition, not all fast travel points can be kept permanently active in all diminsions. 
For this the right "catalyst" must be chosen. 
To activate the platform of a fast travel point, you must stand in the middle of the platform.

![Different 3x3 platforms out of amethyst blocks with different blocks in the center.](./img/tiers.png)
**Image:** Different tiers of fast travel points.

Block     | Channeling time (in s) | Dimensions
----------|:----------------------:|-----------
Copper    | 10                     | Overworld
Iron      | 6                      | Overworld
Gold      | 3                      | Overworld
Emerald   | 2                      | Overworld
Diamond   | 1.5                    | Overworld, Nether
Netherite | 1                      | Overworld, Nether, End


### Connecting
To connect two fast travel points, the first one must be marked first. To do this, stand in the middle of an activated unconnected platform and hold an amethyst shard in your hand. Now you can go to the second activated unconnected platform and do the same as you did with the first.

### Travelling
To travel, stand in the center of an activated connected fast travel point and hold an amethyst shard in your hand. Now the fast travel point starts to channel.
NPCs can be taken along by standing on the platform. However, these also consume an amethyst shard.
After travelling, the platform must be re-entered or the amethyst shard must be taken in hand again.

### Destruction
If a block of the platform of an activated fast travel point is removed, the fast travel point is destroyed. 
A possibly connected platform will now also no longer work.

## Datapack installation:
Install this datapack like any other datapack by placing it in the world's datapack folder and entering the command `/reload`.
Alternatively: when a new world is created, open the datapacks menu and drag this datapack into the Minecraft window.

## Datapack removal:
The command `/function teleporter:remove` removes all entities, scoreboards and unloads all permanently loaded chunks created by this datapack.
