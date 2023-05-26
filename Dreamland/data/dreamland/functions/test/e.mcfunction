summon marker ~ ~ ~ {Tags:["temp"]}
#假设坐标存在test中，三个方向分别为pos_x,pos_y,pos_z
execute store result entity @e[tag=temp,limit=1] Pos[0] double 1.0 run scoreboard players get pos_x test
execute store result entity @e[tag=temp,limit=1] Pos[1] double 1.0 run scoreboard players get pos_y test
execute store result entity @e[tag=temp,limit=1] Pos[2] double 1.0 run scoreboard players get pos_z test
#传送
tp @s @e[tag=temp,limit=1]
#删除
kill @e[tag=temp]


