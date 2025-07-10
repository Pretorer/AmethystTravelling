# mark target
execute as @e[tag=fast_travel_point] if score @s AT.id = @e[tag=fast_travel_point,distance=..1.5,limit=1] AT.targetId run scoreboard players set @s AT.selected 1

# pay
execute if entity @e[tag=fast_travel_point,scores={AT.selected=1}] run clear @s #amethysttravelling:magical_item 1

# give advancement (before tp)
execute if predicate amethysttravelling:in_end run scoreboard players set @s AT.inEnd 1
execute if predicate amethysttravelling:in_overworld run scoreboard players set @s AT.inOverworld 1
execute if predicate amethysttravelling:in_nether run scoreboard players set @s AT.inNether 1
execute if entity @s[scores={AT.inOverworld=1,AT.inNether=1,AT.inEnd=1}] run advancement grant @s only amethysttravelling:travel_from_every_dimension

# tp otherentity to target
execute as @e[type=!#amethysttravelling:not_teleportable,tag=!fast_travel_point,nbt=!{Marker: 1b},distance=..1.6] run function amethysttravelling:teleport/tp_entity

# tp to target
execute if entity @e[tag=fast_travel_point,scores={AT.selected=1}] run playsound minecraft:entity.illusioner.prepare_mirror block @a ~ ~ ~ 0.7 1.9
execute at @e[tag=fast_travel_point,scores={AT.selected=1},limit=1] unless entity @s[nbt={RootVehicle: {}}] run tp @s ~ ~ ~
execute at @e[tag=fast_travel_point,scores={AT.selected=1}] run playsound minecraft:entity.illusioner.prepare_mirror block @a ~ ~ ~ 0.7 1.9

# title after travilling
execute at @s if entity @e[tag=fast_travel_point,name=!" ",scores={AT.selected=1},distance=..1.5,sort=nearest,limit=1] run function amethysttravelling:teleport/show_title

# give advancement
execute at @s if entity @e[tag=fast_travel_point,distance=..1.5,scores={AT.selected=1}] run advancement grant @s only amethysttravelling:travel
execute at @s if entity @e[tag=fast_travel_point,distance=..1.5,name=!" ",scores={AT.selected=1}] run advancement grant @s only amethysttravelling:renamed

# taget not found / destroyed
execute unless entity @e[tag=fast_travel_point,scores={AT.selected=1}] as @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] at @s run function amethysttravelling:platform/unlink

# block and reset
scoreboard players set @s AT.blocked 1
scoreboard players set @e[tag=fast_travel_point] AT.selected 0
function amethysttravelling:teleport/stop_channelling
