tag @s remove dream_hasput
#放置方块
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:crafting_table"}}}}] run tag @s add dream_craftingtable
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:crafting_table"}}}}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:infuse_table"}}}}] run tag @s add dream_infusetable
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:infuse_table"}}}}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_defender"}}}}] run tag @s add dream_defender
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_defender"}}}}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_breaker"}}}}] run tag @s add dream_breaker
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_breaker"}}}}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_beacon"}}}}] run tag @s add dream_beacon
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_beacon"}}}}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_portal"}}}}] run tag @s add dream_portal
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_portal"}}}}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:cloud_gun"}}}}] run tag @s add block.dream.cloud_gun
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:cloud_gun"}}},Inventory:[{tag:{tag:{id:"dreamland:cloud"}}}]}] at @s anchored eyes run function dream:put/put
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:cloud_gun"}}}},gamemode=creative,tag=block.dream.cloud_gun] at @s anchored eyes run function dream:put/put
#功能性物品
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:weather_wand"}}}}] at @s anchored eyes run function dream:items/weather_wand
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:xp_extract_needle"}}}},scores={dream_p_xp=10..}] if score xp dream_xp matches ..9990 at @s anchored eyes run function dream:items/xp_extract_needle
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:magic_plate"}}}},scores={dream_p_xp=10..}] if score xp dream_xp matches ..9990 at @s anchored eyes run function dream:items/xp_extract_needle
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:fireball"}}}}] at @s anchored eyes run function dream:items/fireball
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}},scores={dream_magic=5..,dream_wanduse_cd=13..},tag=!dream_sneaking] at @s anchored eyes run function dream:items/dream_wand
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}},scores={dream_magic=7..,dream_wanduse_cd=15..},tag=!dream_sneaking] at @s anchored eyes run function dream:items/choas_wand
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}},tag=dream_sneaking] at @s anchored eyes run function dream:items/wand_crystal/shift/all
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:primitive_wand"}}}},scores={dream_magic=2..,dream_wanduse_cd=18..}] at @s anchored eyes run function dream:items/primitive_wand
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:mineral_detector"}}}}] at @s run function dream:items/mineral_detector
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:wake_up_medicine"}}}}] at @s run function dream:items/wake_up_medicine
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_medicine"}}}}] at @s run function dream:items/dream_medicine
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:teleport_arrow"}}}},tag=!dream_sneaking] at @s run function dream:items/teleport_arrow
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:teleport_arrow"}}}},tag=dream_sneaking] run function dream:items/teleport_arrow_shift
#创造模式物品栏
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:creative"}}}}] at @s run summon chest_minecart ^ ^0.5 ^0.5 {CustomName:'{"translate":"dream.name.creative"}',Tags:["dream_creative","dream_just"],Invulnerable:true,NoGravity:true,CustomNameVisible:true,LootTable:"minecraft:empty"}
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:creative"}}}}] at @s run scoreboard players set @e[tag=dream_creative,distance=0..1] dream_c_page 1
execute if entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:creative"}}}}] at @s run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:[dream_creative_marker]}
#归零
scoreboard players remove @s dream_using 1