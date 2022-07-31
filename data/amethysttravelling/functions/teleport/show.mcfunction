# prepare channelling
execute as @a run scoreboard players operation @s AT.relChannTime = @s AT.channelTime
execute as @a[scores={AT.channelTime=1..}] run scoreboard players operation @s AT.relChannTime *= 10 AT.constants
execute as @a[scores={AT.channelTime=1..}] at @s run scoreboard players operation @s AT.relChannTime /= @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.channelTime

# workaround for platforms with zero channeling time
execute as @a[scores={AT.channelTime=0}] at @s if entity @e[tag=TpPlatform,distance=..1.5,sort=nearest,scores={AT.channelTime=0}] run scoreboard players set @s AT.relChannTime 10

# channelling sound by player
execute at @a[scores={AT.relChannTime=1}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.1 0.1
execute at @a[scores={AT.relChannTime=2}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.2 0.1
execute at @a[scores={AT.relChannTime=3}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.3 0.1
execute at @a[scores={AT.relChannTime=4}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.4 0.1
execute at @a[scores={AT.relChannTime=5}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.5 0.1
execute at @a[scores={AT.relChannTime=6}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.6 0.1
execute at @a[scores={AT.relChannTime=7}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.7 0.1
execute at @a[scores={AT.relChannTime=8}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.8 0.1
execute at @a[scores={AT.relChannTime=9}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.4 0.1
execute at @a[scores={AT.relChannTime=10}] run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 0.2 0.1

# channelling particle by player
execute as @a[scores={AT.relChannTime=1}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 4
execute as @a[scores={AT.relChannTime=2}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 8
execute as @a[scores={AT.relChannTime=3}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 16
execute as @a[scores={AT.relChannTime=4}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 32
execute as @a[scores={AT.relChannTime=5}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 64
execute as @a[scores={AT.relChannTime=6}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 128
execute as @a[scores={AT.relChannTime=7}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 256
execute as @a[scores={AT.relChannTime=8}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 512
execute as @a[scores={AT.relChannTime=9}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 1024
execute as @a[scores={AT.relChannTime=10}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 2048

# channelling particle by destination
execute as @e[tag=TpPlatform] at @s unless entity @p[distance=..1.5,scores={AT.channelTime=0..}] run scoreboard players set @s AT.relChannTime 0
execute as @a at @s if score @s AT.relChannTime > @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.relChannTime run scoreboard players operation @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.relChannTime = @s AT.relChannTime
execute at @a[scores={AT.channelTime=0..}] as @e[tag=TpPlatform] if score @s AT.id = @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.targetId run scoreboard players operation @s AT.relChannTime = @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.relChannTime
execute as @e[tag=TpPlatform] at @s if entity @p[distance=..1.5,scores={AT.channelTime=0..}] run scoreboard players set @s AT.relChannTime 0

execute as @e[tag=TpPlatform,scores={AT.relChannTime=1}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 4
execute as @e[tag=TpPlatform,scores={AT.relChannTime=2}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 8
execute as @e[tag=TpPlatform,scores={AT.relChannTime=3}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 16
execute as @e[tag=TpPlatform,scores={AT.relChannTime=4}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 32
execute as @e[tag=TpPlatform,scores={AT.relChannTime=5}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 64
execute as @e[tag=TpPlatform,scores={AT.relChannTime=6}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 128
execute as @e[tag=TpPlatform,scores={AT.relChannTime=7}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 256
execute as @e[tag=TpPlatform,scores={AT.relChannTime=8}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 512
execute as @e[tag=TpPlatform,scores={AT.relChannTime=9}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 1024
execute as @e[tag=TpPlatform,scores={AT.relChannTime=10}] at @s run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 2048

# set bossbar
bossbar set minecraft:teleport0 players @a[scores={AT.channelTime=1..,AT.relChannTime=0}]
bossbar set minecraft:teleport1 players @a[scores={AT.relChannTime=1}]
bossbar set minecraft:teleport2 players @a[scores={AT.relChannTime=2}]
bossbar set minecraft:teleport3 players @a[scores={AT.relChannTime=3}]
bossbar set minecraft:teleport4 players @a[scores={AT.relChannTime=4}]
bossbar set minecraft:teleport5 players @a[scores={AT.relChannTime=5}]
bossbar set minecraft:teleport6 players @a[scores={AT.relChannTime=6}]
bossbar set minecraft:teleport7 players @a[scores={AT.relChannTime=7}]
bossbar set minecraft:teleport8 players @a[scores={AT.relChannTime=8}]
bossbar set minecraft:teleport9 players @a[scores={AT.relChannTime=9}]
bossbar set minecraft:teleport10 players @a[scores={AT.relChannTime=10..}]