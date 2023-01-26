#将玩家传送到终末之梦
execute as @a[distance=0..4] in dream:the_end_of_dream positioned 0 70 0 run spreadplayers ~ ~ 30 5 true @s
#出生点设置
execute if score dream_world_collapse dream_timer matches 240000.. in dream:the_end_of_dream positioned 50 70 50 run spawnpoint @a ~ ~ ~
#召唤梦魇
execute in dream:the_end_of_dream run function dream:entity/nightmare/load