#declare tag dream_finalboss2
#declare tag aj.finalboss_ani.root
#玩家跟踪器
execute as @a at @s run function dream:memory_story/final_boss1/tracker
#生成实体
summon zombie ~ ~ ~ {NoAI:true,Silent:false,Tags:["dream_finalboss2"],Attributes:[{Name:"minecraft:generic.max_health",Base:150.0}]}
#模型
function finalboss_ani:summon/default
#技能重置
scoreboard players set @e[tag=dream_finalboss2,limit=1] dream_counter 0