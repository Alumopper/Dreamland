#尝试生成
tag @s add block.dream.void_ore.end
summon marker ~ ~ ~ {Tags:["block.dream.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dream.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dream.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dream.void_ore.generator"],NoGravity:true}
summon marker ~ ~ ~ {Tags:["block.dream.void_ore.generator"],NoGravity:true}
spreadplayers ~ ~ 23.9 24.0 false @e[tag=block.dream.void_ore.generator]
execute as @e[tag=block.dream.void_ore.generator] at @s positioned ~ -24 ~ unless entity @e[tag=block.dream.void_ore,distance=..20] run function dreamland:entity/void_ore/summon
kill @e[tag=block.dream.void_ore.generator]