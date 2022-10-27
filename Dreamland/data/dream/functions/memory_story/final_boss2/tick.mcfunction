#镜面实体投射
function dream:memory_story/final_boss2/mirror
execute as @e[tag=dream_finalboss2] at @s facing entity @a[limit=1] eyes run tp @s ~ ~ ~ ~ ~ 
#玩家跟踪器
execute as @a at @s run function dream:memory_story/final_boss1/tracker_chase
