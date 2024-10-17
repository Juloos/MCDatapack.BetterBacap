$execute store result score bar_len bac_display.vars run \
    data get storage bac_display:data progress_bar.$(team).bar_len 1

$execute store result score total_progress bac_display.vars \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[]
scoreboard players set progress_hidden bac_display.vars 0
$execute if score count_hidden bac_display.config matches 0 store result score progress_hidden bac_display.vars \
    if data storage bac_tracker:data teams[{name:"$(team)"}].advancements[{extra_categories:["hidden"]}]
scoreboard players operation total_progress bac_display.vars -= progress_hidden bac_display.vars

function bac_display:refresh/callback/title/progress_bar/prepare_data

$data modify storage bac_display:macro data set value {team:"$(team)"}

data modify storage bac_display:macro data.done set from storage bac_display:macro result.bar_done
$data modify storage bac_display:macro data.done_style set from storage bac_display:data style.$(team).progress_bar.done
data modify storage bac_display:macro data.remaining set from storage bac_display:macro result.bar
$data modify storage bac_display:macro data.remaining_style set from storage bac_display:data style.$(team).progress_bar.remaining

$data modify storage bac_display:macro data.left_style set from storage bac_display:data style.$(team).progress_bar.left
$data modify storage bac_display:macro data.right_style set from storage bac_display:data style.$(team).progress_bar.right

data modify storage bac_display:macro data.percent_decimals set from storage bac_display:macro result.percent_decimals
data modify storage bac_display:macro data.percent_remainder set from storage bac_display:macro result.percent_remainder
$data modify storage bac_display:macro data.percent_style set from storage bac_display:data style.$(team).progress_bar.percent

function bac_display:refresh/callback/title/progress_bar/finish with storage bac_display:macro data

# TODO: progress percents inside the bar
