#declare tag entity.dream.finalboss2 实体
#declare tag aj.finalboss_ani.root 模型
#玩家跟踪器
execute as @a at @s run function dream:memory_story/final_boss1/tracker
#生成实体
summon zombie ~ ~ ~ {NoAI:true,Silent:true,Tags:["entity.dream.finalboss2"],Attributes:[{Name:"minecraft:generic.max_health",Base:150.0},{Name:"minecraft:generic.armor",Base:5.0}],Health:150.0f}
#隐身
effect give @e[tag=entity.dream.finalboss2] invisibility 114514 0 true
#模型
function finalboss_ani:summon/default
#技能指针重置
scoreboard players set @e[tag=entity.dream.finalboss2,limit=1] dream_counter 0
#技能计时开始
function dream:memory_story/final_boss2/skills/schedule
#护场计时
function dream:memory_story/final_boss2/skills/b_1/flush
#b-6
scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 0