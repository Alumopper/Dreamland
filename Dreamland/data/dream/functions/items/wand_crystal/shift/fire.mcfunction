effect give @s fire_resistance 20 0 true
execute as @e[type=#dream:enemy,distance=0..6] run data modify entity @s Fire set value 200
execute if entity @e[type=#dream:enemy,distance=5..50] run summon fireball ^ ^3 ^ {Tags:["dream_firecrystal_fireball"],ExplosionPower:3}
#速度
execute positioned ^ ^3 ^ run tag @e[distance=0,tag=dream_firecrystal_fireball] add math_vector_a
tag @e[distance=5..50,limit=1,sort=nearest,type=#dream:enemy] add math_vector_b
#vector3 Math.vector3.get_a_b(Entity<single> math_vector_a,Entity<single> math_vector_b)    返回从实体a坐标到实体b坐标的三维向量
function math:vector3/get_a_b
execute positioned ^ ^3 ^ store result entity @e[distance=0,tag=dream_firecrystal_fireball,limit=1] Motion[0] double 0.001 run scoreboard players get math_r_vector3_getab_x math_output
execute positioned ^ ^3 ^ store result entity @e[distance=0,tag=dream_firecrystal_fireball,limit=1] Motion[1] double 0.001 run scoreboard players get math_r_vector3_getab_y math_output
execute positioned ^ ^3 ^ store result entity @e[distance=0,tag=dream_firecrystal_fireball,limit=1] Motion[2] double 0.001 run scoreboard players get math_r_vector3_getab_z math_output
#消耗
scoreboard players remove @s[gamemode=!creative] dream_magic 30
scoreboard players set @s dream_wanduse_cd 0