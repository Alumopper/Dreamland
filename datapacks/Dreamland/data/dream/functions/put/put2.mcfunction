tag @s add dream_hasput
execute if entity @s[tag=dream_craftingtable] run function dream:put/crafting_table
execute if entity @s[tag=dream_infusetable] run function dream:put/infuse_table
execute if entity @s[tag=dream_defender] run function dream:put/dream_defender
execute if entity @s[tag=dream_breaker] run function dream:put/dream_breaker
execute if entity @s[tag=dream_beacon] run function dream:put/dream_beacon
execute if entity @s[tag=dream_portal] run function dream:put/dream_portal
replaceitem entity @s[nbt={SelectedItemSlot:0},gamemode=!creative] hotbar.0 air
replaceitem entity @s[nbt={SelectedItemSlot:1},gamemode=!creative] hotbar.1 air
replaceitem entity @s[nbt={SelectedItemSlot:2},gamemode=!creative] hotbar.2 air
replaceitem entity @s[nbt={SelectedItemSlot:3},gamemode=!creative] hotbar.3 air
replaceitem entity @s[nbt={SelectedItemSlot:4},gamemode=!creative] hotbar.4 air
replaceitem entity @s[nbt={SelectedItemSlot:5},gamemode=!creative] hotbar.5 air
replaceitem entity @s[nbt={SelectedItemSlot:6},gamemode=!creative] hotbar.6 air
replaceitem entity @s[nbt={SelectedItemSlot:7},gamemode=!creative] hotbar.7 air
replaceitem entity @s[nbt={SelectedItemSlot:8},gamemode=!creative] hotbar.8 air