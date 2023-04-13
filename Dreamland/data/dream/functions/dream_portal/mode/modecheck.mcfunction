tag @s remove block.dream.dream_portal_disable
tag @s remove block.dream.dream_portal_empty
tag @s remove block.dream.dream_portal_nightmare
tag @s remove block.dream.dream_portal_sweetdream
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} run tag @s add block.dream.dream_portal_disable
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{tag:{id:"dreamland:nightmare_essence"}}}]} run tag @s add block.dream.dream_portal_empty
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} run tag @s add block.dream.dream_portal_sweetdream
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{tag:{id:"dreamland:dimension_core"}}}]} if block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{tag:{id:"dreamland:nightmare_essence"}}}]} run tag @s add block.dream.dream_portal_nightmare