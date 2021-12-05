tag @a remove subt_dreamland_end_tag
tag @a remove subt_watching
scoreboard players set subt_dreamland_end subt_timer -1
kill @e[tag=subt_line, type=armor_stand]
#梦境数据包衔接部分
execute in dream:the_edge_of_dream run fill 3 220 -20 3 180 20 air
tp @a @e[tag=dream_returnpoint,limit=1]
execute at @e[tag=dream_returnpoint] run spawnpoint @a ~ ~ ~
advancement grant @a only dream:beta/back_to_overworld