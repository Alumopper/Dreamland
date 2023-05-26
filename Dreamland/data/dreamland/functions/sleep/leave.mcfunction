tag @s add dream_will_tp
execute as @e[tag=dream_bed_id] if score @s dream_bed_id = @a[tag=dream_will_tp,limit=1] dream_bed_id at @s run tp @a[tag=dream_will_tp] ~ ~ ~
tag @s remove dream_will_tp
loot give @s loot dreamland:dream_essence
execute as @e[tag=dream_bed_id] if score @s dream_bed_id = @a[tag=dream_will_tp,limit=1] dream_bed_id at @s run kill @s
#基于玩家失明和反胃效果
effect give @s blindness 5
effect give @s nausea 8