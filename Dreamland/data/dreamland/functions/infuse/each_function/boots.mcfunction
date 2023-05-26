#可用属性：1、额外保护-0~4，，2、额外保护 II-5~6，3、岩浆行者-7，4、飘落-8，5、弹性-9
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{dreamland:{infusion:3b}}}]}] run function dreamland:infuse/each_function/lava_walker
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{dreamland:{infusion:4b}}}]}] run tag @s add dream_effect_slow_falling2
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{dreamland:{infusion:5b}}}]}] run tag @s add dream_effect_jumpboost3