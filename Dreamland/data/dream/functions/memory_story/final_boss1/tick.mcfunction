#495 100 495
execute if score $dream_finalskill_psummon_timer dream_timer matches -100.. run scoreboard players add $dream_finalskill_psummon_timer dream_timer 1
#技能计时器
execute if score $dream_finalskill_psummon_timer dream_timer matches -100.. run function dream:memory_story/final_boss1/timer
#玩家坐标追踪器
execute as @e[tag=dream_playerpos_tracker] at @s run function dream:memory_story/final_boss1/tracker_chase
#boss条计算
scoreboard players operation $dream_t_mbet_a dream_counter = C_3919 math_count
scoreboard players operation $dream_t_mbet_a dream_counter -= $dream_finalskill_psummon_timer dream_timer
execute store result bossbar dream:boss value run scoreboard players get $dream_t_mbet_a dream_counter
#技能tick
function dream:memory_story/final_boss1/skills/tick