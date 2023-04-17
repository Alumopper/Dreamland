#是否持有云枪
#define tag bool.HasCloudGun 是否持有云枪
execute as @a[tag=!bool.HasCloudGun] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{dreamland:{id:"dreamland:cloud_gun"}}}]}] run tag @s add bool.HasCloudGun
execute as @a[tag=bool.HasCloudGun] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{dreamland:{id:"dreamland:cloud_gun"}}}]}] run tag @s remove bool.HasCloudGun