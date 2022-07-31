playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 0.1
playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 0.1
particle minecraft:explosion ~ ~0.2 ~ 0.4 0.3 0.4 1 13

# just unlink
scoreboard players set @s AT.isConnected 0

# message
tellraw @a [{"translate":"§5A §dfast travel point §5has lost its destination!"}]
