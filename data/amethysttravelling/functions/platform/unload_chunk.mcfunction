# store chunk
scoreboard players operation var AT.dimension = @s AT.dimension
scoreboard players operation var AT.chunkX = @s AT.chunkX
scoreboard players operation var AT.chunkZ = @s AT.chunkZ

# find platforms in same chunk
execute as @e[tag=fast_travel_point,scores={AT.isIntact=9}] if score @s AT.dimension = var AT.dimension run scoreboard players set @s AT.selected 1
execute as @e[tag=fast_travel_point,scores={AT.selected=1}] unless score @s AT.chunkX = var AT.chunkX run scoreboard players set @s AT.selected 0
execute as @e[tag=fast_travel_point,scores={AT.selected=1}] unless score @s AT.chunkZ = var AT.chunkZ run scoreboard players set @s AT.selected 0

# unload chunk if not used
execute unless entity @e[scores={AT.selected=1}] run forceload remove ~ ~

# reset
scoreboard players set @e[tag=fast_travel_point] AT.selected 0