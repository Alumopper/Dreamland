#放出射线
scoreboard players set aclib_temp_ray1 aclib_temp 1
execute if score $aclib_var_raymode aclib_var matches 0..1 unless block ~ ~ ~ air run scoreboard players set aclib_temp_ray1 aclib_temp 0
execute if score $aclib_var_raymode aclib_var matches 1..2 if entity @e[distance=0..0.3,tag=!aclib_var_self] run scoreboard players set aclib_temp_ray1 aclib_temp 0
execute if score aclib_temp_ray1 aclib_temp matches 1 if entity @e[tag=aclib_var_self,distance=0..100] rotated as @s positioned ^ ^ ^0.1 run function aclib:ray/ray
execute if score aclib_temp_ray1 aclib_temp matches 0 run function aclib:ray/end