schedule clear #dream:skill_sche
scoreboard players add @e[tag=dream_final_boss1,limit=1] dream_counter 1
execute if predicate dream:1_in_2 run scoreboard players add @e[tag=dream_final_boss1,limit=1] dream_counter 1
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 16 run function dream:memory_story/final_boss1/skills/2_5/load
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 16 run function dream:memory_story/final_boss1/skills/1_6/load
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 17.. run scoreboard players set @e[tag=dream_final_boss1,limit=1] dream_counter 0