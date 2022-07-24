# remove marker and unload its chunks
execute as @e[tag=TpPlatform] at @s run function amethysttraveling:platform/remove

# remove all
scoreboard objectives remove AT.constants
scoreboard objectives remove AT.findTp
scoreboard objectives remove AT.isIntact
scoreboard objectives remove AT.channelTime
scoreboard objectives remove AT.relChannTime
scoreboard objectives remove AT.level
scoreboard objectives remove AT.isConnected
scoreboard objectives remove AT.isConnecting
scoreboard objectives remove AT.lastId
scoreboard objectives remove AT.id
scoreboard objectives remove AT.targetId
scoreboard objectives remove AT.selected
scoreboard objectives remove AT.blocked
scoreboard objectives remove AT.dimension
scoreboard objectives remove AT.chunkX
scoreboard objectives remove AT.chunkZ
scoreboard objectives remove AT.paid
scoreboard objectives remove AmethystTraveling.getManual

# reset schedule 
schedule clear amethysttraveling:platform/find_blocks
schedule clear amethysttraveling:platform/destroy
schedule clear amethysttraveling:platform/show
schedule clear amethysttraveling:connection/first_platform
schedule clear amethysttraveling:connection/second_platform
schedule clear amethysttraveling:trigger/give_book

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
datapack disable "file/AmethystTraveling"

# message
tellraw @a [{"translate":"§dAmethyst-fast-travel §5has been removed."}]
