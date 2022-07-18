# mark target
execute as @e[tag=TpPlatform] if score @s AT.id = @e[tag=TpPlatform,distance=..1.5,limit=1] AT.targetId run scoreboard players set @s AT.selected 1

# pay
execute if entity @e[tag=TpPlatform,scores={AT.selected=1}] run clear @s minecraft:amethyst_shard 1

# tp otherentity to target
execute as @e[type=!#not_teleportable,tag=!TpPlatform,nbt=!{Marker:1b},distance=..1.6] run function teleporter:teleport/tp_entity

# tp to target
execute if entity @e[tag=TpPlatform,scores={AT.selected=1}] run playsound minecraft:entity.illusioner.prepare_mirror block @a ~ ~ ~ 0.7 1.9
execute at @e[tag=TpPlatform,scores={AT.selected=1},limit=1] run tp @s ~ ~ ~
execute at @e[tag=TpPlatform,scores={AT.selected=1}] run playsound minecraft:entity.illusioner.prepare_mirror block @a ~ ~ ~ 0.7 1.9

# taget not found / destroyed
execute unless entity @e[tag=TpPlatform,scores={AT.selected=1}] as @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] at @s run function teleporter:platform/unlink

# block and reset
scoreboard players set @s AT.channelTime 0
scoreboard players set @s AT.blocked 1
scoreboard players set @e[tag=TpPlatform] AT.selected 0
function teleporter:teleport/show