#注入
item modify entity @s weapon.mainhand dreamland:wand_insert
#lore修改
execute store result score dream_i.w.insert_cytnum dream_counter run data get entity @s Inventory[-1].tag.dreamland.WandEx[0]
function dreamland:items/wand_insert/lore_set
#无效化
item modify entity @s weapon.offhand dreamland:crystal_disable