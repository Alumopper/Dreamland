#好中二的话233
tellraw @p [{"translate":"gui.dreamland.dream_beacon.title","color":"gray","italic": true}]
#生命恢复
execute if entity @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice",Count:9b}},distance=..1.5] run function dreamland:beacon/each/regeneration
#力量
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:3b}},distance=..1.5] run function dreamland:beacon/each/strength
#速度
execute if entity @e[type=item,nbt={Item:{id:"minecraft:feather",Count:6b}},distance=..1.5] if entity @e[type=item,nbt={Item:{tag:{id:"dreamland:cloud"},Count:3b}}] run function dreamland:beacon/each/speed
#跳跃提升
execute if entity @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot",Count:4b}},distance=..1.5] run function dreamland:beacon/each/jump_boost
#生命提升
execute if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:22b}},distance=..1.5] run function dreamland:beacon/each/health_boost
#抗性提升
execute if entity @e[type=item,nbt={Item:{id:"minecraft:scute",Count:2b}},distance=..1.5] run function dreamland:beacon/each/resistance
#救赎
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_apple",Count:2b}},distance=..1.5] run function dreamland:beacon/each/cure
#杀戮
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_sword"}},distance=..1.5] run function dreamland:beacon/each/killer
#夜视
execute if entity @e[type=item,nbt={Item:{id:"minecraft:golden_carrot",Count:3b}},distance=..1.5] run function dreamland:beacon/each/night_vision
#水下呼吸
execute if entity @e[type=item,nbt={Item:{id:"minecraft:pufferfish",Count:3b}},distance=..1.5] if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] run function dreamland:beacon/each/water_breathing
#急迫
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},distance=..1.5] run function dreamland:beacon/each/haste
