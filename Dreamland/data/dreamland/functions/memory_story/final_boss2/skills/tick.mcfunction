#2-4    溺尸
function dreamland:memory_story/final_boss2/skills/2_4/tick
execute as @e[type=drowned] at @s facing entity @e[tag=dream_playerpos_tracker] eyes run tp @s ^ ^ ^0.1 
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 at @e[type=drowned] run effect give @a[distance=0..2] regeneration 1 2
#2-5    治疗炸弹
function dreamland:memory_story/final_boss2/skills/2_5/tick
#2-6    冲刺
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 if score dream_m_f_s_2_6_temp.timer dream_timer matches 0.. run function dreamland:memory_story/final_boss2/skills/2_6/tick
#b-1    治疗立场
execute as @e[tag=entity.dreamland.finalboss2] at @s run function dreamland:memory_story/final_boss2/skills/b_1/tick
#b-2    物理扭曲立场
execute store result score dream_temp.mb.fb2.s.tick_hcnum dream_counter if entity @e[tag=entity.dreamland.healing_crystal.green]
execute if score dream_temp.mb.fb2.s.tick dream_counter matches 3.. run function dreamland:memory_story/final_boss2/skills/b_2/tick
#b-3    魔法扭曲立场
execute store result score dream_temp.mb.fb2.s.tick_hcnum dream_counter if entity @e[tag=entity.dreamland.healing_crystal.blue]
execute if score dream_temp.mb.fb2.s.tick dream_counter matches 3.. run function dreamland:memory_story/final_boss2/skills/b_3/tick
#b-4    数据崩坏
execute unless score dream_temp.ma.fb2_temp.stage dream_counter matches 1 if score dream_finalbosshealth dream_boss_hp matches ..75 run function dreamland:memory_story/final_boss2/skills/b_4/load
#b-5    修复协议-α
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run function dreamland:memory_story/final_boss2/skills/b_5/tick
#b-6    濒死护盾
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run function dreamland:memory_story/final_boss2/skills/b_6/tick
#b-7    修复协议-β
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 if score dream_finalbosshealth dream_boss_hp matches ..30 run function dreamland:memory_story/final_boss2/skills/b_7/tick