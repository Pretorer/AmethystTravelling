# main function
function amethysttravelling:teleport/prepare
execute as @a[scores={AT.blocked=1}] at @s unless entity @s[predicate=amethysttravelling:has_magical_item] run scoreboard players set @s AT.blocked 0
execute as @a[scores={AT.blocked=1}] at @s unless entity @e[tag=TpPlatform,distance=..1.5] run scoreboard players set @s AT.blocked 0

execute as @a at @s unless entity @s[y=-63,dy=381] run scoreboard players set @s AT.level 0
scoreboard players set @a[y=-63,dy=381] AT.level 1
