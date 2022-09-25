# default
execute as @a unless score @s AT.moreParticles matches 0.. run scoreboard players set @s AT.moreParticles 1

# reset trigger
scoreboard players enable @a AT.moreParticles

# loop
schedule function amethysttravelling:trigger/particle_setting 1s