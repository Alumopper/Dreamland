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
#时间标记(一百tick准备时间)
scoreboard players set $dream_finalskill_psummon_timer dream_timer -100
#技能标记
scoreboard players set @e[tag=dream_final_boss1] dream_counter 0
scoreboard players set dream_final_boss1_skilltimer dream_timer -1
#function
#DEBUG
#gamemode adventure @a
