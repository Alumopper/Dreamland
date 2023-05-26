#declare tag entity.dream.healing_crystal "治疗水晶"
#declare tag entity.dream.healing_crystal.blue "治疗水晶蓝色限定"
summon bat ~ ~ ~ {Silent:true,Tags:["entity.dream.healing_crystal","entity.dream.healing_crystal.blue"],Passengers:[{id:"minecraft:armor_stand",Tags:["entity.dream.healing_crystal_model"],Invisible:1b,NoGravity:true,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120007}}]}],NoAI:true}
effect give @e[tag=entity.dream.healing_crystal] invisibility 114514 0 true
scoreboard players set @e[tag=entity.dream.healing_crystal.blue,limit=1] dream_timer 0
effect give @e[tag=entity.dream.healing_crystal_model] invisibility 114514 0 true