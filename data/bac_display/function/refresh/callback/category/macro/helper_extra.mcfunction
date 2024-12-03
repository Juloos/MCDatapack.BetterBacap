$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)", text:"$(text)"}
$data modify storage bac_display:macro data.max set from storage bac_tracker:data category_size.$(category)
$execute store result score progress bac_display.vars \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{category:"$(category)"}]
scoreboard players set progress_hidden bac_display.vars 0
$execute store result score progress_hidden bac_display.vars if score count_hidden bac_display.config matches 0 \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{category:"$(category)",extra_categories:["hidden"]}]
execute store result storage bac_display:macro data.progress int 1 run \
    scoreboard players operation progress bac_display.vars -= progress_hidden bac_display.vars

function bac_display:refresh/callback/category/macro/helper with storage bac_display:macro data
