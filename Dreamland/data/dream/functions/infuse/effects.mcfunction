#用于注魔特性
#判断是否持有注魔装备
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{dreamland:{type:1b}}}]}] run function dream:infuse/each_function/helmet
#execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{dreamland:{type:2b}}}]}] run function dream:infuse/each_function/chestplate
#execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{dreamland:{type:3b}}}]}] run function dream:infuse/each_function/leggings
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{dreamland:{type:4b}}}]}] run function dream:infuse/each_function/boots
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:101b}}}}] run function dream:infuse/each_function/sword
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b}}}}] run function dream:infuse/each_function/pickaxe
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:5b,infusion:4b}}}}] run tag @s add dream_effect_levitation256
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b,infusion:4b}}}}] run tag @s add dream_effect_levitation256
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:7b,infusion:4b}}}}] run tag @s add dream_effect_levitation256
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:5b,infusion:1b}}}}] run tag @s add dream_effect_haste1
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b,infusion:1b}}}}] run tag @s add dream_effect_haste1
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:7b,infusion:1b}}}}] run tag @s add dream_effect_haste1
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:5b,infusion:2b}}}}] run tag @s add dream_effect_haste2
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b,infusion:2b}}}}] run tag @s add dream_effect_haste2
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:7b,infusion:2b}}}}] run tag @s add dream_effect_haste2
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:5b,infusion:3b}}}}] run tag @s add dream_effect_haste3
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:6b,infusion:3b}}}}] run tag @s add dream_effect_haste3
execute if entity @s[nbt={SelectedItem:{tag:{dreamland:{type:7b,infusion:3b}}}}] run tag @s add dream_effect_haste3