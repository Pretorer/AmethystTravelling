# test build
scoreboard players set @e[tag=TpPlatform] AT.isIntact 0
execute as @e[tag=TpPlatform] at @s if block ~1 ~-1 ~1 #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~1 ~-1 ~ #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~1 ~-1 ~-1 #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~ ~-1 ~1 #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~ ~-1 ~ #condenser run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~ ~-1 ~-1 #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~-1 ~-1 ~1 #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~-1 ~-1 ~ #magical_block run scoreboard players add @s AT.isIntact 1
execute as @e[tag=TpPlatform] at @s if block ~-1 ~-1 ~-1 #magical_block run scoreboard players add @s AT.isIntact 1

# test dimension
#   17: "minecraft:the_end"
#   19: "minecraft:overworld" 
#   20: "minecraft:the_nether" 
execute as @e[tag=TpPlatform,scores={AT.level=1,AT.dimension=17}] at @s unless entity @p[distance=..1.5] run scoreboard players set @s AT.isIntact 0
execute as @e[tag=TpPlatform,scores={AT.level=1,AT.dimension=20}] at @s unless entity @p[distance=..1.5] run scoreboard players set @s AT.isIntact 0
execute as @e[tag=TpPlatform,scores={AT.level=2,AT.dimension=17}] at @s unless entity @p[distance=..1.5] run scoreboard players set @s AT.isIntact 0
