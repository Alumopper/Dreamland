tag @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:xp_extract_needle"}}}}] add dream_xp_visible
tag @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:magic_plate"}}}}] add dream_xp_visible
tag @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:magic_plate"}}}]}] add dream_xp_visible
tag @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:xp_extract_needle"}}}]}] add dream_xp_visible
execute as @a if entity @s[tag=dream_xp_visible] run function dream:items/xp_display
bossbar set dream:xp players @a[tag=dream_xp_visible]
tag @a remove dream_xp_visible
#副手持有载魔盘释放经验
execute if score xp dream_xp matches 1.. as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:magic_plate"}}}]}] run function dream:items/getxp
#副手持有经验抽针快速吸经验
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:xp_extract_needle"}}}]},scores={dream_p_xp=10..}] if score xp dream_xp matches ..9990 run function dream:items/xp_extract_needle
#矿物探测器高频
execute as @e[type=area_effect_cloud,tag=dream_mineral_detector] run function dream:items/mineral_detector_tick
#检测玩家身上是否有梦境护符
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_talisman"}}}]}] run tag @s add dream_magic_protected
execute as @a[tag=dream_magic_protected] at @s run function dream:items/dream_talisman
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_talisman"}}}]}] run tag @s remove dream_magic_protected
#云的消散
execute as @e[tag=block.dream.cloud,scores={block.dream.clouddrt=1200}] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10
execute as @e[tag=block.dream.cloud,scores={block.dream.clouddrt=1200}] at @s run kill @s
execute as @e[tag=block.dream.cloud] at @s run scoreboard players add @s block.dream.clouddrt 1
#漂浮在云中
execute as @a at @s if entity @e[tag=block.dream.cloud,distance=0..1] run tag @s add dream_effect_levitation256
#路径点显示
execute at @e[tag=dream_telepoint] run particle dust 0.027 0.494 0.808 1 ~ ~ ~ 0.1 2 0.1 0.1 10