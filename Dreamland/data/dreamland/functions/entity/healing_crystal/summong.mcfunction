#declare tag entity.dreamland.healing_crystal "治疗水晶"
#declare tag entity.dreamland.healing_crystal.green "治疗水晶绿色限定"
summon bat ~ ~ ~ {Silent:true,Tags:["entity.dreamland.healing_crystal","entity.dreamland.healing_crystal.green"],Passengers:[{id:"minecraft:armor_stand",Tags:["entity.dreamland.healing_crystal_model"],Invisible:1b,NoGravity:true,ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120008}}]}]}
effect give @e[tag=entity.dreamland.healing_crystal] invisibility 114514 0 true
effect give @e[tag=entity.dreamland.healing_crystal_model] invisibility 114514 0 true