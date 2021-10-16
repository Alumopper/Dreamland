#管理部分tick函数的运行，避免每tick运行命令过多
execute if entity @e[tag=dream_db] run function dream:tower/tick
execute if entity @e[tag=dream_beacon] run function dream:beacon/tick
execute if entity @e[tag=dream_creative] run function dream:creative/tick
execute if entity @e[tag=dream_portal] run function dream:dream_portal/tick
execute in dream:choas positioned 0 180 0 if entity @a[distance=0..200] run function dream:structure/black_hole/tick