#护盾存在判定
execute if score dream_finalboss2_sheildpower dream_timer matches ..0 unless entity @e[tag=dream_healing_crystal] run function dream:memory_story/final_boss2/skills/b_1/break
#护盾存在的效果
execute if score dream_finalboss2_hassheild dream_counter matches 1 run function dream:memory_story/final_boss2/skills/b_1/func