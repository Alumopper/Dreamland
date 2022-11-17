#检测治疗水晶的数量
execute store result score dream_temp.mb.fb2.s.b6_hcnum dream_counter if entity @e[tag=entity.dream.healing_crystal]
#
execute if score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 if score dream_temp.mb.fb2.s.b6_hcnum dream_counter matches 6.. run function dream:memory_story/final_boss2/skills/b_6/refresh
#region 功能
    #法抗
    execute if entity @e[distance=0..3,tag=entity.dream.magicball.pure] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 4
    execute if entity @e[distance=0..3,tag=entity.dream.magicball.end] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 4
    execute if entity @e[distance=0..3,tag=entity.dream.magicball.chaos] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 8
#endregion
#护盾消失
execute if score dream_finalboss_shieldhp dream_boss_hp matches ..0 run function dream:memory_story/final_boss2/skills/b_6/break