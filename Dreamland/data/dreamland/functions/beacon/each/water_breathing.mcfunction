scoreboard players set @e[tag=dream_beacon,limit=1,sort=nearest] dream_beacon 9
tag @e[tag=dream_beacon,limit=1,sort=nearest] remove dream_under_using
kill @e[type=item,nbt={Item:{tag:{id:"dreamland:dream_power_core"}}},distance=..1.5]
kill @e[type=item,nbt={Item:{id:"minecraft:pufferfish",Count:3b}},distance=..1.5]
kill @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}]