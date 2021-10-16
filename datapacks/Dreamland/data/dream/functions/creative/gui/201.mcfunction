#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#201材料页1
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
replaceitem entity @s container.9 minecraft:glowstone_dust{CustomModelData:12001,display:{Name:'[{"translate":"dream.item.name.dreamdust","italic":false}]'},tag:{id:"dreamland:dreamdust"}}
replaceitem entity @s container.10 minecraft:light_blue_dye{CustomModelData:12001,display:{Name:'[{"translate":"dream.item.name.dream_essence","italic": false}]'},tag:{id:"dreamland:dream_essence"}}
replaceitem entity @s container.11 minecraft:light_blue_dye{CustomModelData:12002,display:{Name:'[{"translate":"dream.item.name.sweetdream_essence","italic":false}]'},tag:{id:"dreamland:sweetdream_essence"}}
replaceitem entity @s container.12 minecraft:light_blue_dye{CustomModelData:12003,display:{Name:'[{"translate":"dream.item.name.nightmare_essence","italic":false}]'},tag:{id:"dreamland:nightmare_essence"}}
replaceitem entity @s container.13 minecraft:light_blue_dye{CustomModelData:12005,display:{Name:'[{"translate":"dream.item.name.dimension_core","italic":false}]'},tag:{id:"dreamland:dimension_core"}}
replaceitem entity @s container.14 minecraft:light_blue_dye{CustomModelData:12007,display:{Name:'[{"translate":"dream.item.name.dream_power_core","italic":false}]'},tag:{id:"dreamland:dream_power_core"}}
replaceitem entity @s container.15 minecraft:light_blue_dye{CustomModelData:120022,display:{Name:'[{"translate":"dream.item.name.cloud","italic": false}]'},tag:{id:"dreamland:cloud"}}
replaceitem entity @s container.16 minecraft:slime_ball{CustomModelData:12001,display:{Name:'[{"translate":"dream.item.name.blue_slime_ball","italic":false}]'},tag:{id:"dreamland:blue_slime_ball"}}
replaceitem entity @s container.17 minecraft:light_blue_dye{CustomModelData:12004,display:{Name:'[{"translate":"dream.item.name.slime_tear","italic":false}]'},tag:{id:"dreamland:slime_tear"}}
replaceitem entity @s container.18 minecraft:light_blue_dye{CustomModelData:12009,display:{Name:'[{"translate":"dream.item.name.phantom_skelecton","italic":false}]'},tag:{id:"dreamland:phantom_skelecton"}}
replaceitem entity @s container.19 minecraft:light_blue_dye{CustomModelData:120011,display:{Name:'[{"translate":"dream.item.name.chaotic_crystallization","italic":false}]'},tag:{id:"dreamland:chaotic_crystallization"}}
replaceitem entity @s container.20 minecraft:light_blue_dye{CustomModelData:120014,display:{Name:'[{"translate":"dream.item.name.wand_blueprint","italic":false}]'},tag:{id:"dreamland:wand_blueprint"}}
replaceitem entity @s container.21 minecraft:iron_ingot{CustomModelData:12001,display:{Name:'[{"translate":"dream.item.name.dream_org_ingot","italic":false}]'},tag:{id:"dreamland:dream_org_ingot"}}
replaceitem entity @s container.22 minecraft:iron_ingot{CustomModelData:12002,display:{Name:'[{"translate":"dream.item.name.illusory_ingot","italic":false}]'},tag:{id:"dreamland:illusory_ingot"}}
replaceitem entity @s container.23 minecraft:iron_ingot{CustomModelData:12003,display:{Name:'[{"translate":"dream.item.name.unnamed_ingot","italic":false}]'},tag:{id:"dreamland:unnamed_ingot"}}
replaceitem entity @s container.24 minecraft:nether_star{CustomModelData:12001,display:{Name:'[{"translate":"dream.item.name.dream_star","italic":false}]'},tag:{id:"dreamland:dream_star"}}
replaceitem entity @s container.25 air
replaceitem entity @s container.26 air