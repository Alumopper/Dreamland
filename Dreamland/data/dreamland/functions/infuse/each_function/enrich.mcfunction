#富集
#检测周围沙砾数量
execute store result score dream_temp_inf_ech_enrich dream_counter run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace gravel
scoreboard players operation dream_temp_inf_ech_enrich dream_counter -= C_27 math_count
function math:rand/rand
execute if score rand_output math_output >= dream_temp_inf_ech_enrich dream_counter as @e[nbt={Item:{tag:{dreamland:{isTemp:1b}}}}] at @s run loot spawn ~ ~ ~ loot dreamland:others/flint