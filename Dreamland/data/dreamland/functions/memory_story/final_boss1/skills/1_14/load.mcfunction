#实体的扩散
execute at @e[tag=dream_final_boss1] run summon marker ~ ~ ~ {Tags:[dream_final_skill_sm]}
execute at @e[tag=dream_final_boss1] run spreadplayers ~ ~ 1 30 false @e[tag=dream_final_skill_sm]
#爆发
execute at @e[tag=dream_final_skill_sm] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 magma_block replace gray_concrete
execute at @e[tag=dream_final_skill_sm] run particle lava ~ ~ ~ 0.25 0.25 0.25 1.0 20
execute at @e[tag=dream_final_skill_sm] run summon magma_cube ~ ~ ~
kill @e[tag=dream_final_skill_sm]