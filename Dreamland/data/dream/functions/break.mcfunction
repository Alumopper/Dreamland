execute if entity @s[tag=dream_craftingtable] at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},limit=1,distance=..1] Item set value {id:"carrot_on_a_stick",Count:1b,tag:{tag:{id:"dreamland:crafting_table"},CustomModelData:120003,display:{Name:'[{"text":"梦境合成台","italic":false}]'}}}
execute if entity @s[tag=dream_infusetable] at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},limit=1,distance=..1] Item set value {id:"carrot_on_a_stick",Count:1b,tag:{tag:{id:"dreamland:infuse_table"},CustomModelData:120004,display:{Name:'[{"text":"注魔台","italic":false}]'}}}
execute if entity @s[tag=dream_breaker] at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},limit=1,distance=..1] Item set value {id:"carrot_on_a_stick",Count:1b,tag:{tag:{id:"dreamland:dream_breaker"},CustomModelData:120011,display:{Name:'[{"text":"梦崩毁塔","italic":false}]'}}}
execute if entity @s[tag=dream_defender] at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},limit=1,distance=..1] Item set value {id:"carrot_on_a_stick",Count:1b,tag:{tag:{id:"dreamland:dream_defender"},CustomModelData:120009,display:{Name:'[{"text":"梦守卫塔","italic":false}]'}}}
execute if entity @s[tag=dream_portal] at @s run data modify entity @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},limit=1,distance=..1] Item set value {id:"carrot_on_a_stick",Count:1b,tag:{tag:{id:"dreamland:dream_portal"},CustomModelData:120006,display:{Name:'[{"text":"梦境传送门","italic":false}]'}}}
kill @e[type=item,nbt={Item:{tag:{tag:{id:"dreamland:index"}}}}]
kill @s