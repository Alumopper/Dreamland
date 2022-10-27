#declare tag dream_healing_crystal "治疗水晶"
#declare tag dream_cyst_green "治疗水晶绿色限定"
summon bat ~ ~ ~ {Tags:["dream_healing_crystal","dream_cyst_green"],Passengers:[{id:"minecraft:armor_stand",Tags:["dream_healing_crystal_model"],Invisible:0b,NoGravity:true,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120008}}]}]}
effect give @e[tag=dream_healing_crystal] invisibility 114514 0 true