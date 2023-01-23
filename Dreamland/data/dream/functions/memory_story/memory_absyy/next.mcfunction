#下一步
execute if score dream_t_b_fbossstage dream_counter matches 0 run function dream:memory_story/memory_absyy/each/0
execute if score dream_t_b_fbossstage dream_counter matches 1 run function dream:memory_story/memory_absyy/each/1
execute if score dream_t_b_fbossstage dream_counter matches 2 run function dream:memory_story/memory_absyy/each/2
#
execute if score dream_t_b_fbossstage dream_counter matches 3 as @p run function dream:memory_story/final_boss1/load
#递增
scoreboard players add dream_t_b_fbossstage dream_counter 1