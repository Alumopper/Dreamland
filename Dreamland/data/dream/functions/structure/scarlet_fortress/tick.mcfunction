#尝试生成猩红堡垒
execute as @e[type=zombie,predicate=dream:if_entity/in_scarlet,limit=1,sort=nearest] at @s unless entity @e[type=armor_stand,tag=dream_sf_disable,distance=0..250] run function dream:structure/scarlet_fortress/try
#限制烈焰人的数量
execute as @e[tag=dream_sf] at @s run function dream:structure/scarlet_fortress/blaze_limit