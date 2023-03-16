execute if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:xp_extract_needle"}}}} run tag @s add dream_xp_visible
execute if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:magic_plate"}}}} run tag @s add dream_xp_visible
execute if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:xp_extract_needle"}}}} run tag @s add dream_xp_visible
execute if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:magic_plate"}}}} run tag @s add dream_xp_visible
execute as @a if entity @s[tag=dream_xp_visible] run function dream:items/xp_display
bossbar set dream:xp players @a[tag=dream_xp_visible]
tag @s remove dream_xp_visible
#副手持有载魔盘释放经验
execute if score xp dream_xp matches 1.. if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:magic_plate"}}}} run function dream:items/getxp
#副手持有经验抽针快速吸经验
execute if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:xp_extract_needle"}}}} if score @s dream_p_xp matches 10.. if score xp dream_xp matches ..9990 run function dream:items/xp_extract_needle
#检测玩家身上是否有梦境护符
execute if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:dream_talisman"}}}} run tag @s add dream_magic_protected
execute if entity @s[tag=dream_magic_protected] run function dream:items/dream_talisman
execute unless data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:dream_talisman"}}}} run tag @s remove dream_magic_protected