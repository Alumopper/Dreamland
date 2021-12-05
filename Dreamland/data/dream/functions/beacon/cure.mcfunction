data modify entity @s NoAI set value 1b
summon villager ~ ~ ~
data modify entity @e[type=villager,limit=1,sort=nearest] VillagerData set from entity @s VillagerData
tp @s ~ ~-100 ~ 