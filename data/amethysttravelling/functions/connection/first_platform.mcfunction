# setup new entities
execute as @a unless entity @s[scores={AT.isConnecting=0..}] run scoreboard players set @s AT.isConnecting 0
execute as @e[tag=fast_travel_point] unless entity @s[scores={AT.isConnecting=0..}] run scoreboard players set @s AT.isConnecting 0

# remove item, playsound, save coordinates and set isConnecting
execute as @a[predicate=amethysttravelling:has_magical_item,scores={AT.isConnecting=0,AT.blocked=0}] at @s if entity @e[tag=fast_travel_point,scores={AT.isConnecting=0,AT.isConnected=0},distance=..1.5] run function amethysttravelling:connection/first_connect

#loop
schedule function amethysttravelling:connection/second_platform 1s