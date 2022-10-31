function dream:memory_story/final_boss2/skills/2_4/tick
#b-1    治疗立场
execute if entity @e
#b-2    物理扭曲立场
execute store result score dream_temp.mb.fb2.s.tick dream_counter if entity @e[tag=dream_cyst_green]
execute if score dream_temp.mb.fb2.s.tick dream_counter matches 3.. run function dream:memory_story/final_boss2/skills/b_2/tick
#b-3    魔法扭曲立场
execute store result score dream_temp.mb.fb2.s.tick dream_counter if entity @e[tag=dream_cyst_blue]
execute if score dream_temp.mb.fb2.s.tick dream_counter matches 3.. run function dream:memory_story/final_boss2/skills/b_3/tick
#b-4    数据崩坏
execute unless score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run function dream:memory_story/final_boss2/skills/b_4/load
#b-5    修复协议
execute unless score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run function dream:memory_story/final_boss2/skills/b_5/tick