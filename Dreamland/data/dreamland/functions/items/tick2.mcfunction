#as/at @a
#手持暗影之眼让周围的小黑发光
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dark_eye"}}} run effect give @e[type=enderman,distance=0..30] glowing 1 1 false
#手持云伞让玩家缓降
execute if entity @s[tag=!dream_effect_levitation255] if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:cloud_umbrella"}}} run tag @s add dream_effect_levitation255
execute if entity @s[tag=!dream_effect_levitation255] if data storage dreamland:player_data {SelectedItem2:{tag:{id:"dreamland:cloud_umbrella"}}} run tag @s add dream_effect_levitation255 
#手持法杖或梦境护符显示魔法值
execute if entity @s[tag=dream_magic_displaying] run function dreamland:items/magic_display
execute if entity @s[tag=!dream_magic_displaying] if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{MagicDisplay:true}}}} run tag @s add dream_magic_displaying
execute if entity @s[tag=!dream_magic_displaying] if data storage dreamland:player_data {SelectedItem2:{tag:{dreamland:{MagicDisplay:true}}}} run tag @s add dream_magic_displaying
execute if entity @s[tag=dream_magic_displaying] unless data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{MagicDisplay:true}}}} unless data storage dreamland:player_data {SelectedItem2:{tag:{dreamland:{MagicDisplay:true}}}} run function dreamland:items/remove_magic_display
#手持法杖开始检测玩家是否副手持有魔法水晶
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_wand"}}} run function dreamland:items/wand_insert/crystal_num
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:chaos_wand"}}} run function dreamland:items/wand_insert/crystal_num
#手持沙漏显示做梦时间
execute if data storage dreamland:player_data {SelectedItem:{tag:{id:"dreamland:dream_timer"}}} run function dreamland:items/time_display
execute if data storage dreamland:player_data {SelectedItem2:{tag:{id:"dreamland:dream_timer"}}} run function dreamland:items/time_display
#给予有整套装备的玩家药水效果
execute if data entity @s {Inventory:[{Slot: 100b,tag: {id: "dreamland:illusory_boots"}}, {Slot: 101b,tag: {id: "dreamland:illusory_leggings"}}, {Slot: 102b,tag: {id: "dreamland:illusory_chestplate"}},{Slot: 103b,tag: {id: "dreamland:illusory_helmet"}}]} run tag @s add dream_effect_strength1
execute if data entity @s {Inventory:[{Slot: 100b,tag: {id: "dreamland:unnamed_boots"}}, {Slot: 101b,tag: {id: "dreamland:unnamed_leggings"}}, {Slot: 102b,tag: {id: "dreamland:unnamed_chestplate"}},{Slot: 103b,tag: {id: "dreamland:unnamed_helmet"}}]} run tag @s add dream_effect_regeneration1
tag @s[tag=predicate.dreamland.has_dream_god_armor] add dream_effect_heathboost4
advancement grant @s[tag=predicate.dreamland.has_dream_god_armor] only dreamland:beta/dream_god
tag @s[tag=!predicate.dreamland.has_dream_god_armor] remove dream_effect_heathboost4
#虚幻装备的显示