#实体的扩散
execute at @e[tag=dream_final_boss1] run summon marker ~ ~ ~ {Tags:[dream_final_skill_lava]}
execute at @e[tag=dream_final_boss1] run spreadplayers ~ ~ 1 30 false @e[tag=dream_final_skill_lava]
#爆发
execute at @e[tag=dream_final_skill_lava] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 magma_block replace gray_concrete
execute at @e[tag=dream_final_skill_lava] run particle lava ~ ~ ~ 0.25 0.25 0.25 1.0 20
execute at @e[tag=dream_final_skill_lava] run summon magma_cube ~ ~ ~
kill @e[tag=dream_final_skill_lava]