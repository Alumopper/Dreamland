#尝试生成桃园
execute as @e[type=sheep,predicate=dream:if_entity/in_pinkplain,nbt={Color:6b},limit=1,sort=nearest] at @s unless entity @e[type=armor_stand,tag=dream_po_disable,distance=0..200] run function dream:structure/peach_orchard/try
#标记在桃园中的玩家
tag @a remove dream_in_peach_orchard
execute as @e[tag=dream_po] at @s run tag @a[dx=31,dy=15,dz=31] add dream_in_peach_orchard