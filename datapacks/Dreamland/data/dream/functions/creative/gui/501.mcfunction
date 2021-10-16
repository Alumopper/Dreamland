#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#501鱼汤相关物品1
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
replaceitem entity @s container.9 minecraft:milk_bucket{CustomModelData:12001,display:{Name:'[{"translate":"fishsoup.item.name.fish_soup","italic":false}]'},tag:{id:"fishsoup:fish_soup"}}
replaceitem entity @s container.10 minecraft:apple{CustomModelData:12001,display:{Name:'[{"translate":"fishsoup.item.name.peach","italic":false}]'},tag:{id:"fishsoup:peach"}}
replaceitem entity @s container.11 air
replaceitem entity @s container.12 air
replaceitem entity @s container.13 air
replaceitem entity @s container.14 air
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