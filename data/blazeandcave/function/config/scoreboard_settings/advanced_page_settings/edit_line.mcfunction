$data modify storage blazeandcave:macro data set value {team:"$(team)", line:$(line), line_humanized:$(line)}
function utils:data_operation {data:"storage blazeandcave:macro data.line_humanized", op:"+=", const:1}

data modify storage blazeandcave:macro data merge from storage bac_tracker:data pack_info

$function utils:get_team_name {team:"$(team)"}
data modify storage blazeandcave:macro data.team_name set from storage utils:result team_name


function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line with storage blazeandcave:macro data
