#附近16格内有玩家才显示
execute if entity @a[distance=..16] if entity @s[tag=!block.dreamland.void_ore_visible] run data modify entity @s view_range set value 16
execute if entity @a[distance=..16] if entity @s[tag=!block.dreamland.void_ore_visible] run tag @s add block.dreamland.void_ore_visible
execute unless entity @a[distance=..16] if entity @s[tag=block.dreamland.void_ore_visible] run data modify entity @s view_range set value 0
execute unless entity @a[distance=..16] if entity @s[tag=block.dreamland.void_ore_visible] run tag @s remove block.dreamland.void_ore_visible