#region schedule clear
schedule clear dreamland:memory_story/final_boss1/skills/1_1/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_2/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_3/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_4/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_5/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_7/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_7/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_8/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_9/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_10/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_11/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_12/schedule
schedule clear dreamland:memory_story/final_boss1/skills/1_15/schedule
#endregion
scoreboard players add @e[tag=dream_final_boss1,limit=1] dream_counter 1
execute if predicate dreamland:1_in_2 run scoreboard players add @e[tag=dream_final_boss1,limit=1] dream_counter 1
execute if predicate dreamland:1_in_2 run scoreboard players add @e[tag=dream_final_boss1,limit=1] dream_counter 1
execute if predicate dreamland:1_in_2 run scoreboard players add @e[tag=dream_final_boss1,limit=1] dream_counter 1
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 16 run function dreamland:memory_story/final_boss1/skills/2_5/load
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 16 run function dreamland:memory_story/final_boss1/skills/1_6/load
execute if score @e[tag=dream_final_boss1,limit=1] dream_counter matches 17.. run scoreboard players set @e[tag=dream_final_boss1,limit=1] dream_counter 0