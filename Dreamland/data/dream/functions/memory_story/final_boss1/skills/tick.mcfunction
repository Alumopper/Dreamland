function dream:memory_story/final_boss1/skills/0_1/tick
function dream:memory_story/final_boss1/skills/0_2/tick
function dream:memory_story/final_boss1/skills/1_1/tick
function dream:memory_story/final_boss1/skills/1_2/tick
function dream:memory_story/final_boss1/skills/1_11/tick
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 16 run function dream:memory_story/final_boss1/skills/2_4/tick
execute if score $dream_finalskill_psummon_timer dream_timer matches 2420 run function dream:memory_story/final_boss1/skills/1_17/load
execute if score $dream_finalskill_psummon_timer dream_timer matches 2510 run function dream:memory_story/final_boss1/skills/1_17/load
execute if score $dream_finalskill_psummon_timer dream_timer matches 2640 run function dream:memory_story/final_boss1/skills/1_17/load