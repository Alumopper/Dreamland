#史莱姆地
function dream:biome/slimeland/tick
#粉红羊
execute as @e[type=sheep,predicate=dream:if_entity/in_pinkplain] run data modify entity @s Color set value 6
#ddp末影人
execute as @e[type=enderman,predicate=dream:if_entity/in_deepdeepdark] run data modify entity @s DeathLootTable set value "dream:entity/enderman_inddp"
#漂浮海洋
execute as @a[predicate=dream:if_entity/in_floating_ocean] run function dream:biome/floating_ocean/tick