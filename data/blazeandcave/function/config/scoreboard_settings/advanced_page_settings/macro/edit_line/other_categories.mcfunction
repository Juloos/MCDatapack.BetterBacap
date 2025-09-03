data modify storage blazeandcave:macro data set value {tellraw_list:[]}

$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Total", callback:"bac_display:refresh/callback/category/total", team:"$(team)", line:$(line), color:"yellow"}
# $function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Bacap", callback:"", team:"$(team)", line:$(line), color:"yellow"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Milestones", callback:"bac_display:refresh/callback/category/milestones", team:"$(team)", line:$(line), color:"yellow"}
# $function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Hidden", callback:"", team:"$(team)", line:$(line), color:"yellow"}

execute store result score tellraw_size bac_display.vars \
    store result storage blazeandcave:macro data.tellraw_size int 1 \
        if data storage blazeandcave:macro data.tellraw_list[]
function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/compile_data with storage blazeandcave:macro data
execute if score tellraw_size bac_display.vars matches 1..32 run return run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/concatenated_tellraw with storage blazeandcave:macro data
tellraw @s ["",{"translate":"Invalid list size while loading '%s'","with":["other_categories"],"color":"red","bold":true}]
