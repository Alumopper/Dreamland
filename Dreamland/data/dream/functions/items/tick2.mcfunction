#手持暗影之眼让所有小黑发光
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dark_eye"}}}}] run effect give @e[type=enderman] glowing 1 1 false
#手持云伞让玩家缓降
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:cloud_umbrella"}}}}] run tag @s add dream_effect_levitation255
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:cloud_umbrella"}}}]}] run tag @s add dream_effect_levitation255 
#手持法杖或梦境护符显示魔法值
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}}] run function dream:items/magic_display
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}}] run function dream:items/magic_display
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_tailsman"}}}]}] run function dream:items/magic_display
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}}] run tag @s add dream_magic_displaying
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}}] run tag @s add dream_magic_displaying
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_tailsman"}}}]}] run tag @s add dream_magic_displaying
execute as @a[tag=dream_magic_displaying] unless entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}}] unless entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_tailsman"}}}]}] run title @s actionbar ""
execute as @a[tag=dream_magic_displaying] unless entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}}] unless entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_tailsman"}}}]}] unless entity @s[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_tailsman"}}}}] run tag @s remove dream_magic_displaying
#手持法杖开始检测玩家是否副手持有魔法水晶
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_wand"}}}}] run function dream:items/wand_insert/crystal_num
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:choas_wand"}}}}] run function dream:items/wand_insert/crystal_num
#手持沙漏显示做梦时间
execute as @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:dream_timer"}}}}] run function dream:items/time_display
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_timer"}}}]}] run function dream:items/time_display
#给予有整套装备的玩家药水效果
execute as @e[nbt={Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:illusory_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:illusory_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:illusory_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:illusory_helmet"}}}]}] run tag @s add dream_effect_strength1
execute as @e[nbt={Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:unnamed_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:unnamed_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:unnamed_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:unnamed_helmet"}}}]}] run tag @s add dream_effect_regeneration1
execute as @e[nbt={Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:dream_god_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:dream_god_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:dream_god_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:dream_god_helmet"}}}]}] run tag @s add dream_effect_heathboost4
execute as @e[nbt={Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:dream_god_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:dream_god_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:dream_god_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:dream_god_helmet"}}}]}] run advancement grant @s only dream:beta/dream_god
execute as @e[nbt=!{Inventory:[{Slot: 100b,tag: {tag: {id: "dreamland:dream_god_boots"}}}, {Slot: 101b,tag: {tag: {id: "dreamland:dream_god_leggings"}}}, {Slot: 102b,tag: {tag: {id: "dreamland:dream_god_chestplate"}}},{Slot: 103b,tag: {tag: {id: "dreamland:dream_god_helmet"}}}]}] run tag @s remove dream_effect_heathboost4