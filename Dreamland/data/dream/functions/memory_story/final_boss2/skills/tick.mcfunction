function dream:memory_story/final_boss2/skills/2_4/tick
#b-1    治疗立场
execute as @e[tag=dream_finalboss2] at @s run function dream:memory_story/final_boss2/skills/b_1/tick
#b-2    物理扭曲立场
execute store result score dream_temp.mb.fb2.s.tick_hcnum dream_counter if entity @e[tag=dream_cyst_green]
execute if score dream_temp.mb.fb2.s.tick dream_counter matches 3.. run function dream:memory_story/final_boss2/skills/b_2/tick
#b-3    魔法扭曲立场
execute store result score dream_temp.mb.fb2.s.tick_hcnum dream_counter if entity @e[tag=dream_cyst_blue]
execute if score dream_temp.mb.fb2.s.tick dream_counter matches 3.. run function dream:memory_story/final_boss2/skills/b_3/tick
#b-4    数据崩坏
execute unless score dream_temp.ma.fb2_temp.stage dream_counter matches 1 if score dream_finalbosshealth dream_boss_hp matches ..75 run function dream:memory_story/final_boss2/skills/b_4/load
#b-5    修复协议
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run function dream:memory_story/final_boss2/skills/b_5/tick
#b-5    濒死护盾
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run function dream:memory_story/final_boss2/skills/b_6/tick