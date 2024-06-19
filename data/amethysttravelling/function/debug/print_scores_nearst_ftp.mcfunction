execute unless entity @e[tag=fast_travel_point] run tellraw @p ["",{"text":"§4No platform found"}]
execute if entity @e[tag=fast_travel_point] run tellraw @p ["",{"text":"§a=== Scoreboards of nearst platform ==="}]
execute as @e[tag=fast_travel_point,sort=nearest,limit=1] run function amethysttravelling:debug/format/print_full_scores_ftp
