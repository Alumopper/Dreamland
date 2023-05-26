#末影水晶回血
execute unless entity @e[type=end_crystal,distance=0..5] run summon end_crystal ~ ~3 ~ {Tags:["entity.dreamland.nightmare_p"]}
execute if score entity.dreamland.nightmare dream_counter matches ..499 run scoreboard players add entity.dreamland.nightmare dream_counter 1
execute at @e[tag=entity.dreamland.nightmare] if entity @e[type=end_crystal,distance=0..5] run schedule function dreamland:entity/nightmare/skills/skill3_1 2s