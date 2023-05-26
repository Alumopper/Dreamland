#游戏是否结束
execute unless entity @e[tag=entity.dreamland.finalboss2] run function dreamland:memory_story/final_boss2/end 
#镜面实体投射
execute if score dream_finalboss_mirror_on dream_counter matches 1 run function dreamland:memory_story/final_boss2/mirror
#玩家跟踪器
execute as @e[tag=dream_playerpos_tracker] at @s run function dreamland:memory_story/final_boss1/tracker_chase
#region 血量绑定
#获取boss血量
    execute store result score dream_finalbosshealth dream_boss_hp run data get entity @e[tag=entity.dreamland.finalboss2,limit=1] Health
    #获取玩家最大血量
    scoreboard players set dream_players_maxhealth dream_counter 0
    execute as @a if score @s dream_player_health > dream_players_maxhealth dream_counter run scoreboard players operation dream_players_maxhealth dream_counter = @s dream_player_health
    #如果血量不相同，修改血量
    execute unless score dream_finalbosshealth dream_boss_hp = dream_players_maxhealth dream_counter run function dreamland:memory_story/final_boss2/health_bundle
#endregion
#技能
function dreamland:memory_story/final_boss2/skills/tick
#boss栏
execute store result bossbar dreamland:boss value run scoreboard players get dream_finalbosshealth dream_boss_hp
#计时
scoreboard players add dream_finalboss2_timer dream_timer 1
#重新播放bgm
execute if score dream_finalboss2_timer dream_timer matches 4800 as @a at @s run playsound dreamland:entity.finalboss2.bgm master @s ~ ~ ~
#如果增益则增加魔法
execute if score dream_finalboss_buff dream_counter matches 1 run scoreboard players add @a dream_magic 1