#冰
effect give @a speed 1 100
execute at @a run fill ~-10 ~-3 ~-10 ~10 ~3 ~10 packed_ice replace end_stone
execute at @e[tag=entity.dreamland.nightmare_rotation] run summon falling_block ^ ^5 ^2 {Time:600,DropItem:false,BlockState:{Name:"minecraft:ice"},NoGravity:true}
execute at @e[tag=entity.dreamland.nightmare_rotation] run summon falling_block ^ ^5 ^-2 {Time:600,DropItem:false,BlockState:{Name:"minecraft:ice"},NoGravity:true}
execute at @e[tag=entity.dreamland.nightmare_rotation] run summon falling_block ^2 ^5 ^ {Time:600,DropItem:false,BlockState:{Name:"minecraft:ice"},NoGravity:true}
execute at @e[tag=entity.dreamland.nightmare_rotation] run summon falling_block ^-2 ^5 ^ {Time:600,DropItem:false,BlockState:{Name:"minecraft:ice"},NoGravity:true}