tag @s remove dream_portal_disable
tag @s remove dream_portal_empty
tag @s remove dream_portal_nightmare
tag @s remove dream_portal_sweetdream
execute unless block ~ ~ ~ chest{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} run tag @s add dream_portal_disable
execute if block ~ ~ ~ chest{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} unless block ~ ~ ~ chest{Items:[{Slot:16b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} unless block ~ ~ ~ chest{Items:[{Slot:16b,tag:{tag:{id:"dreamland:nightmare_essence"}}}]} run tag @s add dream_portal_empty
execute if block ~ ~ ~ chest{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} if block ~ ~ ~ chest{Items:[{Slot:16b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} run tag @s add dream_portal_sweetdream
execute if block ~ ~ ~ chest{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} if block ~ ~ ~ chest{Items:[{Slot:16b,tag:{tag:{id:"dreamland:nightmare_essence"}}}]} run tag @s add dream_portal_nightmare