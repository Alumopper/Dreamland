tag @s remove dream_hasput
#放置方块
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:crafting_table"}}} run tag @s add dream_craftingtable
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:crafting_table"}}} anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:infuse_table"}}} run tag @s add block.dream.infusetable
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:infuse_table"}}} anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_defender"}}} run tag @s add dream_defender
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_defender"}}} anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_breaker"}}} run tag @s add dream_breaker
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_breaker"}}} anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_beacon"}}} run tag @s add dream_beacon
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_beacon"}}} anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_portal"}}} run tag @s add block.dream.dream_portal
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_portal"}}} anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:cloud_gun"}}} run tag @s add block.dream.cloud_gun
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:cloud_gun"}}} if entity @s[nbt={Inventory:[{tag:{id:"dreamland:cloud"}}]}] at @s anchored eyes run function dreamland:put/put
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:cloud_gun"}}} if entity @s[gamemode=creative,tag=block.dream.cloud_gun] at @s anchored eyes run function dreamland:put/put
#功能性物品
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:weather_wand"}}} at @s anchored eyes run function dreamland:items/weather_wand
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:xp_extract_needle"}}} if entity @s[nbt={SelectedItem:{tag:{id:"dreamland:xp_extract_needle"}}},scores={dream_p_xp=10..}] if score xp dream_xp matches ..9990 at @s anchored eyes run function dreamland:items/xp_extract_needle
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:magic_plate"}}} if entity @s[scores={dream_p_xp=10..}] if score xp dream_xp matches ..9990 anchored eyes run function dreamland:items/xp_extract_needle
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:fireball"}}} anchored eyes run function dreamland:items/fireball
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_wand"}}} if entity @s[scores={dream_magic=5..,dream_wanduse_cd=11..},predicate=!dreamland:if_entity/is_shift] anchored eyes run function dreamland:items/dream_wand
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:chaos_wand"}}} if entity @s[scores={dream_magic=7..,dream_wanduse_cd=10..},predicate=!dreamland:if_entity/is_shift] anchored eyes run function dreamland:items/chaos_wand
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:chaos_wand"}}} if entity @s[predicate=dreamland:if_entity/is_shift] anchored eyes run function dreamland:items/wand_crystal/shift/all
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:primitive_wand"}}} if entity @s[scores={dream_magic=2..,dream_wanduse_cd=12..}] anchored eyes run function dreamland:items/primitive_wand
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:mineral_detector"}}} run function dreamland:items/mineral_detector
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:wake_up_medicine"}}} run function dreamland:items/wake_up_medicine
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_medicine"}}} run function dreamland:items/dream_medicine
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:teleport_arrow"}}} if entity @s[predicate=!dreamland:if_entity/is_shift] at @s run function dreamland:items/teleport_arrow
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:teleport_arrow"}}} if entity @s[predicate=dreamland:if_entity/is_shift] run function dreamland:items/teleport_arrow_shift
#创造模式物品栏
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:creative"}}} run summon chest_minecart ^ ^0.5 ^0.5 {CustomName:'{"translate":"dream.name.creative"}',Tags:["dream_creative","dream_just"],Invulnerable:true,NoGravity:true,CustomNameVisible:true,LootTable:"minecraft:empty"}
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:creative"}}} run scoreboard players set @e[tag=dream_creative,distance=0..1] dream_c_page 1
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:creative"}}} run summon marker ~ ~ ~ {Tags:[dream_creative_marker]}
#归零
scoreboard players remove @s dream_using 1