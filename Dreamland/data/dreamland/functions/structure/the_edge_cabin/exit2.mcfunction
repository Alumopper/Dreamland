effect give @a blindness 2 0 true
execute at @a run tp @a 0 200 0 -90 0
execute in dreamland:the_edge_of_dream run fill 3 220 -20 3 180 20 black_concrete
execute at @a run setblock ~ ~-1 ~ barrier
time set day
#回到主世界
execute in dreamland:the_edge_of_dream run fill 3 220 -20 3 180 20 air
tp @a @e[tag=dream_returnpoint,limit=1]
execute at @e[tag=dream_returnpoint] run spawnpoint @a ~ ~ ~
advancement grant @a only dreamland:beta/back_to_overworld
scoreboard players set dream_gamestage dream_counter 4 