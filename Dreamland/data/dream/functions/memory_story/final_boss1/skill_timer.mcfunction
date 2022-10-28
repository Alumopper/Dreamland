#> dream:memory_story/final_boss1/skill_timer
scoreboard players add dream_finalboss1_skilltimer dream_timer 1
# 控制技能结束和冷却以及循环释放技能
execute if score dream_finalboss1_skilltimer dream_timer matches 300 run function dream:memory_story/final_boss1/skills/end
execute if score dream_finalboss1_skilltimer dream_timer matches 450 run function dream:memory_story/final_boss1/skills/do
execute if score dream_finalboss1_skilltimer dream_timer matches 450 run scoreboard players set dream_finalboss1_skilltimer dream_timer 0 
