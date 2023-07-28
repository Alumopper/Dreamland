#declare objective math_input 数学输入
scoreboard objectives add math_input dummy "input"
#declare objective math_output 数学输出
scoreboard objectives add math_output dummy "output"
#>
# 数学临时变量
#
#@internal
#declare objective math_temp 
scoreboard objectives add math_temp dummy "temp"
scoreboard players set random_seed math_temp 114514
#declare objective math_count 数学常数
scoreboard objectives add math_count dummy "count"
#设置常量
#>
# 一个数学常量。X代表常量的值
#
# **object** - math_count
#declare score_holder C_X
scoreboard players set C_-1 math_count -1
scoreboard players set C_1 math_count 1
scoreboard players set C_3 math_count 3
scoreboard players set C_5 math_count 5
scoreboard players set C_10 math_count 10
scoreboard players set C_20 math_count 20
scoreboard players set C_27 math_count 27
scoreboard players set C_100 math_count 100
scoreboard players set C_3919 math_count 3919
scoreboard players set C_10000 math_count 10000
scoreboard players set C_49500 math_count 49500
scoreboard players set C_49500 math_count 49500
scoreboard players set C_20031215 math_count 20031215
scoreboard players set C_1103515245 math_count 1103515245