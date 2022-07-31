# pay 
execute if entity @e[tag=fast_travel_point,scores={AT.selected=1}] store success score @p AT.paid run clear @p #amethysttravelling:magical_item 1

# tp if paid
execute if entity @p[scores={AT.paid=1}] at @e[tag=fast_travel_point,scores={AT.selected=1},limit=1] run tp @s ~ ~ ~
