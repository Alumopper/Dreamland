item replace block ~ ~ ~ container.0 with light_blue_dye{id: "dreamland:index", CustomModelData: 120021, display: {Name: '[{"text":"梦崩毁塔","italic": false}]'}}
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{CustomModelData:120021}}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:1b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:2b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:3b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:4b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:6b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:7b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:8b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:9b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:10b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run function dream:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{id:"dreamland:nightmare_essence"}}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:17b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:18b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:19b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:20b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:21b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:24b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:25b}]} run function dream:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:26b}]} run function dream:tower/remove