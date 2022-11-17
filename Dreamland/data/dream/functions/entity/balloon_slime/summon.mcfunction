summon slime ~ ~10 ~ {NoGravity:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1.0}],Tags:[entity.dream.balloon_slime,entity.dream.balloon_slime_just],Passengers:[{id:"minecraft:armor_stand",ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120003}}],Invisible:1b,Tags:["entity.dream.balloon_slime_model"]}],DeathLootTable:"dream:entity/balloon_slime"}
#寿命计时
scoreboard players set @e[tag=entity.dream.balloon_slime_just] dream_timer 0
tag @e[tag=entity.dream.balloon_slime_just] remove entity.dream.balloon_slime_just
tag @s add dream_unable_to_summon_slime