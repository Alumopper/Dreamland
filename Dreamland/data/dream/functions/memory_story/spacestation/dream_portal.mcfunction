setblock ~ ~ ~ air
playsound entity.generic.explode master @a ~ ~ ~
execute in dream:memory_abyss run summon armor_stand 62.5 63 61.5 {Marker:true,Invisible:true,Tags:["dream_temp_vlocker"]}
gamemode spectator @a
execute as @a run spectate @e[tag=dream_temp_vlocker,limit=1] @s
scoreboard players set dream_finalstorystage dream_counter 1