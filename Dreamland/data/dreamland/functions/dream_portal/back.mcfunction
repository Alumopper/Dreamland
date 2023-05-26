tag @s add dream_will_tp
execute as @e[tag=dream_bed_id] if score @s dream_bed_id = @a[tag=dream_will_tp,limit=1] dream_bed_id at @s run tp @a[tag=dream_will_tp] ~ ~ ~
tag @s remove dream_will_tp
execute as @e[tag=dream_bed_id] if score @s dream_bed_id = @a[tag=dream_will_tp,limit=1] dream_bed_id at @s run kill @s
kill @e[tag=block.dreamland.dream_portal_pointer,limit=1,sort=nearest]
#基于玩家失明和反胃效果
effect give @s nausea 5