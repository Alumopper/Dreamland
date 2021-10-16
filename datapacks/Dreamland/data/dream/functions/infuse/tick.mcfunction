#用于注魔特性
#判断是否持有注魔装备
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,tag:{tag:{type:1b}}}]}] run function dream:infuse/each_function/helmet
#execute as @a if entity @s[nbt={Inventory:[{Slot:102b,tag:{tag:{type:2b}}}]}] run function dream:infuse/each_function/chestplate
#execute as @a if entity @s[nbt={Inventory:[{Slot:101b,tag:{tag:{type:3b}}}]}] run function dream:infuse/each_function/leggings
execute as @a if entity @s[nbt={Inventory:[{Slot:100b,tag:{tag:{type:4b}}}]}] run function dream:infuse/each_function/boots
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:101b}}}}] run function dream:infuse/each_function/sword
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:6b}}}}] run function dream:infuse/each_function/pickaxe
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:5b,infusion:4b}}}}] run tag @s add dream_effect_levitation256
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:6b,infusion:4b}}}}] run tag @s add dream_effect_levitation256
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:7b,infusion:4b}}}}] run tag @s add dream_effect_levitation256
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:5b,infusion:1b}}}}] run tag @s add dream_effect_haste1
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:6b,infusion:1b}}}}] run tag @s add dream_effect_haste1
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:7b,infusion:1b}}}}] run tag @s add dream_effect_haste1
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:5b,infusion:2b}}}}] run tag @s add dream_effect_haste2
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:6b,infusion:2b}}}}] run tag @s add dream_effect_haste2
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:7b,infusion:2b}}}}] run tag @s add dream_effect_haste2
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:5b,infusion:3b}}}}] run tag @s add dream_effect_haste3
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:6b,infusion:3b}}}}] run tag @s add dream_effect_haste3
execute as @a if entity @s[nbt={SelectedItem:{tag:{tag:{type:7b,infusion:3b}}}}] run tag @s add dream_effect_haste3