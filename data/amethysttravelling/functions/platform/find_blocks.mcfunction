# test blocks
scoreboard players set @s AT.findBlock 0
execute if block ~1 ~-1 ~1 #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~1 ~-1 ~ #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~1 ~-1 ~-1 #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~ ~-1 ~1 #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~ ~-1 ~ #amethysttravelling:condenser run scoreboard players add @s AT.findBlock 1
execute if block ~ ~-1 ~-1 #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~-1 ~-1 ~1 #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~-1 ~-1 ~ #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
execute if block ~-1 ~-1 ~-1 #amethysttravelling:magical_block run scoreboard players add @s AT.findBlock 1
