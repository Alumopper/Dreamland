#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#301方块类1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run tag @s add dream_just
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"gui.dreamland.creative.back"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"gui.dreamland.creative.nolast"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"gui.dreamland.creative.nonext"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:carrot_on_a_stick{CustomModelData: 120003, display: {Name: '[{"translate":"item.dreamland.craftingtable","italic":false}]'},id: "dreamland:crafting_table", dreamland: {isTemp: 0b}} 
item replace entity @s container.10 with minecraft:carrot_on_a_stick{CustomModelData: 120004, display: {Name: '[{"translate":"item.dreamland.infuse_table","italic":false}]'},id: "dreamland:infuse_table", dreamland: {isTemp: 0b}}
item replace entity @s container.11 with minecraft:carrot_on_a_stick{CustomModelData: 120009, display: {Name: '[{"translate":"item.dreamland.dream_defender","italic":false}]'},id: "dreamland:dream_defender", dreamland: {isTemp: 0b}}
item replace entity @s container.12 with minecraft:carrot_on_a_stick{CustomModelData: 120011, display: {Name: '[{"translate":"item.dreamland.dream_breaker","italic":false}]'},id: "dreamland:dream_breaker", dreamland: {isTemp: 0b}}
item replace entity @s container.13 with minecraft:carrot_on_a_stick{CustomModelData: 120006, display: {Name: '[{"translate":"item.dreamland.dream_portal","italic":false}]'},id: "dreamland:dream_portal",dreamland: {isTemp: 0b}}
item replace entity @s container.14 with minecraft:carrot_on_a_stick{CustomModelData: 120013, display: {Name: '[{"translate":"item.dreamland.dream_beacon","italic":false}]'},id: "dreamland:dream_beacon", dreamland: {isTemp: 0b}}
item replace entity @s container.15 with air
item replace entity @s container.16 with air
item replace entity @s container.17 with air
item replace entity @s container.18 with air
item replace entity @s container.19 with air
item replace entity @s container.20 with air
item replace entity @s container.21 with air
item replace entity @s container.22 with air
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
item replace entity @s container.26 with air