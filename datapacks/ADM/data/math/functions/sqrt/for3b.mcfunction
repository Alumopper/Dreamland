scoreboard players set low2 math_temp 0
scoreboard players operation low2 math_temp = low math_temp
scoreboard players operation low2 math_temp *= low math_temp
execute if score low2 math_temp < a math_temp run function math:sqrt/for3c