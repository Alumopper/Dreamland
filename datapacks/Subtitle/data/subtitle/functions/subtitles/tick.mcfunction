execute as @a[tag=subt_example_tag] at @s run function subtitle:subtitles/example/timer
execute if score subt_example subt_timer matches 0.. run scoreboard players add subt_example subt_timer 1
execute as @a[tag=subt_test_tag] at @s run function subtitle:subtitles/test/timer
execute if score subt_test subt_timer matches 0.. run scoreboard players add subt_test subt_timer 1
execute as @a[tag=subt_dreamland_end_tag] at @s run function subtitle:subtitles/dreamland_end/timer
execute if score subt_dreamland_end subt_timer matches 0.. run scoreboard players add subt_dreamland_end subt_timer 1
