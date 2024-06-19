# detect platform
execute as @a at @s run function amethysttravelling:platform/find_blocks

# create armor_stand
execute as @a[scores={AT.findBlock=9,AT.blocked=0}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=fast_travel_point,distance=..1.5] run function amethysttravelling:platform/create

# loop
schedule function amethysttravelling:platform/detect_built_platform 1s