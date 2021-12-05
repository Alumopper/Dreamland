summon fireball ~ ~-2 ~ {ExplosionPower:3,Tags:[dream_phantom_fireball]}
#速度
execute positioned ~ ~-2 ~ run tag @e[distance=0,tag=dream_phantom_fireball] add math_vector_a
tag @p add math_vector_b
function math:vector3/get_a_b
    #vector3 Math.vector3.get_a_b(Entity<single> math_vector_a,Entity<single> math_vector_b)
execute positioned ~ ~-2 ~ store result entity @e[distance=0,tag=dream_phantom_fireball,limit=1] Motion[0] double 0.001 run scoreboard players get math_r_vector3_getab_x math_output
execute positioned ~ ~-2 ~ store result entity @e[distance=0,tag=dream_phantom_fireball,limit=1] Motion[1] double 0.001 run scoreboard players get math_r_vector3_getab_y math_output
execute positioned ~ ~-2 ~ store result entity @e[distance=0,tag=dream_phantom_fireball,limit=1] Motion[2] double 0.001 run scoreboard players get math_r_vector3_getab_z math_output
#自杀
kill @s