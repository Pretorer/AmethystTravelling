execute as @a[scores={AmethystTraveling.getManual=1}] run give @s written_book{title: "Amethyst fast travel", author: "AmethystTraveling", generation: 3, display: {Name: '{"translate":"Amethyst fast travel","italic":false}', Lore: ['{"translate":"Travel with amethysts between distant places."}']}, pages: ['["",{"text":"-------------------","strikethrough":true},{"text":"\\n","color":"reset"},{"text":"   _____   \\n  (, / \\u2502  \\n    /-\\u253c\\u2518   \\n \') /  \\u2502_","color":"dark_purple"},{"text":"methyst- ","color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"(_/       ","color":"dark_purple"},{"translate":"Fast travel","color":"light_purple"},{"text":"\\n\\n","color":"reset"},{"text":"-------------------","strikethrough":true},{"text":"\\n\\n  \\u2554\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2557\\n  "},{"translate":"\\u2551   Notes of a  \\u2551"},{"text":" \\n  "},{"translate":"\\u2551    traveler   \\u2551"},{"text":"\\n  \\u255a\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u2550\\u255d","color":"reset"}]', '["",{"translate":"Table of content:","underlined":true},{"text":"\\n\\n"},{"translate":" \\u2666 Setup\\n \\u2666 Classes\\n \\u2666 Activation\\n \\u2666 Connection\\n \\u2666 Teleportation\\n \\u2666 Removal\\n","color":"reset"}]', '["",{"translate":"Setup:","underlined":true},{"text":"\\n"},{"translate":"To build a teleporter, a platform must be built."},{"text":" \\n\\n"},{"translate":"Top view of the platform:"},{"text":"\\n ","color":"reset"},{"text":"\\u2588\\u2588\\u2588","color":"dark_purple"},{"text":"\\n ","color":"reset"},{"text":"\\u2588","color":"dark_purple"},{"text":"\\u2588","color":"gold"},{"text":"\\u2588","color":"dark_purple"},{"text":"\\n","color":"reset"},{"text":" \\u2588\\u2588\\u2588\\n","color":"dark_purple"},{"translate":"Legend:","color":"reset"},{"text":"\\n \\u2588","color":"dark_purple"},{"text":": ","color":"reset"},{"translate":"Amethyst block","color":"reset"},{"text":"\\n \\u2588","color":"gold"},{"text":": ","color":"reset"},{"translate":"Catalyzer","color":"reset"}]', '["",{"translate":"Classes:","underlined":true},{"text":"\\n"},{"translate":"The \\"Catalyst\\" block determines the time the teleporter needs to channel. In addition, not all teleporters can be kept permanently active in all diminsions. For this the right \\"catalyst\\" must be chosen.","color":"reset"},{"text":" \\n"}]', '["",{"translate":"Block (time) worlds:","underlined":true},{"text":"\\n"},{"translate":"Copper (10s)","color":"reset"},{"text":"\\n "},{"translate":"Overworld","color":"dark_green"},{"text":"\\n"},{"translate":"Iron (6s)","color":"reset"},{"text":"\\n "},{"translate":"Overworld","color":"dark_green"},{"text":"\\n"},{"translate":"Gold (3s)","color":"reset"},{"text":"\\n "},{"translate":"Overworld","color":"dark_green"},{"text":"\\n"},{"translate":"Emerald (2s)","color":"reset"},{"text":"\\n "},{"translate":"Overworld","color":"dark_green"},{"text":"\\n"},{"translate":"Diamond (1.5s)","color":"reset"},{"text":"\\n "},{"translate":"Overworld","color":"dark_green"},{"text":", ","color":"reset"},{"translate":"Nether","color":"dark_red"},{"text":"\\n"},{"translate":"Netherite (1s)","color":"reset"},{"text":"\\n "},{"translate":"Overworld","color":"dark_green"},{"text":", ","color":"reset"},{"translate":"Nether","color":"dark_red"},{"text":", \\n ","color":"reset"},{"translate":"End","color":"dark_purple"}]', '["",{"translate":"Activation:","underlined":true},{"text":"\\n"},{"translate":"To activate the platform of a teleporter, you must stand in the middle of the platform.","color":"reset"}]', '["",{"translate":"Connection:","underlined":true},{"text":"\\n"},{"translate":"To connect two teleporters, the first one must be marked first. To do this, stand in the center of an activated unconnected teleporter and hold an amethyst shard in your hand.","color":"reset"}]', '["",{"translate":"Teleportation:","underlined":true},{"text":"\\n"},{"translate":"To teleport, stand in the center of an activated connected teleporter and hold an amethyst shard in your hand. Now the teleport starts to channel.","color":"reset"}]', '["",{"text":"\\n"},{"translate":"NPCs can be taken along by standing on the teleporter. However, these also consume an amethyst shard."}]', '["",{"text":"\\n"},{"translate":"After teleportation, the platform must be re-entered or the amethyst shard must be taken in hand again."}]', '["",{"translate":"Removal:","underlined":true},{"text":"\\n"},{"translate":"If a block of the platform of an activated teleporter is removed, the teleporter is destroyed."},{"text":"\\n"},{"translate":"A possibly connected teleporter will now also no longer work.","color":"reset"}]']}

# reset trigger
scoreboard players enable @a AmethystTraveling.getManual
scoreboard players set @a AmethystTraveling.getManual 0

# loop
schedule function teleporter:trigger/give_book 1s
