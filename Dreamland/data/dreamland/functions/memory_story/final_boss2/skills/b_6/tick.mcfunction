#检测治疗水晶的数量
execute store result score dream_temp.mb.fb2.s.b6_hcnum dream_counter if entity @e[tag=entity.dreamland.healing_crystal]
#
execute if score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 if score dream_temp.mb.fb2.s.b6_hcnum dream_counter matches 8.. run function dreamland:memory_story/final_boss2/skills/b_6/refresh
#
execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 if score dream_temp.mb.fb2.s.b6_hcnum dream_counter matches 8.. run function dreamland:memory_story/final_boss2/skills/b_6/add
#功能
execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dreamland.finalboss2] run function dreamland:memory_story/final_boss2/skills/b_6/function
#bossbar
execute if score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0.. store result bossbar dreamland:boss_sheild value run scoreboard players get dream_finalboss_shieldhp dream_boss_hp
#护盾消失
execute if score dream_finalboss_shieldhp dream_boss_hp matches ..0 run function dreamland:memory_story/final_boss2/skills/b_6/break