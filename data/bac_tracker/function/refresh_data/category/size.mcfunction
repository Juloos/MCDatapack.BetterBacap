data modify storage buffer advancements set from storage bac_tracker:data advancements

execute if data storage bac_tracker:data {pack_info:{extensions:{bac_terralith:0b}}} run \
    data remove storage buffer advancements[{extra_categories:["terralith"]}]

execute if data storage bac_tracker:data {pack_info:{extensions:{bac_amplified_nether:0b}}} run \
    data remove storage buffer advancements[{extra_categories:["amplified_nether"]}]

execute if data storage bac_tracker:data {pack_info:{extensions:{bac_nullscape:0b}}} run \
    data remove storage buffer advancements[{extra_categories:["nullscape"]}]

execute if score count_hidden bac_display.config matches 0..1 run \
    data remove storage buffer advancements[{extra_categories:["hidden"]}]


execute store result storage bac_tracker:data category_size.adventure int 1 \
    if data storage buffer advancements[{category:"adventure"}]

execute store result storage bac_tracker:data category_size.animal int 1 \
    if data storage buffer advancements[{category:"animal"}]

execute store result storage bac_tracker:data category_size.bacap int 1 \
    if data storage buffer advancements[{category:"bacap"}]

execute store result storage bac_tracker:data category_size.biomes int 1 \
    if data storage buffer advancements[{category:"biomes"}]

execute store result storage bac_tracker:data category_size.building int 1 \
    if data storage buffer advancements[{category:"building"}]

execute store result storage bac_tracker:data category_size.challenges int 1 \
    if data storage buffer advancements[{category:"challenges"}]

execute store result storage bac_tracker:data category_size.enchanting int 1 \
    if data storage buffer advancements[{category:"enchanting"}]

execute store result storage bac_tracker:data category_size.end int 1 \
    if data storage buffer advancements[{category:"end"}]

execute store result storage bac_tracker:data category_size.farming int 1 \
    if data storage buffer advancements[{category:"farming"}]

execute store result storage bac_tracker:data category_size.milestones int 1 \
    if data storage buffer advancements[{category:"milestones"}]

execute store result storage bac_tracker:data category_size.mining int 1 \
    if data storage buffer advancements[{category:"mining"}]

execute store result storage bac_tracker:data category_size.monsters int 1 \
    if data storage buffer advancements[{category:"monsters"}]

execute store result storage bac_tracker:data category_size.nether int 1 \
    if data storage buffer advancements[{category:"nether"}]

execute store result storage bac_tracker:data category_size.potion int 1 \
    if data storage buffer advancements[{category:"potion"}]

execute store result storage bac_tracker:data category_size.redstone int 1 \
    if data storage buffer advancements[{category:"redstone"}]

execute store result storage bac_tracker:data category_size.statistics int 1 \
    if data storage buffer advancements[{category:"statistics"}]

execute store result storage bac_tracker:data category_size.weaponry int 1 \
    if data storage buffer advancements[{category:"weaponry"}]

execute store result storage bac_tracker:data category_size.total int 1 \
    if data storage buffer advancements[]


execute store result storage bac_tracker:data category_size.milestones int 1 \
    if data storage buffer advancements[{extra_categories:["milestones"]}]


data remove storage buffer advancements
