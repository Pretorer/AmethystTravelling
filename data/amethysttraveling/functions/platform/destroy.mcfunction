function amethysttraveling:platform/check

execute at @e[tag=TpPlatform,scores={AT.isIntact=..8}] run particle minecraft:falling_obsidian_tear ~ ~ ~ 0.5 1.5 0.5 0.02 500
execute at @e[tag=TpPlatform,scores={AT.isIntact=..8}] run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1.3
execute at @e[tag=TpPlatform,scores={AT.isIntact=..8}] run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1.5

# message
execute at @e[tag=TpPlatform,scores={AT.isIntact=..8}] run tellraw @a [{"translate":"%1$s §5has destroyed a §dteleporter§5!","with":[{"selector":"@p","color":"dark_purple"}]}]

# remove
execute as @e[tag=TpPlatform,scores={AT.isIntact=..8}] at @s run function amethysttraveling:platform/remove

schedule function amethysttraveling:platform/destroy 1s