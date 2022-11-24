# pay 
execute if entity @e[tag=fast_travel_point,scores={AT.selected=1}] store success score @p AT.paid run clear @p #amethysttravelling:magical_item 1

# give advancement
execute at @s if entity @p[scores={AT.paid=1}] if entity @s[type=!#amethysttravelling:hostile] run advancement grant @p only amethysttravelling:carry_npc
execute at @s if entity @p[scores={AT.paid=1}] if entity @s[type=#amethysttravelling:hostile] run advancement grant @p only amethysttravelling:carry_mob
execute at @s if entity @p[scores={AT.paid=1}] if entity @s[type=creeper] run advancement grant @p only amethysttravelling:carry_creeper

# tp if paid
execute if entity @p[scores={AT.paid=1},distance=..2] at @e[tag=fast_travel_point,scores={AT.selected=1},limit=1] run tp @s ~ ~ ~

