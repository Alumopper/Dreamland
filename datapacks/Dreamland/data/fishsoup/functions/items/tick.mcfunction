#使用检测
execute as @a if score @s fs_use_milkb matches 1.. if score @s fishsoup_item = #FS_C_FISHSOUP fishsoup_item run effect give @s saturation 5 0
execute as @a if score @s fs_use_apple matches 1.. if score @s fishsoup_item = #FS_C_PEACH fishsoup_item run effect give @s hunger 30 0
#清空
scoreboard players set @a fs_use_milkb 0
scoreboard players set @a fs_use_apple 0