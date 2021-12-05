effect give @a blindness 2 0 true
execute at @a run tp @a 0 200 0 -90 0
execute in dream:the_edge_of_dream run fill 3 220 -20 3 180 20 black_concrete
execute at @a run setblock ~ ~-1 ~ barrier
time set day
execute as @a at @a run function subtitle:subtitles/dreamland_end/start
scoreboard players set dream_gamestage dream_counter 4 