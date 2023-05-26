execute if score @s dream_sleeptime matches 0..3600 run scoreboard players set @s dream_sleeptime 0
execute if score @s dream_sleeptime matches 3600..12000 run scoreboard players remove @s dream_sleeptime 3600
item replace entity @s[nbt={SelectedItemSlot: 0},gamemode=!creative] hotbar.0 with air
item replace entity @s[nbt={SelectedItemSlot: 1},gamemode=!creative] hotbar.1 with air
item replace entity @s[nbt={SelectedItemSlot: 2},gamemode=!creative] hotbar.2 with air
item replace entity @s[nbt={SelectedItemSlot: 3},gamemode=!creative] hotbar.3 with air
item replace entity @s[nbt={SelectedItemSlot: 4},gamemode=!creative] hotbar.4 with air
item replace entity @s[nbt={SelectedItemSlot: 5},gamemode=!creative] hotbar.5 with air
item replace entity @s[nbt={SelectedItemSlot: 6},gamemode=!creative] hotbar.6 with air
item replace entity @s[nbt={SelectedItemSlot: 7},gamemode=!creative] hotbar.7 with air
item replace entity @s[nbt={SelectedItemSlot: 8},gamemode=!creative] hotbar.8 with air