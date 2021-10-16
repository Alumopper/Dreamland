#漂浮（云，工具的轻盈注魔，云伞）
effect give @a[tag=dream_effect_levitation256] levitation 1 255 false
effect give @a[tag=dream_effect_levitation255] levitation 1 254 false
effect clear @a[tag=!dream_effect_levitation255,predicate=dream:effects/levitation254] levitation
effect clear @a[tag=!dream_effect_levitation256,predicate=dream:effects/levitation255] levitation
tag @a remove dream_effect_levitation256
tag @a remove dream_effect_levitation255
#力量一（全套虚幻，镐击注魔）
effect give @a[tag=dream_effect_strength1] strength 1 0 false
effect clear @a[tag=!dream_effect_strength1,predicate=dream:effects/strength0] strength
tag @a remove dream_effect_strength1
#急迫一（注魔）
effect give @a[tag=dream_effect_haste1] haste 1 0 false
effect clear @a[tag=!dream_effect_haste1,predicate=dream:effects/haste0] haste
tag @a remove dream_effect_haste1
#急迫二（注魔）
effect give @a[tag=dream_effect_haste2] haste 1 1 false
effect clear @a[tag=!dream_effect_haste2,predicate=dream:effects/haste1] haste
tag @a remove dream_effect_haste2
#急迫三（注魔）
effect give @a[tag=dream_effect_haste3] haste 1 2 false
effect clear @a[tag=!dream_effect_haste3,predicate=dream:effects/haste2] haste
tag @a remove dream_effect_haste3
#抗性提升（格挡注魔）
effect give @a[tag=dream_effect_resistance1] resistance 1 0 false
effect clear @a[tag=!dream_effect_resistance1,predicate=dream:effects/resistance0] resistance
tag @a remove dream_effect_resistance1
#缓降（飘落注魔）
effect give @a[tag=dream_effect_slow_falling2] slow_falling 1 1 false
effect clear @a[tag=!dream_effect_slow_falling2,predicate=dream:effects/slow_falling1] slow_falling
tag @a remove dream_effect_slow_falling2
#跳跃提升（弹性注魔）
effect give @a[tag=dream_effect_jumpboost3] jump_boost 1 2 false
effect clear @a[tag=!dream_effect_jumpboost3,predicate=dream:effects/jump_boost2] jump_boost
tag @a remove dream_effect_jumpboost3
#水下呼吸（氧气富集注魔）
effect give @a[tag=dream_effect_water_breathing1] water_breathing 1 0 false
effect clear @a[tag=!dream_effect_water_breathing1,predicate=dream:effects/water_breathing0] water_breathing
tag @a remove dream_effect_water_breathing1
#夜视（夜视注魔）
effect give @a[tag=dream_effect_night_vision1] night_vision 1 0 false
effect clear @a[tag=!dream_effect_night_vision1,predicate=dream:effects/night_version0] night_vision 
tag @a remove dream_effect_night_vision1
#生命回复（全套未名）
effect give @a[tag=dream_effect_regeneration1] regeneration 1 0 false
effect clear @a[tag=!dream_effect_regeneration1,predicate=dream:effects/regeneration0] regeneration
tag @a remove dream_effect_regeneration1
#生命提升（全套梦神）
effect give @a[tag=dream_effect_heathboost4,predicate=!dream:effects/heathboost4] health_boost 10000 4 false
effect clear @a[tag=!dream_effect_heathboost4] health_boost