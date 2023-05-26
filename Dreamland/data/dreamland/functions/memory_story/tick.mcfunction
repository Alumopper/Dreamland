execute if score dream_finalstorystage dream_counter matches 0 run function dreamland:memory_story/spacestation/tick
execute if score dream_finalstorystage dream_counter matches 1 run function dreamland:memory_story/slab/story
execute if score dream_t_b_fbossstage dream_counter matches 1..3 run function dreamland:memory_story/memory_absyy/tick
execute if score dream_finalstorystage dream_counter matches 2 run function dreamland:memory_story/final_boss1/tick
execute if score dream_finalstorystage dream_counter matches 3 run function dreamland:memory_story/final_boss2/tick
execute if score dream_finalstorystage dream_counter matches 4 run function dreamland:memory_story/system/tick