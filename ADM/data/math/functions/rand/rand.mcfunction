#> math:rand/rand
# **int** Math.rand()
# 生成一个0到9的随机数
# @output **score** rand_output math_output
scoreboard players operation random_seed math_temp *= C_1103515245 math_count
scoreboard players operation random_seed math_temp += C_20060921 math_count
scoreboard players operation rand_output math_output %= C_100 math_count