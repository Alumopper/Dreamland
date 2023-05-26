#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#001（1）首页
#101装备及工具页1
#201材料页1
#301方块类1
#401工具类1
#501鱼汤相关物品1
#---------------------------------------------------------
#001（1）
execute if score @s dream_c_page matches 1 run function dreamland:creative/gui/001
execute if score @s dream_c_page matches 101 run function dreamland:creative/gui/101
execute if score @s dream_c_page matches 102 run function dreamland:creative/gui/102
execute if score @s dream_c_page matches 201 run function dreamland:creative/gui/201
execute if score @s dream_c_page matches 202 run function dreamland:creative/gui/202
execute if score @s dream_c_page matches 301 run function dreamland:creative/gui/301
execute if score @s dream_c_page matches 401 run function dreamland:creative/gui/401
execute if score @s dream_c_page matches 501 run function dreamland:creative/gui/501