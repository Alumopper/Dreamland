scoreboard players set @e[tag=dream_beacon,limit=1,sort=nearest] dream_beacon 6
tag @e[tag=dream_beacon,limit=1,sort=nearest] remove dream_under_using
kill @e[type=item,nbt={Item:{tag:{id:"dreamland:dream_power_core"}}},distance=..1.5]
kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:2b}},distance=..1.5]