summon lightning_bolt ~ ~ ~
tp @s ^ ^ ^1
execute if entity @a[distance=0..2] run kill @s
execute positioned 0 70 0 unless entity @s[distance=0..100] run kill @s