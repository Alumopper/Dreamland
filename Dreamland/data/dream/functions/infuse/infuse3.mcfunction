data modify block ~ ~ ~ Items[4].Slot set value 24
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.8 with air
scoreboard players remove xp dream_xp 650
#进入收尾阶段，开启高频，等待玩家取出物品
scoreboard players set @s dream_infuse_stage 4