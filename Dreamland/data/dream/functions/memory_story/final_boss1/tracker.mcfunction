#生成坐标追踪器
summon marker ~ ~ ~ {Tags:["dream_playerpos_tracker"]}
scoreboard players operation @e[distance=0..0.1,tag=dream_playerpos_tracker,limit=1] dream_counter = @s dream_playerno