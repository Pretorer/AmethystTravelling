execute unless entity @e[tag=fast_travel_point] run tellraw @p ["",{"text":"§4No platforms found"}]
execute if entity @e[tag=fast_travel_point] run tellraw @p ["",{"text":"§a====== Scoreboards of platforms ======"}]      
execute as @e[tag=fast_travel_point] run function amethysttravelling:debug/format/print_less_scores_ftp
