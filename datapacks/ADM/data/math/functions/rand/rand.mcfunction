summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,0],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,1],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,2],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,3],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,4],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,5],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,6],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,7],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,8],Tags:[Math_temp_rand]}
summon area_effect_cloud ~ ~ ~ {UUID:[I;1222545,5254848,34578111,9],Tags:[Math_temp_rand]}
execute store result score rand_output math_output run data get entity @e[sort=random,limit=1,tag=Math_temp_rand,type=area_effect_cloud] UUID[3]