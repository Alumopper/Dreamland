#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#401工具类1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
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
item replace entity @s container.9 with minecraft:carrot_on_a_stick{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.magic_plate","italic":false}]'}, tag: {id: "dreamland:magic_plate"}}
item replace entity @s container.10 with minecraft:carrot_on_a_stick{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.xp_extract_needle","italic":false}]'}, tag: {id: "dreamland:xp_extract_needle"}}
item replace entity @s container.11 with minecraft:carrot_on_a_stick{CustomModelData: 120007, display: {Name: '[{"translate":"dream.item.name.mineral_detector","italic":false}]'}, tag: {id: "dreamland:mineral_detector"}}
item replace entity @s container.12 with minecraft:light_blue_dye{CustomModelData: 120006, display: {Name: '[{"translate":"dream.item.name.cloud_umbrella","italic":false}]'}, tag: {id: "dreamland:cloud_umbrella"}}
item replace entity @s container.13 with minecraft:carrot_on_a_stick{CustomModelData: 120017, display: {Name: '[{"translate":"dream.item.name.dream_medicine","italic":false}]'}, tag: {id: "dreamland:dream_medicine"}}
item replace entity @s container.14 with minecraft:carrot_on_a_stick{CustomModelData: 120018, display: {Name: '[{"translate":"dream.item.name.wake_up_medicine","italic":false}]'}, tag: {id: "dreamland:wake_up_medicine"}}
item replace entity @s container.15 with minecraft:light_blue_dye{CustomModelData: 120008, display: {Name: '[{"translate":"dream.item.name.dream_timer","italic":false}]'}, tag: {id: "dreamland:dream_timer"}}
item replace entity @s container.16 with minecraft:light_blue_dye{CustomModelData: 120010, display: {Name: '[{"translate":"dream.item.name.dream_tailsman","italic":false}]'}, tag: {id: "dreamland:dream_tailsman"}}
item replace entity @s container.17 with carrot_on_a_stick{CustomModelData: 120023, tag: {id: "dreamland:cloud_gun"}, display: {Name: '[{"translate":"dream.item.name.cloud_gun","italic": false}]'}}
item replace entity @s container.18 with minecraft:carrot_on_a_stick{CustomModelData: 120005, display: {Name: '[{"translate":"dream.item.name.weather_wand","italic":false}]'}, tag: {id: "dreamland:weather_wand"}}
item replace entity @s container.19 with minecraft:carrot_on_a_stick{CustomModelData: 120024, display: {Name: '[{"translate":"dream.item.name.primitive_wand","italic":false}]'}, tag: {id: "dreamland:primitive_wand"}}
item replace entity @s container.20 with minecraft:carrot_on_a_stick{CustomModelData: 120019, display: {Name: '[{"translate":"dream.item.name.dream_wand","italic":false}]'}, tag: {id: "dreamland:dream_wand", type: 11b, CrystalNum: 0b, WandEx: []}}
item replace entity @s container.21 with minecraft:carrot_on_a_stick{CustomModelData: 120020, display: {Name: '[{"translate":"dream.item.name.choas_wand","italic":false}]'}, tag: {id: "dreamland:choas_wand", type: 11b, CrystalNum: 0b, WandEx: []}}
item replace entity @s container.22 with minecraft:carrot_on_a_stick{CustomModelData: 120025, display: {Name: '[{"translate":"dream.item.name.teleport_arrow","italic":false}]'}, tag: {id: "dreamland:teleport_arrow"}}
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
item replace entity @s container.26 with air