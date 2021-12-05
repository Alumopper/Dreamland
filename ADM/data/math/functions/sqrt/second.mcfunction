#low=up-1;
scoreboard players operation low math_temp = up math_temp
scoreboard players operation low math_temp -= C_10000 math_count
#printf("%lf   %lf\n",low,up);
tellraw @a [{"score": {"objective": "math_temp","name": "low"}},"     ",{"score": {"objective": "math_temp","name": "up"}}]
#for
scoreboard players set k math_temp 1000
function math:sqrt/for2b