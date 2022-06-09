#生成战斗场地
execute in dream:memory_abyss positioned 525 96 525 run fill ~ ~ ~-60 ~-60 ~30 ~-60 minecraft:gray_concrete
execute in dream:memory_abyss positioned 525 96 525 run fill ~-60 ~ ~ ~-60 ~30 ~-60 minecraft:gray_concrete
execute in dream:memory_abyss positioned 525 96 525 run fill ~ ~30 ~ ~-60 ~30 ~-60 minecraft:gray_concrete
execute in dream:memory_abyss positioned 525 96 525 run fill ~ ~ ~ ~-60 ~30 ~ minecraft:gray_concrete
execute in dream:memory_abyss positioned 525 96 525 run fill ~ ~ ~ ~ ~30 ~-60 minecraft:gray_concrete
execute in dream:memory_abyss positioned 525 96 525 run fill ~ ~ ~ ~-60 ~ ~-60 minecraft:gray_concrete
effect give @a night_vision 123456 0 true
#中央标记
execute in dream:memory_abyss run summon marker 495 96 495 {Tags:["dream_final_boss1"]}
#时间标记(一百秒准备时间)
scoreboard players set dream_finaltimer dream_timer -100
#DEBUG
#gamemode adventure @a