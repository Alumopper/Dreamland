#附近16格内有玩家才显示
execute if entity @a[distance=..16] run item replace entity @s armor.head with light_blue_dye{CustomModelData: 120032}
execute unless entity @a[distance=..16] run item replace entity @s armor.head with air