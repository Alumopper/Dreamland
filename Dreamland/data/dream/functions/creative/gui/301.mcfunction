#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#301方块类1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run tag @s add dream_just
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"dream.gui.creative.back"}'}, tag: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"dream.gui.creative.nolast"}'}, tag: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"dream.gui.creative.nonext"}'}, tag: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:carrot_on_a_stick{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.craftingtable","italic":false}]'}, tag: {id: "dreamland:crafting_table",isTemp: 0b}} 
item replace entity @s container.10 with minecraft:carrot_on_a_stick{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.infuse_table","italic":false}]'}, tag: {id: "dreamland:infuse_table",isTemp: 0b}}
item replace entity @s container.11 with minecraft:carrot_on_a_stick{CustomModelData: 120009, display: {Name: '[{"translate":"dream.item.name.dream_defender","italic":false}]'}, tag: {id: "dreamland:dream_defender",isTemp: 0b}}
item replace entity @s container.12 with minecraft:carrot_on_a_stick{CustomModelData: 120011, display: {Name: '[{"translate":"dream.item.name.dream_breaker","italic":false}]'}, tag: {id: "dreamland:dream_breaker",isTemp: 0b}}
item replace entity @s container.13 with minecraft:carrot_on_a_stick{CustomModelData: 120006, display: {Name: '[{"translate":"dream.item.name.dream_portal","italic":false}]'}, tag: {id: "dreamland:dream_portal",isTemp: 0b}}
item replace entity @s container.14 with minecraft:carrot_on_a_stick{CustomModelData: 120013, display: {Name: '[{"translate":"dream.item.name.dream_beacon","italic":false}]'}, tag: {id: "dreamland:dream_beacon",isTemp: 0b}}
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