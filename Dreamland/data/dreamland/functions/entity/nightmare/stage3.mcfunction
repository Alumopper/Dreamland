#进入阶段三
scoreboard players set entity.dreamland.nightmare_skill2 dream_timer -1
scoreboard players set entity.dreamland.nightmare_skill3 dream_timer 0
scoreboard players set entity.dreamland.nightmare_shield_hp dream_counter 0
bossbar set dreamland:boss color red
bossbar set dreamland:boss max 500
scoreboard players set entity.dreamland.nightmare dream_counter 500
kill @e[tag=entity.dreamland.nightmare_shield]
#旋转用
summon armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invisible:true,Tags:["entity.dreamland.nightmare_rotation","entity.dreamland.nightmare_p"]}
#除去凋零骷髅
execute as @e[type=wither_skeleton] at @s run tp ~ -100 ~
