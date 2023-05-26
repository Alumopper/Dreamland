execute if score dream_system_load_timer dream_timer matches -1 if score dream_system_input_cd dream_timer matches -1 as @e[tag=dream_sysyem_pos,limit=1] at @s unless entity @a[distance=0] run function dreamland:memory_story/system/input
execute as @a at @e[tag=dream_sysyem_pos,limit=1] run tp @s ~ ~ ~ ~180 ~
#输入计时器
execute if score dream_system_input_cd dream_timer matches 0.. run scoreboard players add dream_system_input_cd dream_timer 1
execute if score dream_system_input_cd dream_timer matches 5.. run scoreboard players set dream_system_input_cd dream_timer -1
#计时器
function dreamland:memory_story/system/timer
execute if score dream_system_load_timer dream_timer matches 0.. run scoreboard players add dream_system_load_timer dream_timer 1
#故事计时器
execute if score dream_system_load_timer dream_timer matches -2 run function dreamland:memory_story/system/log