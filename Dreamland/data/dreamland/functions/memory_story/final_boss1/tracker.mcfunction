#生成坐标追踪器
#>
# 玩家跟踪器
#@within dreamland:memory_story/final_boss1/**
#declare tag dream_playerpos_tracker
summon marker ~ ~ ~ {Tags:["dream_playerpos_tracker"]}
scoreboard players operation @e[distance=0..0.1,tag=dream_playerpos_tracker,limit=1] dream_counter = @s dream_playerno