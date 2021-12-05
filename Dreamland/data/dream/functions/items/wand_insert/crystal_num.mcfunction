#获取魔法水晶数量
execute store result score dream_temp_i_w_crystnum dream_counter run data get entity @s SelectedItem.tag.tag.WandEx
#水晶注入
execute as @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}}] if score dream_temp_i_w_crystnum dream_counter matches 0 run function dream:items/wand_insert/tick
execute as @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}}] if score dream_temp_i_w_crystnum dream_counter matches 0..1 run function dream:items/wand_insert/tick