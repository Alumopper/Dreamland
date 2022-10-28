#计分板区
#计时器
scoreboard objectives add dream_timer dummy "计时器"
    schedule function dream:loadinf 20t append
    execute unless score dream_dreamtowerboss_pre dream_timer matches -2147483648..2147483647 run scoreboard players set dream_dreamtowerboss_pre dream_timer -1
    scoreboard players set #magic_time dream_timer 0
    execute unless score dream_world_collapse dream_timer matches -2147483648..2147483647 run scoreboard players set dream_world_collapse dream_timer -1
    scoreboard players set dream_black_hole_clear dream_timer 0
#胡萝卜钓竿使用计数
scoreboard objectives add dream_using minecraft.used:carrot_on_a_stick "胡萝卜钓竿计数"
#通用计数器及临时变量储存器
scoreboard objectives add dream_counter dummy "计数器"
    #>
    # 初始化游戏阶段——如果没有打过BossI就默认为0
    # -1     对战暗影幻术师
    # 0      开始到噩梦开启原点塔
    # 1      开启原点塔到Boss战结束
    # 2      Boss战结束到使用梦境传送门
    # 3      使用梦境传送门到击败梦魇
    # 4--二周目
    #define score_holder dream_gamestage
    execute unless score dream_if_kill_boss1 dream_counter matches -2147483648..2147483647 run scoreboard players set dream_gamestage dream_counter 0
    #最后的故事
    #-1-还没开始
    #0-剧情：太空舱
    #1-剧情：记忆深渊
    #2-剧情：最后的Boss
    #3-剧情：离开梦境
    execute unless score dream_finalstorystage dream_counter matches -2147483648..2147483647 run scoreboard players set dream_finalstorystage dream_counter -1
    execute unless score dream_infuse_stage dream_counter matches -2147483648..2147483647 run scoreboard players set dream_infuse_stage dream_counter 0
    execute unless score dream_blackhole_radius dream_counter matches -2147483648..2147483647 run scoreboard players set dream_blackhole_radius dream_counter 5
#判断玩家挥剑次数
scoreboard objectives add dream_use_sword minecraft.used:diamond_sword "挥剑次数"
#记录玩家向经验抽针中注入的经验
scoreboard objectives add dream_xp dummy "经验"
    #初始化
    execute unless score xp dream_xp matches -2147483648..2147483647 run scoreboard players set xp dream_xp 0
#记录玩家本身所有的经验
scoreboard objectives add dream_p_xp xp "个人经验"
#记录信标属性
scoreboard objectives add dream_beacon dummy "信标属性"
#记录玩家的魔法值
scoreboard objectives add dream_magic dummy "魔法值"
execute as @a unless score @s dream_magic matches -2147483648..2147483647 run scoreboard players set @s dream_magic 80
#记录维度传送时间
#tpwait值   描述
#-1         没有在等待被传送
#0..95      睡觉传送
#100..160   传送门传送
#161..162   平台生成
scoreboard objectives add dream_tpwait dummy "传送等待时间"
scoreboard players set @a dream_tpwait -1
#记录每个玩家进入两个梦境的概率
scoreboard objectives add dream_likelihood dummy "玩家进入两个梦境的概率"
execute as @a unless score @s dream_likelihood matches 0..100 run scoreboard players set @s dream_likelihood 50
#...<后补注释：用于生成随机数，决定玩家是去噩梦世界还是美梦世界   ------Alumopper 2021.6.21>
scoreboard objectives add dream_bxmingming dummy "不想命名了"
#记录玩家已做梦时长
scoreboard objectives add dream_sleeptime dummy "做梦时长"
#记录每个蓝色史莱姆的x轴方向
scoreboard objectives add dream_vx dummy "蓝色史莱姆x速度"
#记录每个蓝色史莱姆的z轴方向
scoreboard objectives add dream_vz dummy "蓝色史莱姆z速度"
#记录速度矢量方向
scoreboard objectives add dream_direction dummy "速度方向（角度制）"
#记录boss血量
scoreboard objectives add dream_boss_hp dummy "Boss血量"
#记录玩家是否使用梦境护符
scoreboard objectives add dream_tm_use dummy "使用梦境护符"
#记录玩家能获得云的间隔时间
scoreboard objectives add dream_cloudcd dummy "获得云"
#云消散的时间
scoreboard objectives add dream_clouddrt dummy "云消散"
#创造模式物品栏的页面
scoreboard objectives add dream_c_page dummy "物品栏页数"
#传送标记
scoreboard objectives add dream_bed_id dummy "标号"
    #define score_holder dream_static_bed_id 
    scoreboard players set dream_static_bed_id dream_bed_id -2147483648
#记录玩家挖掘的史莱姆块
scoreboard objectives add dream_dig_sb minecraft.mined:slime_block "史莱姆块挖掘次数"
#记录玩家挖掘的铁矿
scoreboard objectives add dream_dig_io minecraft.mined:iron_ore "铁矿挖掘次数"
#记录幻翼发射火球的延迟
scoreboard objectives add dream_phire dummy "幻翼火球发射延迟" 
#玩家潜行记录
scoreboard objectives add dream_shift minecraft.custom:sneak_time "潜行时长"
#记录玩家钓鱼
scoreboard objectives add dream_fishing minecraft.custom:fish_caught "钓鱼次数"
#玩家编号
scoreboard objectives add dream_playerno dummy "玩家编号"
    scoreboard players set $static_no dream_playerno 0
    execute as @a unless score @s dream_playerno matches -2147483648..2147483647 run function dream:other/playerno
#生成追逐者的延时
scoreboard objectives add dream_chaser_sm dummy "追逐者生成延时"
    execute as @a unless score @s dream_chaser_sm matches -2147483648..2147483647 run scoreboard players set @s dream_chaser_sm 0
#粒子圆的半径(*0.1倍率，即一位小数)
scoreboard objectives add dream_par_rad dummy "圆半径"
#粒子扩散圆的标号
scoreboard objectives add dream_par_id dummy "粒子圆标记"
    scoreboard players set $static_par_id dream_par_id 0
#玩家血量
scoreboard objectives add dream_player_health health "玩家血量"
#bossbar区
#经验池，全部玩家通用
bossbar add dream:xp ["经验池   ",{"score": {"objective": "dream_xp","name": "xp"}},"/10000"]
bossbar set dream:xp color green
bossbar set dream:xp max 10000
#boss专用
bossbar add dream:boss ""
#强制加载
execute in dream:choas run forceload add -10 -10 10 10
#结构区
#黑洞生成
execute unless entity @e[tag=dream_black_hole] in dream:choas run function dream:structure/black_hole/load
#功能区
#检测维度是否生成
execute store success score dream_dimtest dream_counter in dream:sweetdream run summon pig 0 0 0 
execute if score dream_dimtest dream_counter matches 0 run tellraw @a [{"translate":"info.dream.load.dimwarn","color": "yellow"}]