execute as @a run attribute @s generic.max_health base set 75.0
bossbar set dream:boss name "System.core"
scoreboard players set dream_temp.ma.fb2_temp.stage dream_counter 1
execute as @e[tag=entity.dream.finalboss2] run function finalboss_ani:set_variant/half
function dream:memory_story/final_boss2/skills/1_1/load
effect give @a nausea 5 0
execute as @a[tag=entity.dream.finalboss2] run attribute @s generic.armor base set 10.0
data modify entity @e[tag=entity.dream.finalboss2,limit=1] NoGravity set value true
scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 0
#玩家平衡性增益调整
tellraw @a [{"text": "请务必……战胜它……","italic": true,"color": "#555555"}]