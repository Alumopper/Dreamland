execute at @s run summon item ~ ~ ~ {Item:{id:"carrot_on_a_stick",Count:1b,tag:{tag:{id:"dreamland:crafting_table"},CustomModelData:120003,display:{Name:'[{"translate":"item.dreamland.craftingtable","italic":false}]'}}}}
kill @e[type=item,limit=2,sort=nearest,nbt=!{Item:{tag:{tag:{id:"dreamland:crafting_table"}}}}]