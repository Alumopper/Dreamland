#移动并伤害玩家
function dream:entity/chaser/move
#自然消失
execute if score @s dream_timer matches ..-1 run kill @s
execute if score @s dream_timer matches ..-1 run particle portal ~ ~ ~ 2 2 2 0.5 100