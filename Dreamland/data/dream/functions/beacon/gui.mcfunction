#没错，又是熟悉的我最爱的（划去）tellraw界面awa
kill @e[type=item,nbt={Item:{tag:{dreamland:{id:"dreamland:dream_power_core"}}}},distance=..1.5]
tag @s add dream_under_using
#好中二的话233
tellraw @p [{"text":"神秘的力量正听从你的召唤......","color":"gray","italic": true},{"text":"\n选择你需要的属性:"}]
tellraw @p [{"text": "[生命恢复]","color":"light_purple","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/regeneration"}}]
tellraw @p [{"text": "[力量]","color":"red","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/strength"}}]
tellraw @p [{"text": "[速度]","color":"aqua","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/speed"}}]
tellraw @p [{"text": "[跳跃提升]","color":"green","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/jump_boost"}}]
tellraw @p [{"text": "[生命提升]","color":"red","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/health_boost"}}]
tellraw @p [{"text": "[抗性提升]","color":"gold","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/resistance"}}]
tellraw @p [{"text": "[救赎]","color":"light_purple","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/cure"}}]
tellraw @p [{"text": "[杀戮]","color":"dark_red","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/killer"}}]
tellraw @p [{"text": "[夜视]","color":"dark_blue","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/night_vision"}}]
tellraw @p [{"text": "[水下呼吸]","color":"blue","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/water_breathing"}}]
tellraw @p [{"text": "[急迫]","color":"yellow","clickEvent": {"action": "run_command","value": "/execute if entity @e[limit=1,sort=nearest,tag=dream_under_using,tag=dream_beacon] run function dream:beacon/each/haste"}}]