#清空Bossbar
bossbar set dream:boss visible false
#重置技能cd
scoreboard players set dream_boss1_skillcd1 dream_timer -1
execute unless score dream_if_kill_boss1 dream_counter matches 0 run scoreboard players set dream_gamestage dream_counter 2
execute if entity @a[tag=dream_fighting_boss1] unless score dream_if_kill_boss1 dream_counter matches 0 run scoreboard players set dream_dreamtowerboss_pre dream_timer 151
scoreboard players set dream_if_kill_boss1 dream_counter 1
execute in dream:sweetdream run fill 12 184 12 -12 176 -12 light_blue_stained_glass replace purple_stained_glass
gamemode survival @a[gamemode=adventure]
tag @a remove dream_fighting_boss1