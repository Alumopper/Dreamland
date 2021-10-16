data modify block ~ ~ ~ Items[4].Slot set value 24
replaceitem block ~ ~ ~ container.4 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.8 air
scoreboard players remove xp dream_xp 650
#进入收尾阶段，开启高频，等待玩家取出物品
scoreboard players set dream_infuse_stage dream_counter 4