#护盾存在判定
execute if score entity.dream.finalboss2_sheildpower dream_timer matches ..0 unless entity @e[tag=entity.dream.healing_crystal] run function dreamland:memory_story/final_boss2/skills/b_1/break
#护盾存在的效果
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 0 if score entity.dream.finalboss2_hassheild dream_counter matches 1 run function dreamland:memory_story/final_boss2/skills/b_1/func
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 if score entity.dream.finalboss2_hassheild dream_counter matches 1 run function dreamland:memory_story/final_boss2/skills/b_1/func
#护盾破坏
#> @see dreamland:entity/healing_crystal/kill.mcfunction