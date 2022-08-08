# remove marker and unload its chunks
execute as @e[tag=fast_travel_point] at @s run function amethysttravelling:platform/remove

# remove all scoreboards
scoreboard objectives remove AT.getManual
scoreboard objectives remove AT.blocked
scoreboard objectives remove AT.channelTime
scoreboard objectives remove AT.chunkX
scoreboard objectives remove AT.chunkZ
scoreboard objectives remove AT.config
scoreboard objectives remove AT.constants
scoreboard objectives remove AT.dimension
scoreboard objectives remove AT.findBlock
scoreboard objectives remove AT.id
scoreboard objectives remove AT.isConnected
scoreboard objectives remove AT.isConnecting
scoreboard objectives remove AT.isIntact
scoreboard objectives remove AT.lastId
scoreboard objectives remove AT.level
scoreboard objectives remove AT.paid
scoreboard objectives remove AT.relChannTime
scoreboard objectives remove AT.selected
scoreboard objectives remove AT.targetId

# reset schedule 
schedule clear amethysttravelling:platform/detect_built_platform
schedule clear amethysttravelling:platform/destroy
schedule clear amethysttravelling:platform/show
schedule clear amethysttravelling:connection/first_platform
schedule clear amethysttravelling:connection/second_platform
schedule clear amethysttravelling:trigger/give_book

# remove bossbars
bossbar remove minecraft:teleport0
bossbar remove minecraft:teleport1
bossbar remove minecraft:teleport2
bossbar remove minecraft:teleport3
bossbar remove minecraft:teleport4
bossbar remove minecraft:teleport5
bossbar remove minecraft:teleport6
bossbar remove minecraft:teleport7
bossbar remove minecraft:teleport8
bossbar remove minecraft:teleport9
bossbar remove minecraft:teleport10

# disable this datapack
datapack disable "file/AmethystTravelling"

# message
tellraw @a [{"translate":"§dAmethyst-fast-travel §5has been removed."}]
