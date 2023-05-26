#生成黑洞
execute in dreamland:chaos run summon block_display 0 130 0 {Tags:[dream_black_hole],brightness:{sky:15,block:15},shadow_radius:0,view_range:10,block_state:{Name:"minecraft:black_concrete",Properties:{}}}
#黑洞大小
scoreboard players set @e[tag=dream_black_hole] dream_counter 0