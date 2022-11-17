execute at @e[tag=entity.dream.finalboss2] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:green_stained_glass"},Tags:["entity.dream.finalboss2_shell"],DropItem:false}
#生成随机数字
function math:rand/rand
execute store result entity @e[tag=entity.dream.finalboss2_shell,limit=1] Motion[0] double 0.02 run scoreboard players get rand_output math_output
data modify entity @e[tag=entity.dream.finalboss2_shell,limit=1] Motion[1] set value 0.1
#生成随机数字
function math:rand/rand
execute store result entity @e[tag=entity.dream.finalboss2_shell,limit=1] Motion[2] double 0.02 run scoreboard players get rand_output math_output