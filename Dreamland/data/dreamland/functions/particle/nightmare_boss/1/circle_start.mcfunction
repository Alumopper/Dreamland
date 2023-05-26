execute rotated 0 0 run summon armor_stand ^ ^ ^20 {Invisible:true,NoGravity:true,Tags:[dream_particle_circle_start]}
execute facing entity @e[tag=dream_particle_circle_start,limit=1] feet rotated ~1 ~ run function dreamland:particle/nightmare_boss/1/circle
kill @e[tag=dream_particle_circle_start]