#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#501鱼汤相关物品1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run tag @s add dream_just
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"gui.dream.creative.back"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"gui.dream.creative.nolast"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"gui.dream.creative.nonext"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:milk_bucket{CustomModelData: 120001, display: {Name: '[{"translate":"item.fishsoup.fish_soup","italic":false}]'}, id: "fishsoup:fish_soup",dreamland: {isTemp: 0b}}
item replace entity @s container.10 with minecraft:apple{CustomModelData: 120001, display: {Name: '[{"translate":"item.fishsoup.peach","italic":false}]'},id: "fishsoup:peach", dreamland: {isTemp: 0b}}
item replace entity @s container.11 with minecraft:milk_bucket{CustomModelData: 120004, display: {Name: '[{"translate":"item.fishsoup.memory_soup","italic":false}]'}, id: "fishsoup:memory_soup",dreamland: {isTemp: 0b}}
item replace entity @s container.12 with air
item replace entity @s container.13 with air
item replace entity @s container.14 with air
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