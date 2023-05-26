#护盾破碎
bossbar set dreamland:boss color red
bossbar set dreamland:boss max 500
effect give @a instant_damage 1 0 false
effect give @a slowness 5 0 true
kill @e[tag=entity.dreamland.nightmare_shield]
scoreboard players set entity.dreamland.nightmare_shield_hp dream_counter 0
function dreamland:entity/nightmare/skills/funcs/recover
execute at @a run function dreamland:entity/nightmare/skills/skill3_sp2