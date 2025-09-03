data modify storage minecraft:buffer advancements set from storage bac_tracker:data advancements

# TODO: , count_terralith:"yes", count_amplified_nether:"yes", count_nullscape:"yes"
$execute if score count_terralith.$(team) bac_display.config matches 0..1 \
    if data storage bac_tracker:data {pack_info:{extensions:{bac_terralith:0b}}} run \
        data remove storage minecraft:buffer advancements[{extra_categories:["terralith"]}]

$execute if score count_amplified_nether.$(team) bac_display.config matches 0..1 \
    if data storage bac_tracker:data {pack_info:{extensions:{bac_amplified_nether:0b}}} run \
        data remove storage minecraft:buffer advancements[{extra_categories:["amplified_nether"]}]

$execute if score count_nullscape.$(team) bac_display.config matches 0..1 \
    if data storage bac_tracker:data {pack_info:{extensions:{bac_nullscape:0b}}} run \
        data remove storage minecraft:buffer advancements[{extra_categories:["nullscape"]}]

$execute if score count_hidden.$(team) bac_display.config matches 0..1 run \
    data remove storage minecraft:buffer advancements[{extra_categories:["hidden"]}]


$execute store result storage bac_tracker:data category_size.$(team).adventure int 1 \
    if data storage minecraft:buffer advancements[{category:"adventure"}]

$execute store result storage bac_tracker:data category_size.$(team).animal int 1 \
    if data storage minecraft:buffer advancements[{category:"animal"}]

$execute store result storage bac_tracker:data category_size.$(team).bacap int 1 \
    if data storage minecraft:buffer advancements[{category:"bacap"}]

$execute store result storage bac_tracker:data category_size.$(team).biomes int 1 \
    if data storage minecraft:buffer advancements[{category:"biomes"}]

$execute store result storage bac_tracker:data category_size.$(team).building int 1 \
    if data storage minecraft:buffer advancements[{category:"building"}]

$execute store result storage bac_tracker:data category_size.$(team).challenges int 1 \
    if data storage minecraft:buffer advancements[{category:"challenges"}]

$execute store result storage bac_tracker:data category_size.$(team).enchanting int 1 \
    if data storage minecraft:buffer advancements[{category:"enchanting"}]

$execute store result storage bac_tracker:data category_size.$(team).end int 1 \
    if data storage minecraft:buffer advancements[{category:"end"}]

$execute store result storage bac_tracker:data category_size.$(team).farming int 1 \
    if data storage minecraft:buffer advancements[{category:"farming"}]

$execute store result storage bac_tracker:data category_size.$(team).milestones int 1 \
    if data storage minecraft:buffer advancements[{category:"milestones"}]

$execute store result storage bac_tracker:data category_size.$(team).mining int 1 \
    if data storage minecraft:buffer advancements[{category:"mining"}]

$execute store result storage bac_tracker:data category_size.$(team).monsters int 1 \
    if data storage minecraft:buffer advancements[{category:"monsters"}]

$execute store result storage bac_tracker:data category_size.$(team).nether int 1 \
    if data storage minecraft:buffer advancements[{category:"nether"}]

$execute store result storage bac_tracker:data category_size.$(team).potion int 1 \
    if data storage minecraft:buffer advancements[{category:"potion"}]

$execute store result storage bac_tracker:data category_size.$(team).redstone int 1 \
    if data storage minecraft:buffer advancements[{category:"redstone"}]

$execute store result storage bac_tracker:data category_size.$(team).statistics int 1 \
    if data storage minecraft:buffer advancements[{category:"statistics"}]

$execute store result storage bac_tracker:data category_size.$(team).weaponry int 1 \
    if data storage minecraft:buffer advancements[{category:"weaponry"}]

$execute store result storage bac_tracker:data category_size.$(team).total int 1 \
    if data storage minecraft:buffer advancements[]


$execute store result storage bac_tracker:data category_size.$(team).milestones int 1 \
    if data storage minecraft:buffer advancements[{extra_categories:["milestones"]}]


data remove storage minecraft:buffer advancements
