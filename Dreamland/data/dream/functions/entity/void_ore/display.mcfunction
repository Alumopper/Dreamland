#附近16格内有玩家才显示
execute if entity @a[distance=..16] if entity @s[tag=!block.dream.void_ore_visible] run item replace entity @s armor.head with light_blue_dye{CustomModelData: 120032}
execute if entity @a[distance=..16] if entity @s[tag=!block.dream.void_ore_visible] run tag @s add block.dream.void_ore_visible
execute unless entity @a[distance=..16] if entity @s[tag=block.dream.void_ore_visible] run item replace entity @s armor.head with air
execute unless entity @a[distance=..16] if entity @s[tag=block.dream.void_ore_visible] run tag @s remove block.dream.void_ore_visible