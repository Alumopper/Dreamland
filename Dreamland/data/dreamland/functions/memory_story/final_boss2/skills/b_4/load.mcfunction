execute as @a run attribute @s generic.max_health base set 75.0
bossbar set dreamland:boss name "System.core"
scoreboard players set dream_temp.ma.fb2_temp.stage dream_counter 1
execute as @e[tag=entity.dream.finalboss2] run function finalboss_ani:set_variant/half
function dreamland:memory_story/final_boss2/skills/1_1/load
effect give @a nausea 10 0
effect give @a regeneration 114514 2 true
execute as @a[tag=entity.dream.finalboss2] run attribute @s generic.armor base set 10.0
data modify entity @e[tag=entity.dream.finalboss2,limit=1] NoGravity set value true
scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 0

tellraw @a {"translate":"word.dream.memory_abyss.sys4","color": "gray","italic": true}