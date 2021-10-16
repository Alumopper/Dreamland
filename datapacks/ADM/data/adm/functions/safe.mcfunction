function adm:safe/0
tellraw @a {"text":"[INFO]实体数目超过阈值(0)","color": "red"}
kill @e[type=falling_block]