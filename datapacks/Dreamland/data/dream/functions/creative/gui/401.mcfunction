#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#401工具类1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
#维持界面正常
replaceitem entity @s container.0 red_dye{CustomModelData:12002,display:{Name:'{"translate":"dream.gui.creative.back"}'},tag:{isTemp:1b}}
replaceitem entity @s container.1 red_dye{CustomModelData:12005,display:{Name:'{"translate":"dream.gui.creative.nolast"}'},tag:{isTemp:1b}}
replaceitem entity @s container.2 red_dye{CustomModelData:12006,display:{Name:'{"translate":"dream.gui.creative.nonext"}'},tag:{isTemp:1b}}
replaceitem entity @s container.3 air
replaceitem entity @s container.4 air
replaceitem entity @s container.5 air
replaceitem entity @s container.6 air
replaceitem entity @s container.7 air
replaceitem entity @s container.8 air
replaceitem entity @s container.9 minecraft:carrot_on_a_stick{CustomModelData:12001,display:{Name:'[{"translate":"dream.item.name.magic_plate","italic":false}]'},tag:{id:"dreamland:magic_plate"}}
replaceitem entity @s container.10 minecraft:carrot_on_a_stick{CustomModelData:12002,display:{Name:'[{"translate":"dream.item.name.xp_extract_needle","italic":false}]'},tag:{id:"dreamland:xp_extract_needle"}}
replaceitem entity @s container.11 minecraft:carrot_on_a_stick{CustomModelData:12007,display:{Name:'[{"translate":"dream.item.name.mineral_detector","italic":false}]'},tag:{id:"dreamland:mineral_detector"}}
replaceitem entity @s container.12 minecraft:light_blue_dye{CustomModelData:12006,display:{Name:'[{"translate":"dream.item.name.cloud_umbrella","italic":false}]'},tag:{id:"dreamland:cloud_umbrella"}}
replaceitem entity @s container.13 minecraft:carrot_on_a_stick{CustomModelData:120017,display:{Name:'[{"translate":"dream.item.name.dream_medicine","italic":false}]'},tag:{id:"dreamland:dream_medicine"}}
replaceitem entity @s container.14 minecraft:carrot_on_a_stick{CustomModelData:120018,display:{Name:'[{"translate":"dream.item.name.wake_up_medicine","italic":false}]'},tag:{id:"dreamland:wake_up_medicine"}}
replaceitem entity @s container.15 minecraft:light_blue_dye{CustomModelData:12008,display:{Name:'[{"translate":"dream.item.name.dream_timer","italic":false}]'},tag:{id:"dreamland:dream_timer"}}
replaceitem entity @s container.16 minecraft:light_blue_dye{CustomModelData:120010,display:{Name:'[{"translate":"dream.item.name.dream_tailsman","italic":false}]'},tag:{id:"dreamland:dream_tailsman"}}
replaceitem entity @s container.17 carrot_on_a_stick{CustomModelData:120023,tag:{id:"dreamland:cloud_gun"},display:{Name:'[{"translate":"dream.item.name.cloud_gun","italic": false}]'}}
replaceitem entity @s container.18 minecraft:carrot_on_a_stick{CustomModelData:12005,display:{Name:'[{"translate":"dream.item.name.weather_wand","italic":false}]'},tag:{id:"dreamland:weather_wand"}}
replaceitem entity @s container.19 minecraft:carrot_on_a_stick{CustomModelData:120024,display:{Name:'[{"translate":"dream.item.name.primitive_wand","italic":false}]'},tag:{id:"dreamland:primitive_wand"}}
replaceitem entity @s container.20 minecraft:carrot_on_a_stick{CustomModelData:120019,display:{Name:'[{"translate":"dream.item.name.dream_wand","italic":false}]'},tag:{id:"dreamland:dream_wand",type:11b}}
replaceitem entity @s container.21 minecraft:carrot_on_a_stick{CustomModelData:120020,display:{Name:'[{"translate":"dream.item.name.choas_wand","italic":false}]'},tag:{id:"dreamland:choas_wand",type:11b}}
replaceitem entity @s container.22 air
replaceitem entity @s container.23 air
replaceitem entity @s container.24 air
replaceitem entity @s container.25 air
replaceitem entity @s container.26 air