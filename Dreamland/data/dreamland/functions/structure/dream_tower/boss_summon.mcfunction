execute in dreamland:sweetdream run summon minecraft:vindicator 0 185 0 {CustomName:'{"translate":"dreamland.name.dream_tower.boss"}',CustomNameVisible:true,Tags:[dream_boss1,dream_boss1_just],Attributes:[{Name:"minecraft:generic.max_health",Base:200.0d},{Name:"minecraft:generic.attack_damage",Base:2.0d}],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{CustomModelData:120001,tag:{isTemp:1b}}}],DeathLootTable:"dreamland:entity/boss1",ArmorItems:[{},{},{},{id:"glass",Count:1b,tag:{CustomModelData:120002,tag:{isTemp:1b}}}]}
effect give @e[tag=dream_boss1] instant_health 5 50 false
effect give @e[tag=dream_boss1] invisibility 100000 0 false
bossbar set dreamland:boss max 200
execute as @e[tag=dream_boss1] run bossbar set dreamland:boss name ["---<梦境护卫     HP:",{"score":{"objective": "dream_boss_hp","name": "@s"}},">---"]
bossbar set dreamland:boss players @a
bossbar set dreamland:boss color blue
bossbar set dreamland:boss visible true
scoreboard players set dream_boss dream_counter 1
gamemode adventure @a[gamemode=survival]
tag @a add dream_fighting_boss1
#重置
scoreboard players set dream_boss1_skillcd2 dream_timer -1