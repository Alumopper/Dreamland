#玩家死亡
#清扫战场
function dreamland:entity/nightmare/end
#重新开始
execute if score dream_world_collapse dream_timer matches 240000.. run tag @a add entity.dreamland.nightmare_wait_to_restart
#标签清除
execute unless score dream_world_collapse dream_timer matches 240000.. run tag @a remove dream_fight_nightmare