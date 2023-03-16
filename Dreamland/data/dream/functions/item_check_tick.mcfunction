#检查玩家物品的tick。已经事先将需要检测的内容取出
#as @a at @s run this
#define storage dream:player_data 玩家信息储存
data modify storage dream:player_data SelectedItem set from entity @s SelectedItem
data modify storage dream:player_data SelectedItem2 set from entity @s Inventory[{Slot:-106b}]
function dream:items/tick
function dream:items/tick2
#检测是否使用胡萝卜钓竿
execute as @a[scores={dream_using=1..}] run function dream:coas_test
