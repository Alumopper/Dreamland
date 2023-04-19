function dream:creative/gui/gui
tp @e[tag=dream_creative_marker,limit=1,sort=nearest] @s
execute unless entity @a[distance=..20] run kill @e[tag=dream_creative_marker,limit=1,sort=nearest]
execute unless entity @a[distance=..20] run function dream:creative/kill