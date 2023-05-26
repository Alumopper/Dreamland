#开始计时
scoreboard players set dream_m_f_s_2_6_temp.timer dream_timer 0
#定位器
execute as @e[tag=dream_playerpos_tracker,limit=1] at @s run summon marker ~ ~ ~ {Tags:["dream_finalboss2_skill2_6_target"]}
#停止镜像移动
scoreboard players set dream_finalboss_mirror_on dream_counter 0
#技能计时
schedule function dreamland:memory_story/final_boss2/skills/schedule 9s