execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 1 run function dream:memory_story/final_boss1/skills/1_1/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 2 run function dream:memory_story/final_boss1/skills/1_2/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 3 run function dream:memory_story/final_boss1/skills/1_3/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 4 run function dream:memory_story/final_boss1/skills/1_4/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 5 run function dream:memory_story/final_boss1/skills/1_5/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 6 run function dream:memory_story/final_boss1/skills/1_7/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 7 run function dream:memory_story/final_boss1/skills/1_7/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 8 run function dream:memory_story/final_boss1/skills/1_8/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 9 run function dream:memory_story/final_boss1/skills/1_9/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 10 run function dream:memory_story/final_boss1/skills/1_10/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 11 run function dream:memory_story/final_boss1/skills/1_11/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 12 run function dream:memory_story/final_boss1/skills/1_12/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 13 run function dream:memory_story/final_boss1/skills/1_13/load
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 14 run function dream:memory_story/final_boss1/skills/1_14/load
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 15 run function dream:memory_story/final_boss1/skills/1_15/schedule
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 16 run function dream:memory_story/final_boss1/skills/2_4/tick
#TODO
tellraw @a [{"text": "[DreamOS.Defender/INFO]Current strategy is "},{"score":{"name": "@e[tag=dream_final_boss1,limit=1]","objective": "dream_counter"}}]