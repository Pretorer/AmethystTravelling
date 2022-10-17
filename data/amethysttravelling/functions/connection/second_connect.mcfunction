clear @s #amethysttravelling:magical_item 1
playsound minecraft:item.lodestone_compass.lock block @a ~ ~1 ~ 2 1.6

# link second platform
scoreboard players operation @e[tag=fast_travel_point,sort=nearest,limit=1] AT.targetId = @s AT.targetId
scoreboard players set @e[tag=fast_travel_point,sort=nearest,limit=1] AT.isConnecting 0
scoreboard players set @e[tag=fast_travel_point,sort=nearest,limit=1] AT.isConnected 1

# link first platform
scoreboard players operation var AT.id = @e[tag=fast_travel_point,sort=nearest,limit=1] AT.id
scoreboard players operation var AT.targetId = @e[tag=fast_travel_point,sort=nearest,limit=1] AT.targetId
execute as @e[tag=fast_travel_point] if score @s AT.id = var AT.targetId run scoreboard players operation @s AT.targetId = var AT.id
execute as @e[tag=fast_travel_point] if score @s AT.id = var AT.targetId run scoreboard players set @s AT.isConnecting 0
execute as @e[tag=fast_travel_point] if score @s AT.id = var AT.targetId run scoreboard players set @s AT.isConnected 1

# block
scoreboard players set @s AT.blocked 1

# give advancement
advancement grant @s only amethysttravelling:connect

# reset player
scoreboard players set @s AT.isConnecting 0
scoreboard players set @s AT.targetId 0

# message
tellraw @a [{"translate":"%1$s §5has connected two §dfast travel points§5!","with":[{"selector":"@p","color":"dark_purple"}]}]