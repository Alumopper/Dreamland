#虚空矿挖掘动画
particle dust 0 0 0 1 ~ ~ ~ 0.01 0.01 0.01 0.1 3
particle dust 0.043 0 0.122 1 ~ ~ ~ 0.01 0.01 0.01 0.1 2
execute if entity @p[distance=0..2] run function dreamland:entity/void_ore/dig_r
execute facing entity @p eyes run tp @s ^ ^ ^0.2