#移动并伤害玩家
function dreamland:entity/chaser/move
#追逐者寿命
scoreboard players remove @s dream_timer 1
execute unless predicate dreamland:if_entity/at_dark run scoreboard players remove @s dream_timer 1
#自然消失
execute if score @s dream_timer matches ..-1 run kill @s
execute if score @s dream_timer matches ..-1 run particle portal ~ ~ ~ 2 2 2 0.5 100