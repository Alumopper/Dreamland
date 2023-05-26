tellraw @a {"text":"[EXCEPTION{0}]实体数目超过阈值","color": "red"}
function adm:safe/0
kill @e[tag=block.dreamland.void_ore.generator]
kill @e[type=fireball]