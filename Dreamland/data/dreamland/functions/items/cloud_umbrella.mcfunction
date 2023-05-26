#在下雨时为云伞添加粒子效果
function dreamland:items/cloud_umbrella_ray
execute unless entity @s[tag=dream_not_under_sky] unless entity @s[predicate=!dreamland:is_raining/in_desert] positioned ~ ~1.3 ~ run particle falling_water ~ ~ ~ 0.2 0.05 0.2 1.0 5
tag @s remove dream_not_under_sky