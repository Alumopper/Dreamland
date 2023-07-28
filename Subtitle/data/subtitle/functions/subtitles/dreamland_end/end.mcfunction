tag @a remove subt_dreamland_end_tag
tag @a remove subt_watching
scoreboard players set subt_dreamland_end subt_timer -1
kill @e[tag=subt_line, type=armor_stand]
#梦境数据包衔接部分
function dreamland:memory_story/system/end
