execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{CustomModelData:120020}}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:1b}]} run function dream:infuse/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:2b}]} run function dream:infuse/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:3b}]} run function dream:infuse/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{dreamland:{isTemp:1b}}}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} run function dream:infuse/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ barrel{Items:[{Slot:6b,tag:{dreamland:{isTemp:1b}}}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:7b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ barrel{Items:[{Slot:8b,tag:{dreamland:{isTemp:1b}}}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:11b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:17b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:18b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:19b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:20b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:21b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:25b}]} run function dream:infuse/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:26b}]} run function dream:infuse/remove
item replace block ~ ~ ~ container.0 with light_blue_dye{tag: {id: "dreamland:index"}, CustomModelData: 120020, display: {Name: '[{"text":"注魔台","italic": false}]'}}