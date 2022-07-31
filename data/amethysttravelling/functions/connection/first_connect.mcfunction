clear @s #amethysttravelling:magical_item 1
playsound minecraft:item.lodestone_compass.lock block @a ~ ~1 ~ 2 1.6

# store taget in player
execute store result score @s AT.targetId run scoreboard players get @e[tag=TpPlatform,sort=nearest,limit=1] AT.id

# set connecting
scoreboard players set @s AT.isConnecting 1
scoreboard players set @e[tag=TpPlatform,distance=..1.5,sort=nearest,limit=1] AT.isConnecting 1

# block
scoreboard players set @s AT.blocked 1

# message
tellraw @s [{"translate":"§5You have selected the first §dfast travel point§5!"}]
