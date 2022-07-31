# add variables
scoreboard objectives add Amethysttravelling.getManual trigger
scoreboard objectives add AT.blocked dummy
scoreboard objectives add AT.channelTime dummy
scoreboard objectives add AT.chunkX dummy
scoreboard objectives add AT.chunkZ dummy
scoreboard objectives add AT.config dummy
scoreboard objectives add AT.constants dummy
scoreboard objectives add AT.dimension dummy
scoreboard objectives add AT.findBlock dummy
scoreboard objectives add AT.id dummy
scoreboard objectives add AT.isConnected dummy
scoreboard objectives add AT.isConnecting dummy
scoreboard objectives add AT.isIntact dummy
scoreboard objectives add AT.lastId dummy
scoreboard objectives add AT.level dummy
scoreboard objectives add AT.paid dummy
scoreboard objectives add AT.relChannTime dummy
scoreboard objectives add AT.selected dummy
scoreboard objectives add AT.targetId dummy

# setup
scoreboard players set 10 AT.constants 10
scoreboard players set 16 AT.constants 16

execute unless score copper AT.config matches 0.. run scoreboard players set copper AT.config 200
execute unless score iron AT.config matches 0.. run scoreboard players set iron AT.config 120
execute unless score gold AT.config matches 0.. run scoreboard players set gold AT.config 60
execute unless score emerald AT.config matches 0.. run scoreboard players set emerald AT.config 40
execute unless score diamond AT.config matches 0.. run scoreboard players set diamond AT.config 30
execute unless score netherite AT.config matches 0.. run scoreboard players set netherite AT.config 20

execute unless score var AT.lastId matches 0.. run scoreboard players set var AT.lastId 0

# schedule loops
function amethysttravelling:platform/detect_built_platform
schedule function amethysttravelling:platform/destroy 4t
schedule function amethysttravelling:platform/show 8t
schedule function amethysttravelling:connection/first_platform 12t
schedule function amethysttravelling:connection/second_platform 16t
schedule function amethysttravelling:trigger/give_book 20t

# setup bossbars
bossbar add teleport0 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport1 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport2 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport3 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport4 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport5 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport6 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport7 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport8 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport9 {"translate":"Channelling","color":"dark_purple"}
bossbar add teleport10 {"translate":"Channelling","color":"dark_purple"}

bossbar set minecraft:teleport0 max 10
bossbar set minecraft:teleport1 max 10
bossbar set minecraft:teleport2 max 10
bossbar set minecraft:teleport3 max 10
bossbar set minecraft:teleport4 max 10
bossbar set minecraft:teleport5 max 10
bossbar set minecraft:teleport6 max 10
bossbar set minecraft:teleport7 max 10
bossbar set minecraft:teleport8 max 10
bossbar set minecraft:teleport9 max 10
bossbar set minecraft:teleport10 max 10

bossbar set minecraft:teleport0 value 0
bossbar set minecraft:teleport1 value 1
bossbar set minecraft:teleport2 value 2
bossbar set minecraft:teleport3 value 3
bossbar set minecraft:teleport4 value 4
bossbar set minecraft:teleport5 value 5
bossbar set minecraft:teleport6 value 6
bossbar set minecraft:teleport7 value 7
bossbar set minecraft:teleport8 value 8
bossbar set minecraft:teleport9 value 9
bossbar set minecraft:teleport10 value 10

bossbar set minecraft:teleport0 color purple
bossbar set minecraft:teleport1 color purple
bossbar set minecraft:teleport2 color purple
bossbar set minecraft:teleport3 color purple
bossbar set minecraft:teleport4 color purple
bossbar set minecraft:teleport5 color purple
bossbar set minecraft:teleport6 color purple
bossbar set minecraft:teleport7 color purple
bossbar set minecraft:teleport8 color purple
bossbar set minecraft:teleport9 color purple
bossbar set minecraft:teleport10 color purple

bossbar set minecraft:teleport0 style notched_10
bossbar set minecraft:teleport1 style notched_10
bossbar set minecraft:teleport2 style notched_10
bossbar set minecraft:teleport3 style notched_10
bossbar set minecraft:teleport4 style notched_10
bossbar set minecraft:teleport5 style notched_10
bossbar set minecraft:teleport6 style notched_10
bossbar set minecraft:teleport7 style notched_10
bossbar set minecraft:teleport8 style notched_10
bossbar set minecraft:teleport9 style notched_10
bossbar set minecraft:teleport10 style notched_10

# message
tellraw @a [{"translate":"§dAmethyst-fast-travel §5has been reloaded."}]
