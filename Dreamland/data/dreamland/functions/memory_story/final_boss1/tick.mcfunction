#495 100 495
#总计时
execute if score $dream_finalskill_psummon_timer dream_timer matches -100.. run scoreboard players add $dream_finalskill_psummon_timer dream_timer 1
#技能计时器
execute if score dream_finalboss1_skilltimer dream_timer matches 0.. run function dreamland:memory_story/final_boss1/skill_timer
#开始boss战
execute if score $dream_finalskill_psummon_timer dream_timer matches 0 run function dreamland:memory_story/final_boss1/start
#玩家坐标追踪器
execute as @e[tag=dream_playerpos_tracker] at @s run function dreamland:memory_story/final_boss1/tracker_chase
#boss条计算
scoreboard players operation $dream_t_mbet_a dream_counter = C_3919 math_count
scoreboard players operation $dream_t_mbet_a dream_counter -= $dream_finalskill_psummon_timer dream_timer
execute store result bossbar dreamland:boss value run scoreboard players get $dream_t_mbet_a dream_counter
#技能tick
function dreamland:memory_story/final_boss1/skills/tick
#停止
execute if score $dream_finalskill_psummon_timer dream_timer matches 3920 run function dreamland:memory_story/final_boss1/end
execute if score $dream_finalskill_psummon_timer dream_timer matches 4300.. run function dreamland:memory_story/final_boss1/next