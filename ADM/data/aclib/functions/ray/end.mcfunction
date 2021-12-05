#射线终点
kill @e[tag=aclib_var_rayEndPos]
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Radius:0.0f,Tags:["aclib_var_rayEndPos"]}
#重置默认值（默认为检测实体和方块）
scoreboard players set $aclib_var_raymode aclib_var 1
scoreboard players set aclib_temp_ray1 aclib_temp 1
tag @e remove aclib_var_self