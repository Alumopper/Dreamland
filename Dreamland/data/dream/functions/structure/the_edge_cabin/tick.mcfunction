execute at @e[tag=dream_marine] if entity @a[distance=0..2] unless score dream_tec_story dream_timer matches -1.. run scoreboard players set dream_tec_story dream_timer 0
execute as @e[tag=dream_marine] at @s run tp @s ~ ~ ~ facing entity @p
#梦之边境剧情
execute if score dream_tec_story dream_timer matches 0.. run scoreboard players add dream_tec_story dream_timer 1
execute if score dream_tec_story dream_timer matches 0.. run function dream:structure/the_edge_cabin/story
execute if score dream_tec_story dream_timer matches 760 run function dream:structure/the_edge_cabin/exit
execute if score dream_tec_story dream_timer matches 760 run scoreboard players set dream_tec_story dream_timer -1