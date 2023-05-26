#岩浆块显示
execute at @e[tag=entity.dream.nightmare_rotation] run summon falling_block ^ ^5 ^2 {Time:600,DropItem:false,BlockState:{Name:"minecraft:magma_block"},NoGravity:true}
execute at @e[tag=entity.dream.nightmare_rotation] run summon falling_block ^ ^5 ^-2 {Time:600,DropItem:false,BlockState:{Name:"minecraft:magma_block"},NoGravity:true}
execute at @e[tag=entity.dream.nightmare_rotation] run summon falling_block ^2 ^5 ^ {Time:600,DropItem:false,BlockState:{Name:"minecraft:magma_block"},NoGravity:true}
execute at @e[tag=entity.dream.nightmare_rotation] run summon falling_block ^-2 ^5 ^ {Time:600,DropItem:false,BlockState:{Name:"minecraft:magma_block"},NoGravity:true}