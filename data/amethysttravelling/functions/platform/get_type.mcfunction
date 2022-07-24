# switch on block below
execute if block ~ ~-1 ~ #copper run scoreboard players set @s AT.level 1
execute if block ~ ~-1 ~ #copper run scoreboard players set @s AT.channelTime 200
execute if block ~ ~-1 ~ minecraft:iron_block run scoreboard players set @s AT.level 1
execute if block ~ ~-1 ~ minecraft:iron_block run scoreboard players set @s AT.channelTime 120
execute if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s AT.level 1
execute if block ~ ~-1 ~ minecraft:gold_block run scoreboard players set @s AT.channelTime 60
execute if block ~ ~-1 ~ minecraft:emerald_block run scoreboard players set @s AT.level 1
execute if block ~ ~-1 ~ minecraft:emerald_block run scoreboard players set @s AT.channelTime 40
execute if block ~ ~-1 ~ minecraft:diamond_block run scoreboard players set @s AT.level 2
execute if block ~ ~-1 ~ minecraft:diamond_block run scoreboard players set @s AT.channelTime 30
execute if block ~ ~-1 ~ minecraft:netherite_block run scoreboard players set @s AT.level 3
execute if block ~ ~-1 ~ minecraft:netherite_block run scoreboard players set @s AT.channelTime 20

# get diminsion
#   17: "minecraft:the_end"
#   19: "minecraft:overworld" 
#   20: "minecraft:the_nether"  
execute store result score @s AT.dimension run data get entity @p Dimension

# get chunk
execute store result score @s AT.chunkX run data get entity @s Pos[0]
execute store result score @s AT.chunkZ run data get entity @s Pos[2]
scoreboard players operation @s AT.chunkX /= 16 AT.constants
scoreboard players operation @s AT.chunkZ /= 16 AT.constants

# manage id
scoreboard players add var AT.lastId 1
scoreboard players operation @s AT.id = var AT.lastId
