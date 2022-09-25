# prepare channelling
execute as @a run scoreboard players operation @s AT.relChannTime = @s AT.channelTime
execute as @a[scores={AT.channelTime=1..}] run scoreboard players operation @s AT.relChannTime *= 10 AT.constants
execute as @a[scores={AT.channelTime=1..}] at @s run scoreboard players operation @s AT.relChannTime /= @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.channelTime

# workaround for platforms with zero channeling time
execute as @a[scores={AT.channelTime=0}] at @s if entity @e[tag=fast_travel_point,distance=..1.5,sort=nearest,scores={AT.channelTime=0}] run scoreboard players set @s AT.relChannTime 10

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

# init particle option
execute as @a unless score @s AT.lessParticles matches 0.. run scoreboard players set @s AT.lessParticles 0

# channelling particle by player
execute at @a[scores={AT.relChannTime=1..}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 6 normal @a[scores={AT.lessParticles=1}]
execute at @a[scores={AT.relChannTime=1}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 4 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=2}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 8 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=3}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 16 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=4}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 32 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=5}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 64 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=6}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 128 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=7}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 256 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=8}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 512 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=9}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 1024 normal @a[scores={AT.lessParticles=0}]
execute at @a[scores={AT.relChannTime=10}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 2048 normal @a[scores={AT.lessParticles=0}]

# channelling particle by destination
execute as @e[tag=fast_travel_point] at @s unless entity @p[distance=..1.5,scores={AT.channelTime=0..}] run scoreboard players set @s AT.relChannTime 0
execute as @a at @s if score @s AT.relChannTime > @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.relChannTime run scoreboard players operation @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.relChannTime = @s AT.relChannTime
execute at @a[scores={AT.channelTime=0..}] as @e[tag=fast_travel_point] if score @s AT.id = @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.targetId run scoreboard players operation @s AT.relChannTime = @e[tag=fast_travel_point,distance=..1.5,sort=nearest,limit=1] AT.relChannTime
execute as @e[tag=fast_travel_point] at @s if entity @p[distance=..1.5,scores={AT.channelTime=0..}] run scoreboard players set @s AT.relChannTime 0

execute at @e[tag=fast_travel_point,scores={AT.relChannTime=1..}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 6 normal @a[scores={AT.lessParticles=1}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=1}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 4 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=2}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 8 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=3}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 16 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=4}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 32 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=5}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 64 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=6}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 128 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=7}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 256 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=8}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 512 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=9}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 1024 normal @a[scores={AT.lessParticles=0}]
execute at @e[tag=fast_travel_point,scores={AT.relChannTime=10}] run particle minecraft:enchant ~ ~0.4 ~ 0.3 0.9 0.3 0.5 2048 normal @a[scores={AT.lessParticles=0}]

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