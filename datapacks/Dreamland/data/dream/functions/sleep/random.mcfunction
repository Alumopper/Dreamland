#十位数
function math:rand/rand
scoreboard players operation @s dream_likelihood = rand_output math_output
scoreboard players operation @s dream_likelihood *= C_10 math_count
kill @e[tag=Math_temp_rand]