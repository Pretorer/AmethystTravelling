# test build
scoreboard players set @a AT.findTp 0
execute as @a at @s if block ~1 ~-1 ~1 #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~1 ~-1 ~ #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~1 ~-1 ~-1 #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~ ~-1 ~1 #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~ ~-1 ~ #condenser run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~ ~-1 ~-1 #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~-1 ~-1 ~1 #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~-1 ~-1 ~ #magical_block run scoreboard players add @s AT.findTp 1
execute as @a at @s if block ~-1 ~-1 ~-1 #magical_block run scoreboard players add @s AT.findTp 1

# create armor_stand
execute as @a at @s align xyz positioned ~0.5 ~ ~0.5 if entity @s[scores={AT.findTp=9}] unless entity @e[tag=TpPlatform,distance=..1.5] run function teleporter:platform/create

# loop
schedule function teleporter:platform/find_blocks 1s