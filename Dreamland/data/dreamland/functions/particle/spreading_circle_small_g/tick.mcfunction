execute if score @s dream_timer matches 1 run function dreamland:particle/spreading_circle_small_g/parts/1
execute if score @s dream_timer matches 2 run function dreamland:particle/spreading_circle_small_g/parts/2
execute if score @s dream_timer matches 3 run function dreamland:particle/spreading_circle_small_g/parts/3
execute if score @s dream_timer matches 4 run function dreamland:particle/spreading_circle_small_g/parts/4
execute if score @s dream_timer matches 5 run function dreamland:particle/spreading_circle_small_g/parts/5
execute if score @s dream_timer matches 6 run function dreamland:particle/spreading_circle_small_g/parts/6

scoreboard players add @s dream_timer 1
kill @s[scores={dream_timer=7..}]