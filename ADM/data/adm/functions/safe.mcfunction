tellraw @a {"text":"[EXCEPTION{0}]实体数目超过阈值","color": "red"}
function adm:safe/0
kill @e[type=armor_stand,tag=dream_void_ore_generator]
kill @e[type=fireball]