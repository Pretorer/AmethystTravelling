# channelling
execute as @a[nbt={SelectedItem: {id: "minecraft:amethyst_shard"}},scores={AT.blocked=0}] at @s if entity @e[tag=TpPlatform,scores={AT.isConnected=1},distance=..1.5] run scoreboard players add @s AT.channelTime 1
execute as @a at @s unless entity @e[tag=TpPlatform,scores={AT.isConnected=1},distance=..1.5] run function amethysttraveling:teleport/stop_channelling
execute as @a at @s unless entity @s[nbt={SelectedItem: {id: "minecraft:amethyst_shard"}}] run function amethysttraveling:teleport/stop_channelling

# show channelling
execute if entity @a[scores={AT.channelTime=1..}] run function amethysttraveling:teleport/show

# teleport
execute as @a at @s if score @s AT.channelTime = @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.channelTime run function amethysttraveling:teleport/tp
