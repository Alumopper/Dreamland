tag @s add dream_will_tp
execute as @e[tag=dream_bed_id] if score @s dream_bed_id = @a[tag=dream_will_tp,limit=1] dream_bed_id at @s run tp @a[tag=dream_will_tp] ~ ~ ~
tag @s remove dream_will_tp
loot give Alumopper_ loot dream:dream_essence
execute as @e[tag=dream_bed_id] if score @s dream_bed_id = @a[tag=dream_will_tp,limit=1] dream_bed_id at @s run kill @s