#检查玩家物品的tick。已经事先将需要检测的内容取出
#as @a at @s run this
#define storage dreamland:player_data 玩家信息储存
data modify storage dreamland:player_data SelectedItem set value {}
data modify storage dreamland:player_data SelectedItem2 set value {}
data modify storage dreamland:player_data SelectedItem set from entity @s SelectedItem
data modify storage dreamland:player_data SelectedItem2 set from entity @s Inventory[{Slot:-106b}]
function dreamland:items/tick
function dreamland:items/tick2
#检测是否使用胡萝卜钓竿
execute as @a[scores={dream_using=1..}] run function dreamland:coas_test
