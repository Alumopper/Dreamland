#生成护盾
execute positioned 0 70 0 run summon armor_stand ~ ~1 ~ {NoGravity:true,Invisible:true,Tags:["dream_nightmare_shield","dream_nightmare_p"],Marker:true}
bossbar set dream:boss color blue
bossbar set dream:boss max 100
scoreboard players set dream_nightmare_shield_hp dream_counter 100
scoreboard players set dream_nightmare_skill3 dream_timer 2001