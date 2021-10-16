#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#001（1）首页
#101装备及工具页1
#201材料页1
#301方块类1
#401工具类1
#501鱼汤相关物品1
#这里是首页
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]},tag=!dream_just] at @s run function dream:creative/kill
execute if entity @s[nbt=!{Items:[{Slot:10b}]},tag=!dream_just] run scoreboard players set @s dream_c_page 101
execute if entity @s[nbt=!{Items:[{Slot:11b}]},tag=!dream_just] run scoreboard players set @s dream_c_page 201
execute if entity @s[nbt=!{Items:[{Slot:12b}]},tag=!dream_just] run scoreboard players set @s dream_c_page 301
execute if entity @s[nbt=!{Items:[{Slot:13b}]},tag=!dream_just] run scoreboard players set @s dream_c_page 401
execute if entity @s[nbt=!{Items:[{Slot:14b}]},tag=!dream_just] run scoreboard players set @s dream_c_page 501
#维持界面正常
replaceitem entity @s container.0 red_dye{CustomModelData:12001,display:{Name:'{"translate":"dream.gui.creative.close"}'},tag:{isTemp:1b}}
replaceitem entity @s container.1 red_dye{CustomModelData:12005,display:{Name:'{"translate":"dream.gui.creative.nolast"}'},tag:{isTemp:1b}}
replaceitem entity @s container.2 red_dye{CustomModelData:12006,display:{Name:'{"translate":"dream.gui.creative.nonext"}'},tag:{isTemp:1b}}
replaceitem entity @s container.3 air
replaceitem entity @s container.4 air
replaceitem entity @s container.5 air
replaceitem entity @s container.6 air
replaceitem entity @s container.7 air
replaceitem entity @s container.8 air
replaceitem entity @s container.9 air
replaceitem entity @s container.10 diamond_chestplate{display:{Name:'{"translate":"dream.gui.creative.armor"}'},tag:{isTemp:1b}} 
replaceitem entity @s container.11 light_blue_dye{CustomModelData:12001,display:{Name:'{"translate":"dream.gui.creative.material"}'},tag:{isTemp:1b}}
replaceitem entity @s container.12 carrot_on_a_stick{CustomModelData:12003,display:{Name:'{"translate":"dream.gui.creative.block"}'},tag:{isTemp:1b}}
replaceitem entity @s container.13 carrot_on_a_stick{display:{Name:'{"translate":"dream.gui.creative.tool"}'},tag:{isTemp:1b}}
replaceitem entity @s container.14 milk_bucket{CustomModelData:12001,display:{Name:'{"translate":"dream.gui.creative.fishsoup"}'},tag:{isTemp:1b}}
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
#解除保护
tag @s remove dream_just