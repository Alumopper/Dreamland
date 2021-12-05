#for
function math:sqrt/for3b
#up=low;
scoreboard players operation up math_temp = low math_temp
#low-=k;
scoreboard players operation low math_temp -= k math_temp
#printf("%lf   %lf\n",low,up);
tellraw @a [{"score": {"objective": "math_temp","name": "low"}},"     ",{"score": {"objective": "math_temp","name": "up"}}]
execute if score k math_temp matches 1.. run function math:sqrt/for2c
execute if score k math_temp matches ..0 run function math:sqrt/third 