data remove storage blazeandcave:macro data
data modify storage blazeandcave:macro data set from storage bac_tracker:data pack_info
$data modify storage blazeandcave:macro data.redirect_from_description set value "$(redirect_from_description)"
$data modify storage blazeandcave:macro data.redirect_to set value "$(redirect_to)"

function blazeandcave:config/scoreboard_settings/select_team_to_edit with storage blazeandcave:macro data
