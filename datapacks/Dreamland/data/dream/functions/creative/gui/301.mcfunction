#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#301方块类1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run tag @s add dream_just
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
replaceitem entity @s container.9 minecraft:carrot_on_a_stick{CustomModelData:12003,display:{Name:'[{"translate":"dream.item.name.craftingtable","italic":false}]'},tag:{id:"dreamland:crafting_table"}} 
replaceitem entity @s container.10 minecraft:carrot_on_a_stick{CustomModelData:12004,display:{Name:'[{"translate":"dream.item.name.infuse_table","italic":false}]'},tag:{id:"dreamland:infuse_table"}}
replaceitem entity @s container.11 minecraft:carrot_on_a_stick{CustomModelData:12009,display:{Name:'[{"translate":"dream.item.name.dream_defender","italic":false}]'},tag:{id:"dreamland:dream_defender"}}
replaceitem entity @s container.12 minecraft:carrot_on_a_stick{CustomModelData:120011,display:{Name:'[{"translate":"dream.item.name.dream_breaker","italic":false}]'},tag:{id:"dreamland:dream_breaker"}}
replaceitem entity @s container.13 minecraft:carrot_on_a_stick{CustomModelData:12006,display:{Name:'[{"translate":"dream.item.name.dream_portal","italic":false}]'},tag:{id:"dreamland:dream_portal"}}
replaceitem entity @s container.14 minecraft:carrot_on_a_stick{CustomModelData:120013,display:{Name:'[{"translate":"dream.item.name.dream_beacon","italic":false}]'},tag:{id:"dreamland:dream_beacon"}}
replaceitem entity @s container.15 air
replaceitem entity @s container.16 air
replaceitem entity @s container.17 air
replaceitem entity @s container.18 air
replaceitem entity @s container.19 air
replaceitem entity @s container.20 air
replaceitem entity @s container.21 air
replaceitem entity @s container.22 air
replaceitem entity @s container.23 air
replaceitem entity @s container.24 air
replaceitem entity @s container.25 air
replaceitem entity @s container.26 air