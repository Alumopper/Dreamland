execute at @e[tag=dream_finalboss2] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:green_stained_glass"},Tags:["dream_finalboss2_shell"],DropItem:false}
#生成随机数字
function math:rand/rand
execute store result entity @e[tag=dream_finalboss2_shell,limit=1] Motion[0] double 0.02 run scoreboard players get rand_output math_output
data modify entity @e[tag=dream_finalboss2_shell,limit=1] Motion[1] set value 0.1
#生成随机数字
function math:rand/rand
execute store result entity @e[tag=dream_finalboss2_shell,limit=1] Motion[2] double 0.02 run scoreboard players get rand_output math_output