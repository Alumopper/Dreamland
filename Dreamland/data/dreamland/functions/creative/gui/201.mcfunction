#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#201材料页1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:2b}]}] run scoreboard players set @s dream_c_page 202
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"gui.dreamland.creative.back"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"gui.dreamland.creative.nolast"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120003, display: {Name: '{"translate":"gui.dreamland.creative.nextpage"}'}, dreamland: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:glowstone_dust{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.dreamdust","italic":false}]'},id: "dreamland:dreamdust", dreamland: {isTemp: 0b}}
item replace entity @s container.10 with minecraft:light_blue_dye{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.dream_essence","italic": false}]'},id: "dreamland:dream_essence", dreamland: {isTemp: 0b}}
item replace entity @s container.11 with minecraft:light_blue_dye{CustomModelData: 120002, display: {Name: '[{"translate":"item.dreamland.sweetdream_essence","italic":false}]'},id: "dreamland:sweetdream_essence", dreamland: {isTemp: 0b}}
item replace entity @s container.12 with minecraft:light_blue_dye{CustomModelData: 120003, display: {Name: '[{"translate":"item.dreamland.nightmare_essence","italic":false}]'},id: "dreamland:nightmare_essence", dreamland: {isTemp: 0b}}
item replace entity @s container.13 with minecraft:light_blue_dye{CustomModelData: 120005, display: {Name: '[{"translate":"item.dreamland.dimension_core","italic":false}]'},id: "dreamland:dimension_core", dreamland: {isTemp: 0b}}
item replace entity @s container.14 with minecraft:light_blue_dye{CustomModelData: 120007, display: {Name: '[{"translate":"item.dreamland.dream_power_core","italic":false}]'},id: "dreamland:dream_power_core", dreamland: {isTemp: 0b}}
item replace entity @s container.15 with minecraft:light_blue_dye{CustomModelData: 120022, display: {Name: '[{"translate":"item.dreamland.cloud","italic": false}]'},id: "dreamland:cloud", dreamland: {isTemp: 0b}}
item replace entity @s container.16 with minecraft:slime_ball{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.blue_slime_ball","italic":false}]'},id: "dreamland:blue_slime_ball", dreamland: {isTemp: 0b}}
item replace entity @s container.17 with minecraft:light_blue_dye{CustomModelData: 120004, display: {Name: '[{"translate":"item.dreamland.slime_tear","italic":false}]'},id: "dreamland:slime_tear", dreamland: {isTemp: 0b}}
item replace entity @s container.18 with minecraft:light_blue_dye{CustomModelData: 120009, display: {Name: '[{"translate":"item.dreamland.phantom_skeleton","italic":false}]'},id: "dreamland:phantom_skeleton", dreamland: {isTemp: 0b}}
item replace entity @s container.19 with minecraft:light_blue_dye{CustomModelData: 120011, display: {Name: '[{"translate":"item.dreamland.chaotic_crystallization","italic":false}]'}, id: "dreamland:chaotic_crystallization",dreamland: {isTemp: 0b}}
item replace entity @s container.20 with minecraft:light_blue_dye{CustomModelData: 120014, display: {Name: '[{"translate":"item.dreamland.wand_blueprint","italic":false}]'},id: "dreamland:wand_blueprint", dreamland: {isTemp: 0b}}
item replace entity @s container.21 with minecraft:iron_ingot{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.dream_org_ingot","italic":false}]'},id: "dreamland:dream_org_ingot", dreamland: {isTemp: 0b}}
item replace entity @s container.22 with minecraft:iron_ingot{CustomModelData: 120002, display: {Name: '[{"translate":"item.dreamland.illusory_ingot","italic":false}]'},id: "dreamland:illusory_ingot", dreamland: {isTemp: 0b}}
item replace entity @s container.23 with minecraft:iron_ingot{CustomModelData: 120003, display: {Name: '[{"translate":"item.dreamland.illusory_ingot","italic":false}]'},id: "dreamland:unnamed_ingot", dreamland: {isTemp: 0b}}
item replace entity @s container.24 with minecraft:nether_star{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.dream_star","italic":false}]'},id: "dreamland:dream_star", dreamland: {isTemp: 0b}}
item replace entity @s container.25 with minecraft:light_blue_dye{CustomModelData: 120027, display: {Name: '[{"translate":"item.dreamland.fire_crystal","italic":false}]',Lore:['{"translate": "item.dreamland.wand.name.blazing","color": "#FF0000"}']},id: "dreamland:fire_crystal", dreamland: {WandEx:[1],isTemp: 0b}}
item replace entity @s container.26 with minecraft:light_blue_dye{CustomModelData: 120030, display: {Name: '[{"translate":"item.dreamland.natural_crystal","italic":false}]',Lore:['{"translate": "item.dreamland.wand.name.natural","color": "#00FF00"}']},id: "dreamland:natural_crystal", dreamland: {WandEx:[2],isTemp: 0b}}