scoreboard players set @e[tag=dream_beacon,limit=1,sort=nearest] dream_beacon 3
tag @e[tag=dream_beacon,limit=1,sort=nearest] remove dream_under_using
kill @e[type=item,nbt={Item:{tag:{id:"dreamland:dream_power_core"}}},distance=..1.5]
kill @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot",Count:4b}},distance=..1.5]