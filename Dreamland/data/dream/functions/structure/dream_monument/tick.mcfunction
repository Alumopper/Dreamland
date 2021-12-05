#尝试生成梦境纪念碑
execute as @e[type=chicken,predicate=dream:if_entity/in_sweetdream_b,limit=1,sort=nearest] at @s unless entity @e[type=armor_stand,tag=dream_dm_disable,distance=0..150] run function dream:structure/dream_monument/try
#给予玩家药水效果
execute as @e[tag=dream_dm] at @s run effect give @e[distance=0..10] regeneration 5 0