#末影水晶回血
execute unless entity @e[type=end_crystal,distance=0..5] run summon end_crystal ~ ~3 ~ {Tags:["dream_nightmare_p"]}
execute if score dream_nightmare dream_counter matches ..499 run scoreboard players add dream_nightmare dream_counter 1
execute at @e[tag=dream_nightmare] if entity @e[type=end_crystal,distance=0..5] run schedule function dream:entity/nightmare/skills/skill3_1 2s