#获取魔法水晶数量
execute store result score dream_temp_i_w_crystnum dream_counter run data get storage dreamland:player_data SelectedItem.tag.dreamland.WandEx
#水晶注入
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_wand"}}} if score dream_temp_i_w_crystnum dream_counter matches 0 run function dreamland:items/wand_insert/tick
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:chaos_wand"}}} if score dream_temp_i_w_crystnum dream_counter matches 0..1 run function dreamland:items/wand_insert/tick