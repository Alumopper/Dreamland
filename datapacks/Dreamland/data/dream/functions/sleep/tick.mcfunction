#为梦床添加粒子特效
execute as @e[tag=dream_bed] at @s run particle dust 0 0.6352941176470588 1 1 ~ ~1 ~ 0.5 0.5 0.5 0.1 1
#如玩家在床上，开启维度传送计时
execute store result score dream_sleep_tick_temp dream_counter run time query daytime
execute as @a at @s if score dream_sleep_tick_temp dream_counter matches 12541..23458 if score @s dream_tpwait matches -1 if entity @e[tag=dream_bed,distance=0..1] run scoreboard players set @s dream_tpwait 0
execute as @a at @s unless block ~ ~ ~ #minecraft:beds if score @s dream_tpwait matches ..98 run scoreboard players set @s dream_tpwait -1
#挖掉床
execute as @e[tag=dream_bed] at @s unless block ~ ~ ~ #beds run kill @s
#每当时间到6000时，重置玩家进入两个梦境世界的概率
#关于为什么随机函数要分开为两次执行且在两个不同刻
#   rand函数的原理是生成10个 固定 UUID的药水云，随机选择一个药水云然后将其UUID的最后一位读取出来储存在rand_output中
#   但不知为何，在同一游戏刻内游戏似乎不会重新把已分配的UUID空闲出来
#   这也就意味着，random函数如一次执行，就要调用两次rand函数，就会生成10对有相同UUID的药水云
#   即使在上一个rand函数执行时已经将药水云清除干净了（这一点可以用execute if验证），但是占用的UUID并没有被释放，所以第二个rand函数不能正常生成新的药水云
#   老的药水云被清除，新的药水云无法生成，data get只能获取个寂寞
#   所以两个rand必须分开在两个游戏刻执行以避免UUID冲突
#注：此问题已经被解决(2021/6)
execute as @a if predicate dream:timecheck_6000 run function dream:sleep/random
execute as @a if predicate dream:timecheck_6001 run function dream:sleep/random2