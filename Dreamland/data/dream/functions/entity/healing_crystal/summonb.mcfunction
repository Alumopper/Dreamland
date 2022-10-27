#declare tag dream_healing_crystal "治疗水晶"
#declare tag dream_cyst_blue "治疗水晶蓝色限定"
summon bat ~ ~ ~ {Tags:["dream_healing_crystal","dream_cyst_blue"],Passengers:[{id:"minecraft:armor_stand",Tags:["dream_healing_crystal_model"],Invisible:0b,NoGravity:true,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120007}}]}],NoAI:true}
effect give @e[tag=dream_healing_crystal] invisibility 114514 0 true
scoreboard players set @e[tag=dream_cyst_blue,limit=1] dream_timer 0
