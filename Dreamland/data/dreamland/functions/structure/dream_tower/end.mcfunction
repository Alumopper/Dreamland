#清空Bossbar
bossbar set dreamland:boss visible false
#重置技能cd
scoreboard players set dream_boss1_skillcd1 dream_timer -1
#恢复难度
execute if score dream_temp_difficulty dream_counter matches 0 run difficulty peaceful
#如果杀死了boss
execute unless score dream_if_kill_boss1 dream_counter matches 0 run scoreboard players set dream_gamestage dream_counter 2
execute if entity @a[tag=dream_fighting_boss1] unless score dream_if_kill_boss1 dream_counter matches 0 run scoreboard players set dream_dreamtowerboss_pre dream_timer 471
scoreboard players set dream_if_kill_boss1 dream_counter 1
execute in dreamland:sweetdream run fill 12 249 12 -12 241 -12 light_blue_stained_glass replace purple_stained_glass
gamemode survival @a[gamemode=adventure]
tag @a remove dream_fighting_boss1
execute if score dream_if_kill_boss1 dream_counter matches 0 run scoreboard players set dream_dreamtowerboss_pre dream_timer -2
kill @e[type=wither_skeleton,predicate=dreamland:if_entity/in_sweetdream]
kill @e[tag=entity.dreamland.dream_boss1.model]