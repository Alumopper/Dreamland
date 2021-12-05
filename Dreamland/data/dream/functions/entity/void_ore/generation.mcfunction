#尝试生成
tag @s add dream_void_ore_end
summon armor_stand ~ ~ ~ {Invisible:true,Tags:["dream_void_ore_generator"],NoGravity:true}
summon armor_stand ~ ~ ~ {Invisible:true,Tags:["dream_void_ore_generator"],NoGravity:true}
summon armor_stand ~ ~ ~ {Invisible:true,Tags:["dream_void_ore_generator"],NoGravity:true}
summon armor_stand ~ ~ ~ {Invisible:true,Tags:["dream_void_ore_generator"],NoGravity:true}
summon armor_stand ~ ~ ~ {Invisible:true,Tags:["dream_void_ore_generator"],NoGravity:true}
spreadplayers ~ ~ 23.9 24.0 false @e[tag=dream_void_ore_generator]
execute as @e[tag=dream_void_ore_generator] at @s positioned ~ -30 ~ unless entity @e[tag=dream_void_ore,distance=..20] run function dream:entity/void_ore/summon
kill @e[tag=dream_void_ore_generator]