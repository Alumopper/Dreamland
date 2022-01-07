#计分板区
#检测玩家手持的鱼汤物品
scoreboard objectives add fishsoup_item dummy "物品使用"
    #define score_holder #FS_C_FISHSOUP
    scoreboard players set #FS_C_FISHSOUP fishsoup_item 1
    #define score_holder #FS_C_PEACH
    scoreboard players set #FS_C_PEACH fishsoup_item 2
    #define score_holder #FS_C_MEMORYSOUP
    scoreboard players set #FS_C_MEMORYSOUP fishsoup_item 3
#物品使用检测
#牛奶桶
scoreboard objectives add fs_use_milkb minecraft.used:milk_bucket
#苹果
scoreboard objectives add fs_use_apple minecraft.used:apple