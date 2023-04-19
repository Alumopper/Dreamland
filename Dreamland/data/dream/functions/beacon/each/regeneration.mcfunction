scoreboard players set @e[tag=dream_beacon,limit=1,sort=nearest] dream_beacon 0
tag @e[tag=dream_beacon,limit=1,sort=nearest] remove dream_under_using
#物品清除
kill @e[type=item,nbt={Item:{tag:{id:"dreamland:dream_power_core"}}},distance=..1.5]
kill @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice",Count:9b}},distance=..1.5]