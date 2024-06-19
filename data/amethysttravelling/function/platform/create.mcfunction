# create maker for the platform
summon armor_stand ~ ~ ~ {Tags: ["fast_travel_point"], Invisible: 1b, NoGravity: 1b, Marker: 0b, DisabledSlots: 4144959, CustomName: '{"text":" "}'}
scoreboard players set @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.isConnected 0
forceload add ~ ~

# manage id
scoreboard players add var AT.lastId 1
scoreboard players operation @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.id = var AT.lastId

# update channelTime and level
execute as @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] at @s run function amethysttravelling:platform/get_type
execute as @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] at @s run function amethysttravelling:platform/get_chunk

# appearance
particle minecraft:dragon_breath ~ ~ ~ 0.5 2 0.5 0.02 500 force
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1.3
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1.5

# block
scoreboard players set @s AT.blocked 1

# message
tellraw @p [{"translate":"%1$s §5has built a new §dfast travel point§5!","with":[{"selector":"@p","color":"dark_purple"}]}]

# give advancement
execute at @s if block ~ ~-1 ~ #amethysttravelling:copper run advancement grant @s only amethysttravelling:build
execute at @s if entity @e[tag=fast_travel_point,scores={AT.level=1},distance=..1.5] unless block ~ ~-1 ~ #amethysttravelling:copper run advancement grant @s only amethysttravelling:build_tier_one
execute at @s if entity @e[tag=fast_travel_point,scores={AT.level=2},distance=..1.5] run advancement grant @s only amethysttravelling:build_tier_two
execute at @s if entity @e[tag=fast_travel_point,scores={AT.level=3},distance=..1.5] run advancement grant @s only amethysttravelling:build_tier_three
