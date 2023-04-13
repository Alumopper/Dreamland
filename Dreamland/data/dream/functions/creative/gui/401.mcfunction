#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#401工具类1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"gui.dream.creative.back"}'}, tag: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"gui.dream.creative.nolast"}'}, tag: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"gui.dream.creative.nonext"}'}, tag: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:carrot_on_a_stick{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.magic_plate","italic":false}]'}, tag: {id: "dreamland:magic_plate",isTemp: 0b}}
item replace entity @s container.10 with minecraft:carrot_on_a_stick{CustomModelData: 120002, display: {Name: '[{"translate":"item.dreamland.xp_extract_needle","italic":false}]'}, tag: {id: "dreamland:xp_extract_needle",isTemp: 0b}}
item replace entity @s container.11 with minecraft:carrot_on_a_stick{CustomModelData: 120007, display: {Name: '[{"translate":"item.dreamland.mineral_detector","italic":false}]'}, tag: {id: "dreamland:mineral_detector",isTemp: 0b}}
item replace entity @s container.12 with minecraft:light_blue_dye{CustomModelData: 120006, display: {Name: '[{"translate":"item.dreamland.cloud_umbrella","italic":false}]'}, tag: {id: "dreamland:cloud_umbrella",isTemp: 0b}}
item replace entity @s container.13 with minecraft:carrot_on_a_stick{CustomModelData: 120017, display: {Name: '[{"translate":"item.dreamland.dream_medicine","italic":false}]'}, tag: {id: "dreamland:dream_medicine",isTemp: 0b}}
item replace entity @s container.14 with minecraft:carrot_on_a_stick{CustomModelData: 120018, display: {Name: '[{"translate":"item.dreamland.wake_up_medicine","italic":false}]'}, tag: {id: "dreamland:wake_up_medicine",isTemp: 0b}}
item replace entity @s container.15 with minecraft:light_blue_dye{CustomModelData: 120008, display: {Name: '[{"translate":"item.dreamland.dream_timer","italic":false}]'}, tag: {id: "dreamland:dream_timer",isTemp: 0b}}
item replace entity @s container.16 with minecraft:light_blue_dye{CustomModelData: 120010, display: {Name: '[{"translate":"item.dreamland.dream_talisman","italic":false}]'}, tag: {id: "dreamland:dream_talisman",isTemp: 0b,MagicDisplay:true}}
item replace entity @s container.17 with minecraft:carrot_on_a_stick{CustomModelData: 120023, tag: {id: "dreamland:cloud_gun",isTemp: 0b}, display: {Name: '[{"translate":"item.dreamland.cloud_gun","italic": false}]'}}
item replace entity @s container.18 with minecraft:carrot_on_a_stick{CustomModelData: 120005, display: {Name: '[{"translate":"item.dreamland.weather_wand","italic":false}]'}, tag: {id: "dreamland:weather_wand",isTemp: 0b,MagicDisplay:true}}
item replace entity @s container.19 with minecraft:carrot_on_a_stick{CustomModelData: 120024, display: {Name: '[{"translate":"item.dreamland.primitive_wand","italic":false}]'}, tag: {id: "dreamland:primitive_wand",isTemp: 0b,MagicDisplay:true}}
item replace entity @s container.20 with minecraft:carrot_on_a_stick{CustomModelData: 120019, display: {Name: '[{"translate":"item.dreamland.dream_wand","italic":false}]'}, tag: {id: "dreamland:dream_wand", type: 11b, CrystalNum: 0b, WandEx: [],isTemp: 0b,MagicDisplay:true}}
item replace entity @s container.21 with minecraft:carrot_on_a_stick{CustomModelData: 120020, display: {Name: '[{"translate":"item.dreamland.chaos_wand","italic":false}]'}, tag: {id: "dreamland:chaos_wand", type: 11b, CrystalNum: 0b, WandEx: [],isTemp: 0b,MagicDisplay:true}}
item replace entity @s container.22 with minecraft:carrot_on_a_stick{CustomModelData: 120025, display: {Name: '[{"translate":"item.dreamland.teleport_arrow","italic":false}]'}, tag: {id: "dreamland:teleport_arrow",isTemp: 0b}}
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
item replace entity @s container.26 with air