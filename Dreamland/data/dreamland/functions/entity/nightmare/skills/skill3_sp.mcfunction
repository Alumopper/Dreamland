#生成护盾
execute positioned 0 70 0 run summon armor_stand ~ ~1 ~ {NoGravity:true,Invisible:true,Tags:["entity.dream.nightmare_shield","entity.dream.nightmare_p"],Marker:true}
bossbar set dreamland:boss color blue
bossbar set dreamland:boss max 100
scoreboard players set entity.dream.nightmare_shield_hp dream_counter 100
scoreboard players set entity.dream.nightmare_skill3 dream_timer 2001