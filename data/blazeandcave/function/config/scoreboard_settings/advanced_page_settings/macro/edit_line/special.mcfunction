data modify storage blazeandcave:macro data set value {tellraw_list:[]}

# $function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Custom...", callback:"", team:"$(team)", line:$(line), color:"light_purple"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Page", callback:"bac_display:refresh/callback/page_number", team:"$(team)", line:$(line), color:"light_purple"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"    ", callback:"bac_display:refresh/callback/blank", team:"$(team)", line:$(line), color:"light_purple"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"---", callback:"bac_display:refresh/callback/dash", team:"$(team)", line:$(line), color:"light_purple"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"===", callback:"bac_display:refresh/callback/double_dash", team:"$(team)", line:$(line), color:"light_purple"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"~~~", callback:"bac_display:refresh/callback/tilde", team:"$(team)", line:$(line), color:"light_purple"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"___", callback:"bac_display:refresh/callback/underscore", team:"$(team)", line:$(line), color:"light_purple"}

execute store result score tellraw_size bac_display.vars \
    store result storage blazeandcave:macro data.tellraw_size int 1 \
        if data storage blazeandcave:macro data.tellraw_list[]
function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/compile_data with storage blazeandcave:macro data
execute if score tellraw_size bac_display.vars matches 1..32 run return run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/concatenated_tellraw with storage blazeandcave:macro data
tellraw @s ["",{"translate":"Invalid list size while loading '%s'","with":["special"],"color":"red","bold":true}]
