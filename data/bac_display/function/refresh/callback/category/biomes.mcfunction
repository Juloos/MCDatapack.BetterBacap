$data modify storage bac_display:data page.$(team)[0].name_$(index) set from storage bac_display:data translation.biomes

$data modify storage bac_display:macro data set value {index:$(index),team:"$(team)"}
data modify storage bac_display:macro data.max set from storage bac_tracker:data categories[{name:"biomes"}].size
$execute store result storage bac_display:macro data.progress int 1 \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{category:"biomes"}]

function bac_display:refresh/callback/category/macro/progress with storage bac_display:macro data
