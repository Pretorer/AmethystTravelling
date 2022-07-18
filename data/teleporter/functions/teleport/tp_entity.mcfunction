
execute if entity @e[tag=TpPlatform,scores={AT.selected=1}] store success score @p AT.paid run clear @p minecraft:amethyst_shard 1
execute if entity @p[scores={AT.paid=1}] at @e[tag=TpPlatform,scores={AT.selected=1},limit=1] run tp @s ~ ~ ~