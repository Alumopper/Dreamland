#手持暗影之眼让周围的小黑发光
execute if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:dark_eye"}}}} run effect give @e[type=enderman,distance=0..30] glowing 1 1 false
#手持云伞让玩家缓降
execute if entity @s[tag=!dream_effect_levitation255] if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:cloud_umbrella"}}}} run tag @s add dream_effect_levitation255
execute if entity @s[tag=!dream_effect_levitation255] if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:cloud_umbrella"}}}} run tag @s add dream_effect_levitation255 
#手持法杖或梦境护符显示魔法值
execute if entity @s[tag=dream_magic_displaying] run function dream:items/magic_display
execute if entity @s[tag=!dream_magic_displaying] if data storage dream:player_data {SelectedItem:{tag:{tag:{MagicDisplay:true}}}} run tag @s add dream_magic_displaying
execute if entity @s[tag=!dream_magic_displaying] if data storage dream:player_data {SelectedItem2:{tag:{tag:{MagicDisplay:true}}}} run tag @s add dream_magic_displaying
execute if entity @s[tag=dream_magic_displaying] unless data storage dream:player_data {SelectedItem:{tag:{tag:{MagicDisplay:true}}},SelectedItem2:{tag:{tag:{MagicDisplay:true}}}} run function dream:items/remove_magic_display
#手持法杖开始检测玩家是否副手持有魔法水晶
execute if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}} run function dream:items/wand_insert/crystal_num
execute if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}} run function dream:items/wand_insert/crystal_num
#手持沙漏显示做梦时间
execute if data storage dream:player_data {SelectedItem:{tag:{tag:{id:"dreamland:dream_timer"}}}} run function dream:items/time_display
execute if data storage dream:player_data {SelectedItem2:{tag:{tag:{id:"dreamland:dream_timer"}}}} run function dream:items/time_display
#给予有整套装备的玩家药水效果
execute if data entity @s {Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:illusory_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:illusory_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:illusory_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:illusory_helmet"}}}]} run tag @s add dream_effect_strength1
execute if data entity @s {Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:unnamed_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:unnamed_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:unnamed_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:unnamed_helmet"}}}]} run tag @s add dream_effect_regeneration1
execute if data entity @s {Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:dream_god_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:dream_god_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:dream_god_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:dream_god_helmet"}}}]} run tag @s add dream_effect_heathboost4
execute if data entity @s {Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:dream_god_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:dream_god_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:dream_god_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:dream_god_helmet"}}}]} run advancement grant @s only dream:beta/dream_god
execute unless data entity @s {Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:dream_god_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:dream_god_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:dream_god_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:dream_god_helmet"}}}]} run tag @s remove dream_effect_heathboost4