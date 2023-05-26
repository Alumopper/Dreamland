#尝试生成
tag @s add block.dreamland.void_ore.end
summon marker ~ ~ ~ {Tags:["block.dreamland.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dreamland.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dreamland.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dreamland.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dreamland.void_ore.generator"],NoGravity:true}
spreadplayers ~ ~ 23.9 24.0 false @e[tag=block.dreamland.void_ore.generator]
execute as @e[tag=block.dreamland.void_ore.generator] at @s positioned ~ -24 ~ unless entity @e[tag=block.dreamland.void_ore,distance=..20] run function dreamland:entity/void_ore/summon
kill @e[tag=block.dreamland.void_ore.generator]