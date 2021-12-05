scoreboard players set up2 math_temp 0
scoreboard players operation up2 math_temp = up math_temp
scoreboard players operation up2 math_temp *= up math_temp
execute if score up2 math_temp < a math_temp run function math:sqrt/for1c
execute if score up2 math_temp >= a math_temp run function math:sqrt/second