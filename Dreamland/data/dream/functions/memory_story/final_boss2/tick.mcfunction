#游戏是否结束
execute unless entity @e[tag=dream_finalboss2] run function dream:memory_story/final_boss2/end 
#镜面实体投射
function dream:memory_story/final_boss2/mirror
execute as @e[tag=dream_finalboss2] at @s facing entity @a[limit=1] eyes run tp @s ~ ~ ~ ~ ~ 
#玩家跟踪器
execute as @e[tag=dream_playerpos_tracker] at @s run function dream:memory_story/final_boss1/tracker_chase
#region 血量绑定
    #获取boss血量
    execute store result score dream_finalbosshealth dream_boss_hp run data get entity @e[tag=dream_finalboss2,limit=1] Health
    #获取玩家最大血量
    scoreboard players set dream_players_maxhealth dream_counter 0
    execute as @a if score @s dream_player_health > dream_players_maxhealth dream_counter run scoreboard players operation dream_players_maxhealth dream_counter = @s dream_player_health
    #如果血量不相同，修改血量
    execute unless score dream_finalbosshealth dream_boss_hp = dream_players_maxhealth dream_counter run function dream:memory_story/final_boss2/health_bundle
#endregion
#boss栏
execute store result bossbar dream:boss value run scoreboard players get dream_finalbosshealth dream_boss_hp
#技能
function dream:memory_story/final_boss2/skills/tick