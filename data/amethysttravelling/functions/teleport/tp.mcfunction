# mark target
execute as @e[tag=fast_travel_point] if score @s AT.id = @e[tag=fast_travel_point,distance=..1.5,limit=1] AT.targetId run scoreboard players set @s AT.selected 1

# pay
execute if entity @e[tag=fast_travel_point,scores={AT.selected=1}] run clear @s #amethysttravelling:magical_item 1

# tp otherentity to target
execute as @e[type=!#amethysttravelling:not_teleportable,tag=!fast_travel_point,nbt=!{Marker: 1b},distance=..1.6] run function amethysttravelling:teleport/tp_entity

# tp to target
execute if entity @e[tag=fast_travel_point,scores={AT.selected=1}] run playsound minecraft:entity.illusioner.prepare_mirror block @a ~ ~ ~ 0.7 1.9
execute at @e[tag=fast_travel_point,scores={AT.selected=1},limit=1] run tp @s ~ ~ ~
execute at @e[tag=fast_travel_point,scores={AT.selected=1}] run playsound minecraft:entity.illusioner.prepare_mirror block @a ~ ~ ~ 0.7 1.9

# taget not found / destroyed
execute unless entity @e[tag=fast_travel_point,scores={AT.selected=1}] as @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] at @s run function amethysttravelling:platform/unlink

# block and reset
scoreboard players set @s AT.blocked 1
scoreboard players set @e[tag=fast_travel_point] AT.selected 0
function amethysttravelling:teleport/stop_channelling
