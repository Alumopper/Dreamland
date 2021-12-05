#可用属性：1.原力吸血-0，2.格挡-1~3，3.更锋利-4~8，4、更锋利II-9
execute if entity @s[nbt={SelectedItem:{tag:{tag:{type:101b,infusion:2b}}}}] run tag @s add dream_effect_resistance1
execute if entity @s[nbt={SelectedItem:{tag:{tag:{type:101b,infusion:1b}}}}] if score @s dream_use_sword matches 1.. run effect give @s minecraft:regeneration 1 2 