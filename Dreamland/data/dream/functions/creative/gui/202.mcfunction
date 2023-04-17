#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#202材料页2
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:1b}]}] run scoreboard players set @s dream_c_page 201
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"gui.dream.creative.back"}'}, tag: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120004, display: {Name: '{"translate":"gui.dream.creative.lastpage"}'}, tag: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"gui.dream.creative.nonext"}'}, tag: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:light_blue_dye{CustomModelData: 120028, display: {Name: '[{"translate":"item.dreamland.water_crystal","italic":false}]',Lore:['{"translate": "dream.item.wand.name.nimble","color": "#2E64FE"}']}, tag: {id: "dreamland:water_crystal",WandEx:[3],isTemp: 0b}}
item replace entity @s container.10 with minecraft:light_blue_dye{CustomModelData: 120029, display: {Name: '[{"translate":"item.dreamland.void_crystal","italic":false}]',Lore:['{"translate": "dream.item.wand.name.void","color": "#E6E6E6"}']}, tag: {id: "dreamland:void_crystal",WandEx:[4],isTemp: 0b}}
item replace entity @s container.11 with minecraft:light_blue_dye{CustomModelData: 120031, display: {Name: '[{"translate":"item.dreamland.ender_crystal","italic":false}]',Lore:['{"translate": "dream.item.wand.name.teleport","color": "#9A2EFE"}']}, tag: {id: "dreamland:ender_crystal",WandEx:[5],isTemp: 0b}}
item replace entity @s container.12 with minecraft:light_blue_dye{CustomModelData: 120033, display: {Name: '[{"translate":"item.dreamland.void_energy","italic":false}]'}, tag: {id: "dreamland:void_energy",isTemp: 0b}}
item replace entity @s container.13 with minecraft:light_blue_dye{CustomModelData: 120034, display: {Name: '[{"translate":"item.dreamland.memory_fragment","italic":false}]'}, tag: {id: "dreamland:memory_fragment",isTemp: 0b}}
item replace entity @s container.14 with minecraft:light_blue_dye{CustomModelData: 120035, display: {Name: '[{"translate":"item.dreamland.memory_crystal","italic":false}]'}, tag: {id: "dreamland:memory_crystal",isTemp: 0b}}
item replace entity @s container.15 with minecraft:ender_pearl{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.dark_pearl","italic":false}]'}, tag: {id: "dreamland:dark_pearl",isTemp: 0b}}
item replace entity @s container.16 with minecraft:ender_eye{CustomModelData: 120001, display: {Name: '[{"translate":"item.dreamland.dark_eye","italic":false}]'}, tag: {id: "dreamland:dark_eye",isTemp: 0b}}
item replace entity @s container.17 with minecraft:light_blue_dye{CustomModelData: 120036, display: {Name: '[{"translate":"item.dreamland.dark_crystal","italic":false}]'}, tag: {id: "dreamland:dark_crystal",isTemp: 0b}}
item replace entity @s container.18 with air
item replace entity @s container.19 with air
item replace entity @s container.20 with air
item replace entity @s container.21 with air
item replace entity @s container.22 with air
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
item replace entity @s container.26 with air