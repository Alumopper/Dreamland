#获取难度
execute store result score dream_temp_difficulty dream_counter run difficulty
#如果是和平则切换为简单难度
execute if score dream_difficulty dream_counter matches 0.. run difficulty easy
#define tag entity.dreamland.dream_boss1
execute in dreamland:sweetdream run summon minecraft:vindicator 0 200 0 {CustomName:'{"translate":"dreamland.name.dream_tower.boss"}',CustomNameVisible:true,Tags:[entity.dreamland.dream_boss1,dream_boss1_just],Attributes:[{Name:"minecraft:generic.max_health",Base:200.0d},{Name:"minecraft:generic.attack_damage",Base:2.0d}],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{CustomModelData:120001,tag:{isTemp:1b}}}],DeathLootTable:"dreamland:entity/boss1",Passengers:[{id:"minecraft:item_display",Tags:["entity.dreamland.dream_boss1.model"],item:{id:"glass",Count:1b,tag:{CustomModelData:120002,tag:{isTemp:1b}}},item_display:"head"}]}
effect give @e[tag=entity.dreamland.dream_boss1] instant_health 5 50 false
effect give @e[tag=entity.dreamland.dream_boss1] invisibility 100000 0 false
bossbar set dreamland:boss max 200
execute as @e[tag=entity.dreamland.dream_boss1] run bossbar set dreamland:boss name ["---<梦境护卫     HP:",{"score":{"objective": "dream_boss_hp","name": "@s"}},">---"]
bossbar set dreamland:boss players @a
bossbar set dreamland:boss color blue
bossbar set dreamland:boss visible true
scoreboard players set dream_boss dream_counter 1
gamemode adventure @a[gamemode=survival]
tag @a add dream_fighting_boss1
#重置
scoreboard players set dream_boss1_skillcd2 dream_timer -1