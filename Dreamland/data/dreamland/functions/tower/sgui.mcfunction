item replace block ~ ~ ~ container.0 with light_blue_dye{id: "dreamland:index", CustomModelData: 120021, display: {Name: '[{"text":"梦守卫塔","italic": false}]'}}
execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{CustomModelData:120021}}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:1b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:2b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:3b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:4b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:6b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:7b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:8b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:9b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:10b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run function dreamland:tower/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{id:"dreamland:sweetdream_essence"}}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:17b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:18b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:19b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:20b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:21b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:24b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:25b}]} run function dreamland:tower/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:26b}]} run function dreamland:tower/remove