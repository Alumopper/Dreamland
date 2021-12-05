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
item replace entity @s container.0 with red_dye{CustomModelData: 120001, display: {Name: '{"translate":"dream.gui.creative.close"}'}, tag: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"dream.gui.creative.nolast"}'}, tag: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"dream.gui.creative.nonext"}'}, tag: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with air
item replace entity @s container.10 with diamond_chestplate{display: {Name: '{"translate":"dream.gui.creative.armor"}'}, tag: {isTemp: 1b}} 
item replace entity @s container.11 with light_blue_dye{CustomModelData: 120001, display: {Name: '{"translate":"dream.gui.creative.material"}'}, tag: {isTemp: 1b}}
item replace entity @s container.12 with carrot_on_a_stick{CustomModelData: 120003, display: {Name: '{"translate":"dream.gui.creative.block"}'}, tag: {isTemp: 1b}}
item replace entity @s container.13 with carrot_on_a_stick{display: {Name: '{"translate":"dream.gui.creative.tool"}'}, tag: {isTemp: 1b}}
item replace entity @s container.14 with milk_bucket{CustomModelData: 120001, display: {Name: '{"translate":"dream.gui.creative.fishsoup"}'}, tag: {isTemp: 1b}}
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
#解除保护
tag @s remove dream_just