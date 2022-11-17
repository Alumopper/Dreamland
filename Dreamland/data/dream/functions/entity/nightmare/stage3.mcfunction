#进入阶段三
scoreboard players set entity.dream.nightmare_skill2 dream_timer -1
scoreboard players set entity.dream.nightmare_skill3 dream_timer 0
scoreboard players set entity.dream.nightmare_shield_hp dream_counter 0
bossbar set dream:boss color red
bossbar set dream:boss max 500
scoreboard players set entity.dream.nightmare dream_counter 500
kill @e[tag=entity.dream.nightmare_shield]
#旋转用
summon armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invisible:true,Tags:["entity.dream.nightmare_rotation","entity.dream.nightmare_p"]}
#除去凋零骷髅
execute as @e[type=wither_skeleton] at @s run tp ~ -100 ~
