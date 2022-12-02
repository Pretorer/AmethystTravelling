# update tag
tag @e[tag=TpPlatform] add fast_travel_point
tag @e[tag=fast_travel_point] remove TpPlatform

# copy to new scoreboards
scoreboard players operation @e AT.blocked = @e TTT.blocked
scoreboard players operation @e AT.channelTime = @e TTT.channelTime
scoreboard players operation @e AT.chunkX = @e TTT.chunkX
scoreboard players operation @e AT.chunkZ = @e TTT.chunkZ
scoreboard players operation @e AT.dimension = @e TTT.dimension
scoreboard players operation @e AT.findBlock = @e TTT.findTp
scoreboard players operation @e AT.id = @e TTT.id
scoreboard players operation @e AT.isConnected = @e TTT.isConnected
scoreboard players operation @e AT.isConnecting = @e TTT.isConnecting
scoreboard players operation @e AT.isIntact = @e TTT.isIntact
scoreboard players operation var AT.lastId = var TTT.lastId
scoreboard players operation @e AT.level = @e TTT.level
scoreboard players operation @e AT.paid = @e TTT.paid
scoreboard players operation @e AT.relChannTime = @e TTT.relChannTime
scoreboard players operation @e AT.selected = @e TTT.selected
scoreboard players operation @e AT.targetId = @e TTT.targetId

# remove old scoreboards
scoreboard objectives remove TTT.isConnecting
scoreboard objectives remove TTT.relChannTime
scoreboard objectives remove TTT.isConnected
scoreboard objectives remove TTT.targetId
scoreboard objectives remove TTT.paid
scoreboard objectives remove TTT.id
scoreboard objectives remove TTT.chunkZ
scoreboard objectives remove TTT.level
scoreboard objectives remove TTT.selected
scoreboard objectives remove TTT.chunkX
scoreboard objectives remove TTT.lastId
scoreboard objectives remove TTT.dimension
scoreboard objectives remove TTT.constants
scoreboard objectives remove TTT.channelTime
scoreboard objectives remove TTT.blocked
scoreboard objectives remove TTT.findTp
scoreboard objectives remove TTT.isIntact
