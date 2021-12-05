#记分板区
scoreboard objectives add adm_dptest dummy
scoreboard objectives add adm_option dummy
scoreboard objectives add adm_temp dummy
    scoreboard players set adm_safety_threshold adm_option 2500
execute unless score #adm_showdebuginfo adm_option matches -2147483648..2147483647 run scoreboard players set #adm_showdebuginfo adm_option 1
#检测数据包加载情况
schedule function adm:check 1s