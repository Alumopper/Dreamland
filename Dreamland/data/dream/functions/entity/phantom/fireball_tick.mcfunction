scoreboard players add @s dream_timer 1
execute if score @s dream_timer matches ..200 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #dream:fireball_destory
execute if score @s dream_timer matches 250.. run kill @s
