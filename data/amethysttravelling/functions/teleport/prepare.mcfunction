# channelling
execute as @a[predicate=amethysttravelling:has_magical_item,scores={AT.blocked=0}] at @s if entity @e[tag=fast_travel_point,scores={AT.isConnected=1},distance=..1.5] run scoreboard players add @s AT.channelTime 1
execute as @a at @s unless entity @e[tag=fast_travel_point,scores={AT.isConnected=1},distance=..1.5] run function amethysttravelling:teleport/stop_channelling
execute as @a at @s unless entity @s[predicate=amethysttravelling:has_magical_item] run function amethysttravelling:teleport/stop_channelling

# show channelling
execute if entity @a[scores={AT.channelTime=0..}] run function amethysttravelling:teleport/show

# teleport
execute as @a[scores={AT.blocked=0,AT.channelTime=0..}] at @s if score @s AT.channelTime = @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.channelTime run function amethysttravelling:teleport/tp
