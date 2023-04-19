#获取第二槽位，如没有则不释放
execute store result score dream_temp_i_w_cryst2 dream_counter run data get entity @s SelectedItem.tag.dreamland.WandEx[1][0]
execute if score @s dream_magic matches 30.. if score dream_temp_i_w_cryst2 dream_counter matches 1 run function dream:items/wand_crystal/shift/fire
execute if score @s dream_magic matches 4.. if score dream_temp_i_w_cryst2 dream_counter matches 2 run function dream:items/wand_crystal/shift/natural
execute if score @s dream_magic matches 30.. if score dream_temp_i_w_cryst2 dream_counter matches 3 run function dream:items/wand_crystal/shift/water
execute if score @s dream_magic matches 60.. if score dream_temp_i_w_cryst2 dream_counter matches 4 run function dream:items/wand_crystal/shift/void
execute if score @s dream_magic matches 20.. if score dream_temp_i_w_cryst2 dream_counter matches 5 run function dream:items/wand_crystal/shift/ender