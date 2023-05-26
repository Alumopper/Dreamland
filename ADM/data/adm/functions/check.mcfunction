#adm_showdebuginfo
#检测数据包加载情况
execute if score #adm_showdebuginfo adm_option matches 1 run tellraw @a "检查数据包加载情况中"
scoreboard players set #adm_dptest adm_dptest 0
execute store success score #adm_dptest adm_dptest run function dreamland:adm
execute if score #adm_showdebuginfo adm_option matches 1 if score #adm_dptest adm_dptest matches 0 run tellraw @a {"text":"[ERROR][Dreamland]未加载","color":"red"}
