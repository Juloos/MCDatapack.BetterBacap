$execute store result score bar_len bac_display.vars run \
    data get storage bac_display:data progress_bar.$(team).bar_len 1

$execute store result score total_progress bac_display.vars \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[]
scoreboard players set progress_hidden bac_display.vars 0
$execute if score count_hidden.$(team) bac_display.config matches 0 store result score progress_hidden bac_display.vars \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{extra_categories:["hidden"]}]
scoreboard players operation total_progress bac_display.vars -= progress_hidden bac_display.vars

$function bac_display:refresh/callback/title/progress_bar/prepare_data_prequel {team:"$(team)"}
function bac_display:refresh/callback/title/progress_bar/prepare_data

$data modify storage bac_display:macro data set value {team:"$(team)", to_page:"$(to_page)"}
data modify storage bac_display:macro data.done set from storage bac_display:macro result.bar_done
data modify storage bac_display:macro data.remaining set from storage bac_display:macro result.bar
data modify storage bac_display:macro data.percent_decimals set from storage bac_display:macro result.percent_decimals
data modify storage bac_display:macro data.percent_remainder set from storage bac_display:macro result.percent_remainder

execute store result score tmp bac_display.vars run \
    data get storage bac_display:macro result.percent_decimals
$execute if score tmp bac_display.vars matches 100.. run \
    function bac_display:refresh/callback/title/progress_bar/load_styles {team:"$(team)", condition:"complete"}
$execute unless score tmp bac_display.vars matches 100.. run \
    function bac_display:refresh/callback/title/progress_bar/load_styles {team:"$(team)", condition:"incomplete"}

function bac_display:refresh/callback/title/progress_bar/finish with storage bac_display:macro data

# TODO: progress percents inside the bar
