#尝试生成梦境纪念碑
execute if entity @a[predicate=!dream:if_entity/in_sweetdream] as @e[type=chicken,predicate=dream:if_entity/in_sweetdream_b,limit=1,sort=nearest] at @s unless entity @e[type=armor_stand,tag=dream_dm_disable,distance=0..150] run function dream:structure/dream_monument/try
#尝试生成桃园
execute if entity @a[predicate=!dream:if_entity/in_sweetdream] as @e[type=sheep,predicate=dream:if_entity/in_pinkplain,nbt={Color:6b},limit=1,sort=nearest] at @s unless entity @e[type=armor_stand,tag=dream_po_disable,distance=0..200] run function dream:structure/peach_orchard/try
#尝试生成猩红堡垒
execute if entity @a[predicate=!dream:if_entity/in_nightmare] as @e[type=zombie,predicate=dream:if_entity/in_scarlet,limit=1,sort=nearest] at @s unless entity @e[type=armor_stand,tag=dream_sf_disable,distance=0..250] run function dream:structure/scarlet_fortress/try