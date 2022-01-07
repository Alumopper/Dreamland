execute if score stl_story dream_counter matches 300 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning1"}
execute if score stl_story dream_counter matches 360 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning2"}
execute if score stl_story dream_counter matches 450 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning3"}
execute if score stl_story dream_counter matches 520 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning4"}
execute if score stl_story dream_counter matches 600 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning5"}
execute if score stl_story dream_counter matches 700 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning6"}
execute if score stl_story dream_counter matches 800 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning7"}
execute if score stl_story dream_counter matches 860 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning8"}
execute if score stl_story dream_counter matches 900 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning9"}
execute if score stl_story dream_counter matches 980 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning10"}
execute if score stl_story dream_counter matches 1300 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning11"}
execute if score stl_story dream_counter matches 1380 run tellraw @a {"translate":"dream.word.memory_story.spacestaion.warning12"}
execute if score stl_story dream_counter matches 1450 run function dream:memory_story/slab/next

scoreboard players add stl_story dream_counter 1