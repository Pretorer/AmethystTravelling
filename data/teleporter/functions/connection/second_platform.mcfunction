# remove item, playsound, link platforms, reset isConnecting and set isConnected
execute as @a[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}},scores={AT.isConnecting=1,AT.blocked=0}] at @s if entity @e[tag=TpPlatform,scores={AT.isConnecting=0,AT.isConnected=0},distance=..1.5] run function teleporter:connection/second_connect 

#loop
schedule function teleporter:connection/first_platform 1s