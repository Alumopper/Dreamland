#护盾破碎
bossbar set dream:boss color red
bossbar set dream:boss max 500
effect give @a instant_damage 1 0 false
effect give @a slowness 5 0 true
kill @e[tag=dream_nightmare_shield]
scoreboard players set dream_nightmare_shield_hp dream_counter 0
function dream:entity/nightmare/skills/funcs/recover
execute at @a run function dream:entity/nightmare/skills/skill3_sp2