#云伞检测射线
execute unless block ~ ~ ~ #dreamland:air run tag @s add dream_not_under_sky
execute if entity @s[distance=0..256] if block ~ ~ ~ #dreamland:air positioned ~ ~1 ~ run function dreamland:items/cloud_umbrella_ray