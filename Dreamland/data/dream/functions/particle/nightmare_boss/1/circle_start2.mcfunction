execute rotated 0 0 run summon armor_stand ^ ^ ^22 {Invisible:true,NoGravity:true,Tags:[dream_particle_circle_start2]}
execute facing entity @e[tag=dream_particle_circle_start2,limit=1] feet rotated ~1 ~ run function dream:particle/nightmare_boss/1/circle2
kill @e[tag=dream_particle_circle_start2]