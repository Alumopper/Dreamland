#可用属性：1、效率III-0，2、效率-1~4，3、效率II-5~6，4、轻盈-7，5、自动冶炼-8，6、镐击-9
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b,infusion:5b}}}}] at @s run function dreamland:infuse/each_function/auto_smelt
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b,infusion:6b}}}}] run tag @s add dream_effect_strength1