execute if score stl_story dream_counter matches 100 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning1"}
execute if score stl_story dream_counter matches 120 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning2"}
execute if score stl_story dream_counter matches 140 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning3"}
execute if score stl_story dream_counter matches 175 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning4"}
execute if score stl_story dream_counter matches 220 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning5"}
execute if score stl_story dream_counter matches 260 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning6"}
execute if score stl_story dream_counter matches 285 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning7"}
execute if score stl_story dream_counter matches 300 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning8"}
execute if score stl_story dream_counter matches 340 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning9"}
execute if score stl_story dream_counter matches 360 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning10"}
execute if score stl_story dream_counter matches 395 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning11"}
execute if score stl_story dream_counter matches 420 run tellraw @a {"translate":"word.dreamland.memory_story.spacestaion.warning12"}
execute if score stl_story dream_counter matches 455 run difficulty hard
execute if score stl_story dream_counter matches 455 run function dreamland:memory_story/slab/next

scoreboard players add stl_story dream_counter 1