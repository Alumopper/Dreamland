#史莱姆地
function dreamland:biome/slimeland/tick
#粉红羊
execute as @e[type=sheep,predicate=dreamland:if_entity/in_pinkplain] run data modify entity @s Color set value 6
#ddp末影人
execute as @e[type=enderman,predicate=dreamland:if_entity/in_deepdeepdark] run data modify entity @s DeathLootTable set value "dreamland:entity/enderman_inddp"
#漂浮海洋
execute as @a[predicate=dreamland:if_entity/in_floating_ocean] run function dreamland:biome/floating_ocean/tick