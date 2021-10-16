#十位数
function math:rand/rand
scoreboard players operation @s dream_bxmingming = rand_output math_output
scoreboard players operation @s dream_bxmingming *= C_10 math_count
kill @e[tag=Math_temp_rand]