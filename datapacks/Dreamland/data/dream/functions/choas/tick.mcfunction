#3阶段使用的tick函数
#世界混乱
#time add 1000t
#weather thunder
#execute as @e[type=creeper,predicate=dream:if_entity/in_choas,nbt=!{powered:true}] at @s run summon lightning_bolt ~ ~ ~
#execute as @e[type=pig,predicate=dream:if_entity/in_choas] at @s run summon lightning_bolt ~ ~ ~
#生物加强
#友善生物敌对化
execute as @e[predicate=dream:if_entity/in_choas,type=chicken,tag=!dream_choatic_animal] at @s run summon chicken ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/choas",IsBaby:true}]}
execute as @e[predicate=dream:if_entity/in_choas,type=chicken,tag=!dream_choatic_animal] run tp @s ~ ~-256 ~
execute as @e[predicate=dream:if_entity/in_choas,type=cow,tag=!dream_choatic_animal] at @s run summon cow ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/choas",IsBaby:true}]}
execute as @e[predicate=dream:if_entity/in_choas,type=cow,tag=!dream_choatic_animal] run tp @s ~ ~-256 ~
execute as @e[predicate=dream:if_entity/in_choas,type=pig,tag=!dream_choatic_animal] at @s run summon chicken ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/choas",IsBaby:true}]}
execute as @e[predicate=dream:if_entity/in_choas,type=pig,tag=!dream_choatic_animal] run tp @s ~ ~-256 ~
execute as @e[predicate=dream:if_entity/in_choas,type=sheep,tag=!dream_choatic_animal] at @s run summon chicken ~ ~ ~ {Tags:[dream_choatic_animal],Passengers:[{id:"minecraft:zombie",Tags:["dream_choatic_animal_passenger"],DeathLootTable:"dream:entity/choas",IsBaby:true}]}
execute as @e[predicate=dream:if_entity/in_choas,type=sheep,tag=!dream_choatic_animal] run tp @s ~ ~-256 ~
effect give @e[type=#dream:choatic_animals] speed 1 0 false
#骑乘僵尸药水效果
effect give @e[tag=dream_choatic_animal_passenger] invisibility 10 0 false
effect give @e[tag=dream_choatic_animal_passenger] instant_damage 10 5 false
effect give @e[tag=dream_choatic_animal_passenger] fire_resistance 10 5 false

execute as @e[tag=dream_choatic_animal_passenger] at @s unless entity @e[type=#dream:choatic_animals,distance=0..2] run tp @s ~ -250 ~
#黑洞生成
execute unless entity @e[tag=dream_black_hole] in dream:choas run function dream:structure/black_hole/load