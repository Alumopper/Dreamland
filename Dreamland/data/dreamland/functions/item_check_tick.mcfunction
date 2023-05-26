#检查玩家物品的tick。已经事先将需要检测的内容取出
#as @a at @s run this
#define storage dreamland:player_data 玩家信息储存
data modify storage dreamland:player_data SelectedItem set value {}
data modify storage dreamland:player_data SelectedItem2 set value {}
data modify storage dreamland:player_data SelectedItem set from entity @s SelectedItem
data modify storage dreamland:player_data SelectedItem2 set from entity @s Inventory[{Slot:-106b}]
#是否有梦神装备
#define tag predicate.dreamland.has_dream_god_armor
execute if entity @s[tag=!predicate.dreamland.has_dream_god_armor] if data entity @s {Inventory:[{Slot: 100b,tag: {id: "dreamland:dream_god_boots"}}, {Slot: 101b,tag: {id: "dreamland:dream_god_leggings"}}, {Slot: 102b,tag: {id: "dreamland:dream_god_chestplate"}},{Slot: 103b,tag: {id: "dreamland:dream_god_helmet"}}]} run tag @s add predicate.dreamland.has_dream_god_armor
execute if entity @s[tag=predicate.dreamland.has_dream_god_armor] unless data entity @s {Inventory:[{Slot: 100b,tag: {id: "dreamland:dream_god_boots"}}, {Slot: 101b,tag: {id: "dreamland:dream_god_leggings"}}, {Slot: 102b,tag: {id: "dreamland:dream_god_chestplate"}},{Slot: 103b,tag: {id: "dreamland:dream_god_helmet"}}]} run tag @s remove predicate.dreamland.has_dream_god_armor
function dreamland:items/tick
function dreamland:items/tick2
#检测是否使用胡萝卜钓竿
execute as @s[scores={dream_using=1..}] run function dreamland:coas_test
