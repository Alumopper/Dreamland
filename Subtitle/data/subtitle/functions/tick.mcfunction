#盔甲架上升
execute as @e[tag=subt_line] at @s run tp ~ ~0.05 ~
#固定玩家
execute as @a[tag=subt_watching] at @s align xyz run tp @s ~0.5 ~ ~0.5 -90 0
#
function subtitle:subtitles/tick