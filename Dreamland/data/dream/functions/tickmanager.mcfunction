#管理部分tick函数的运行，避免每tick运行命令过多
execute if entity @e[tag=dream_db] run function dream:tower/tick
execute if entity @e[tag=dream_beacon] run function dream:beacon/tick
execute at @e[tag=dream_creative] if entity @a[distance=0..5] run function dream:creative/tick
execute if entity @e[tag=dream_portal] run function dream:dream_portal/tick
execute if score dream_gamestage dream_counter matches 0 run function dream:biome/nightmare/orginal_point
execute if score dream_gamestage dream_counter matches -1 run function dream:entity/dark_illusioner/tick
execute if score dream_finalstotystage dream_counter matches 0.. run function dream:memory_story/tick
#混沌世界
execute unless score dream_finalstotystage dream_counter matches 0.. if score dream_gamestage dream_counter matches 3 run function dream:choas/tick
