#3、头铁-7，4、氧气富集-8，5、夜视-9
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{dreamland:{infusion:3b}}}]}] at @s run kill @e[type=falling_block,dy=1]
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{dreamland:{infusion:4b}}}]}] run tag @s add dream_effect_water_breathing1
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{dreamland:{infusion:5b}}}]}] run tag @s add dream_effect_night_vision1