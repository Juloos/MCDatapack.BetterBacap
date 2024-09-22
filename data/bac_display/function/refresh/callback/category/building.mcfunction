$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)"}
data modify storage bac_display:macro data.text set from storage bac_display:data translation.building
data modify storage bac_display:macro data.max set from storage bac_tracker:data categories[{name:"building"}].size
$execute store result storage bac_display:macro data.progress int 1 \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{category:"building"}]

function bac_display:refresh/callback/category/macro/helper with storage bac_display:macro data
