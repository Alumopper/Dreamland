execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{CustomModelData:120018}}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:4b}]} run function dream:craft/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:5b}]} run function dream:craft/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:6b}]} run function dream:craft/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:7b}]} run function dream:craft/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:8b}]} run function dream:craft/remove 
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{dreamland:{isTemp:1b}}}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{dreamland:{isTemp:0b}}}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:17b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:18b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:22b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:23b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:24b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:25b}]} run function dream:craft/remove
execute if block ~ ~ ~ barrel{Items:[{Slot:26b}]} run function dream:craft/remove
item replace block ~ ~ ~ container.0 with light_blue_dye{id: "dreamland:index", CustomModelData: 120018, display: {Name: '[{"text":"梦境合成台","italic": false}]'}}
item replace block ~ ~ ~ container.15 with light_blue_dye{id: "dreamland:index", CustomModelData: 120015, display: {Name: '["点击合成"]'}}