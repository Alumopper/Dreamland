#瞄准过程
execute if score dream_m_f_s_2_6_temp.timer dream_timer matches 0..60 as @p at @e[tag=dream_finalboss2_skill2_6_target] run particle minecraft:shriek 1 ~ ~ ~
#冲刺
execute if score dream_m_f_s_2_6_temp.timer dream_timer matches 60 at @e[tag=entity.dreamland.finalboss2] as @e[tag=dream_finalboss2_skill2_6_target] facing entity @s eyes run function dreamland:memory_story/final_boss2/skills/2_6/line
execute if score dream_m_f_s_2_6_temp.timer dream_timer matches 120.. run function dreamland:memory_story/final_boss2/skills/2_6/reset
#计时
execute if score dream_m_f_s_2_6_temp.timer dream_timer matches 0.. run scoreboard players add dream_m_f_s_2_6_temp.timer dream_timer 1