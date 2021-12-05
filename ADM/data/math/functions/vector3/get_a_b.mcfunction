#获取从实体math_vector_a到math_vector_b的三维向量
#vector3 Math.vector3.get_a_b(Entity<s> math_vector_a,Entity<s> math_vector_b)
#获取a坐标
execute store result score math_temp_vector3_getab_ax math_temp run data get entity @e[limit=1,tag=math_vector_a] Pos[0] 100
execute store result score math_temp_vector3_getab_ay math_temp run data get entity @e[limit=1,tag=math_vector_a] Pos[1] 100
execute store result score math_temp_vector3_getab_az math_temp run data get entity @e[limit=1,tag=math_vector_a] Pos[2] 100
#获取b坐标
execute store result score math_temp_vector3_getab_bx math_temp run data get entity @e[limit=1,tag=math_vector_b] Pos[0] 100
execute store result score math_temp_vector3_getab_by math_temp run data get entity @e[limit=1,tag=math_vector_b] Pos[1] 100
execute store result score math_temp_vector3_getab_bz math_temp run data get entity @e[limit=1,tag=math_vector_b] Pos[2] 100
#获取向量
#define score_holder math_r_vector3_getab_x
scoreboard players set math_r_vector3_getab_x math_output 0
#define score_holder math_r_vector3_getab_y
scoreboard players set math_r_vector3_getab_y math_output 0
#define score_holder math_r_vector3_getab_z
scoreboard players set math_r_vector3_getab_z math_output 0

scoreboard players operation math_r_vector3_getab_x math_output = math_temp_vector3_getab_bx math_temp
scoreboard players operation math_r_vector3_getab_y math_output = math_temp_vector3_getab_by math_temp
scoreboard players operation math_r_vector3_getab_z math_output = math_temp_vector3_getab_bz math_temp

scoreboard players operation math_r_vector3_getab_x math_output -= math_temp_vector3_getab_ax math_temp
scoreboard players operation math_r_vector3_getab_y math_output -= math_temp_vector3_getab_ay math_temp
scoreboard players operation math_r_vector3_getab_z math_output -= math_temp_vector3_getab_az math_temp

#移除实体的标记
tag @e remove math_vector_a
tag @e remove math_vector_b