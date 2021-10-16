#玩家死亡
#清扫战场
function dream:entity/nightmare/end
#重新开始
execute if score dream_world_collapse dream_timer matches 240000.. run tag @a add dream_nightmare_wait_to_restart