#生成显示器
summon armor_stand 456.5173 96.5 497.774650 {Tags:["dream_system_monitor"],ArmorItems:[{},{},{},{id:"minecraft:string",Count:1,tag:{CustomModelData:120001}}],HasVisualFire:true}
execute in dreamland:memory_abyss positioned 456.5 97.50 503.5 run summon armor_stand ~ ~ ~ {Invisible:true,Marker:true,Tags:["dream_sysyem_pos"]}
#系统显示器帧索引
scoreboard players set dream_system_frameid dream_counter 0
scoreboard players set dream_system_load_timer dream_timer 0
scoreboard players set dream_system_input_cd dream_timer -1