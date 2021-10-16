execute unless entity @s[distance=5..] if block ~ ~ ~ air positioned ^ ^ ^0.1 run function dream:test/test1
execute unless entity @a[tag=test] unless block ~ ~ ~ air run function dream:test/test2