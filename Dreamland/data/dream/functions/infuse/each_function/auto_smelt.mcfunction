execute as @e[type=item,distance=0..4] if entity @s[nbt={Item:{id:"minecraft:iron_ore"}}] run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute as @e[type=item,distance=0..4] if entity @s[nbt={Item:{id:"minecraft:gold_ore"}}] run data modify entity @s Item.id set value "minecraft:gold_ingot"