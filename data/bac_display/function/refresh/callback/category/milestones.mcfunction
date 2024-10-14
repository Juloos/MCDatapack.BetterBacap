$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)", text:"Milestones"}
data modify storage bac_display:macro data.max set from storage bac_tracker:data category_size.milestones
$execute store result storage bac_display:macro data.progress int 1 \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{extra_categories:["milestones"]}]

function bac_display:refresh/callback/category/macro/helper with storage bac_display:macro data
