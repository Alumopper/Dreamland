#3阶段使用的tick函数
#世界混乱
#time add 1000t
#weather thunder
#TODO 被遗弃的特性
#execute as @e[type=creeper,predicate=dream:if_entity/in_chaos,nbt=!{powered:true}] at @s run summon lightning_bolt ~ ~ ~
#execute as @e[type=pig,predicate=dream:if_entity/in_chaos] at @s run summon lightning_bolt ~ ~ ~
#生物加强
#友善生物敌对化
execute as @e[type=chicken,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] at @s run summon chicken ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/chaos",IsBaby:true}]}
execute as @e[type=chicken,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] run tp @s ~ ~-256 ~
execute as @e[type=cow,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] at @s run summon cow ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/chaos",IsBaby:true}]}
execute as @e[type=cow,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] run tp @s ~ ~-256 ~
execute as @e[type=pig,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] at @s run summon chicken ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/chaos",IsBaby:true}]}
execute as @e[type=pig,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] run tp @s ~ ~-256 ~
execute as @e[type=sheep,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] at @s run summon chicken ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/chaos",IsBaby:true}]}
execute as @e[type=sheep,tag=!dream_choatic_animal,predicate=dream:if_entity/in_chaos] run tp @s ~ ~-256 ~
effect give @e[type=#dream:choatic_animals] speed 1 0 false
#骑乘僵尸药水效果
effect give @e[tag=dream_choatic_animal_passenger] invisibility 10 0 false
effect give @e[tag=dream_choatic_animal_passenger] fire_resistance 10 5 false
execute as @e[tag=dream_choatic_animal_passenger] at @s unless entity @e[type=#dream:choatic_animals,distance=0..2] run tp @s ~ -250 ~
#黑洞
scoreboard players add dream_black_hole_clear dream_timer 1
execute if score dream_black_hole_clear dream_timer matches 900 run scoreboard players add dream_blackhole_radius dream_counter 1