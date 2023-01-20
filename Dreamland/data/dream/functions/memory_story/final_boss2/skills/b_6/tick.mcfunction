#检测治疗水晶的数量
execute store result score dream_temp.mb.fb2.s.b6_hcnum dream_counter if entity @e[tag=entity.dream.healing_crystal]
#
execute if score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 if score dream_temp.mb.fb2.s.b6_hcnum dream_counter matches 6.. run function dream:memory_story/final_boss2/skills/b_6/refresh
#
execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 if score dream_temp.mb.fb2.s.b6_hcnum dream_counter matches 6.. run function dream:memory_story/final_boss2/skills/b_6/add
#region 功能
    #法抗
    execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dream.finalboss2] as @e[distance=0..3,tag=entity.dream.magicball.pure] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 4
    execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dream.finalboss2] as @e[distance=0..3,tag=entity.dream.magicball.end] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 4
    execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dream.finalboss2] as @e[distance=0..3,tag=entity.dream.magicball.chaos] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 8
    execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dream.finalboss2] run kill @e[tag=entity.dream.magicball,distance=0..3]
    #物抗
    execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dream.finalboss2] as @e[distance=0..3,type=arrow] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 2
    execute unless score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0 at @e[tag=entity.dream.finalboss2] run kill @e[type=arrow,distance=0..2]
#endregion
#bossbar
execute if score dream_temp.mb.fb2.s.b6_hassheild dream_counter matches 0.. store result bossbar dream:boss_sheild value run scoreboard players get dream_finalboss_shieldhp dream_boss_hp
#护盾消失
execute if score dream_finalboss_shieldhp dream_boss_hp matches ..0 run function dream:memory_story/final_boss2/skills/b_6/break