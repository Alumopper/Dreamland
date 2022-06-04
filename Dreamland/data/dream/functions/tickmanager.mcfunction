#管理部分tick函数的运行，避免每tick运行命令过多
execute if entity @e[tag=dream_db] run function dream:tower/tick
execute if entity @e[tag=dream_beacon] run function dream:beacon/tick
execute if entity @e[tag=dream_creative] run function dream:creative/tick
execute if entity @e[tag=dream_portal] run function dream:dream_portal/tick
execute if score dream_gamestage dream_counter matches 0 run function dream:biome/nightmare/orginal_point
execute if score dream_gamestage dream_counter matches 1 run function dream:biome/nightmare/orginal_point
execute if score dream_gamestage dream_counter matches -1 run function dream:entity/dark_illusioner/tick
execute if score dream_finalstotystage dream_counter matches 0.. run function dream:memory_story/tick
