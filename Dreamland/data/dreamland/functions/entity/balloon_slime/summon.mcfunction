summon slime ~ ~10 ~ {NoGravity:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1.0}],Tags:[entity.dreamland.balloon_slime,entity.dreamland.balloon_slime_just],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120003}},Tags:["entity.dreamland.balloon_slime_model"],item_display:"head"}],DeathLootTable:"dreamland:entity/balloon_slime"}
#寿命计时
scoreboard players set @e[tag=entity.dreamland.balloon_slime_just] dream_timer 0
tag @e[tag=entity.dreamland.balloon_slime_just] remove entity.dreamland.balloon_slime_just
tag @s add dream_unable_to_summon_slime