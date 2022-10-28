tag @s add dream_curr
execute store result score $dream_t_f_tc_no dream_counter run scoreboard players get @s dream_counter
execute as @a[distance=0..4] if score @s dream_playerno = $dream_t_f_tc_no dream_counter facing entity @s eyes run tp @e[tag=dream_curr] ^ ^ ^0.1
execute as @a[distance=4..] if score @s dream_playerno = $dream_t_f_tc_no dream_counter facing entity @s eyes run tp @e[tag=dream_curr] ^ ^ ^0.4
tag @s remove dream_curr