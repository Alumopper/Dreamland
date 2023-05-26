#1
setblock ~ ~ ~ stone_bricks
setblock ~1 ~ ~ stone_brick_stairs[facing=west]
setblock ~-1 ~ ~ stone_brick_stairs[facing=east]
setblock ~ ~ ~1 stone_brick_stairs[facing=north]
setblock ~ ~ ~-1 stone_brick_stairs[facing=south]
#2 3 4
setblock ~ ~1 ~ chiseled_stone_bricks
setblock ~ ~2 ~ stone_bricks
setblock ~ ~3 ~ stone_bricks
#5
setblock ~ ~4 ~ glowstone
setblock ~1 ~4 ~ stone_brick_stairs[facing=west,half=top]
setblock ~-1 ~4 ~ stone_brick_stairs[facing=east,half=top]
setblock ~ ~4 ~1 stone_brick_stairs[facing=north,half=top]
setblock ~ ~4 ~-1 stone_brick_stairs[facing=south,half=top]
#6
setblock ~ ~5 ~ end_rod[facing=up]