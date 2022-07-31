# get chunk
execute store result score @s AT.chunkX run data get entity @s Pos[0]
execute store result score @s AT.chunkZ run data get entity @s Pos[2]
scoreboard players operation @s AT.chunkX /= 16 AT.constants
scoreboard players operation @s AT.chunkZ /= 16 AT.constants
