execute unless block ~ ~ ~ chest{Items:[{Slot:0b,tag:{CustomModelData:120018}}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run function dream:craft/remove 
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run function dream:craft/remove 
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run function dream:craft/remove 
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run function dream:craft/remove 
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run function dream:craft/remove 
execute if block ~ ~ ~ chest{Items:[{Slot:14b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:16b}]} unless block ~ ~ ~ chest{Items:[{Slot:16b,tag:{tag:{isTemp:1b}}}]} unless block ~ ~ ~ chest{Items:[{Slot:16b,tag:{tag:{isTemp:0b}}}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:17b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:18b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:22b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:23b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:24b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:25b}]} run function dream:craft/remove
execute if block ~ ~ ~ chest{Items:[{Slot:26b}]} run function dream:craft/remove
item replace block ~ ~ ~ container.0 with light_blue_dye{tag: {id: "dreamland:index"}, CustomModelData: 120018, display: {Name: '[{"text":"梦境合成台","italic": false}]'}}
item replace block ~ ~ ~ container.15 with light_blue_dye{tag: {id: "dreamland:index"}, CustomModelData: 120015, display: {Name: '["点击合成"]'}}