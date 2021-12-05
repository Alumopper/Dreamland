scoreboard players set a math_temp 0
scoreboard players operation a math_temp = input math_input
#模拟小数运算
scoreboard players operation a math_temp *= C_10000 math_count
scoreboard players operation a math_temp *= C_10000 math_count
#double up=0.0
scoreboard players set up math_temp 0
#double low=0.0
scoreboard players set low math_temp 0
#for
function math:sqrt/for1b