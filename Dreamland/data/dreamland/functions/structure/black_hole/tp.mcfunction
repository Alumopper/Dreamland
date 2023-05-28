#将玩家传送到终末之梦
execute in dreamland:the_end_of_dream positioned 0 70 0 run spreadplayers ~ ~ 30 5 true @s
#强制进入获得抗性提升效果
effect give @s[tag=predicate.dreamland.break_into_blackhole] minecraft:resistance infinite 1 true
#出生点设置
execute if score dream_world_collapse dream_timer matches 240000.. in dreamland:the_end_of_dream positioned 50 70 50 run spawnpoint @s ~ ~ ~
#召唤梦魇
execute in dreamland:the_end_of_dream run function dreamland:entity/nightmare/load