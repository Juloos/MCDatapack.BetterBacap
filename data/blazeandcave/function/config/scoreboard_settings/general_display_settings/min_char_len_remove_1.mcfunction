$data modify storage bac_display:macro data set value {team:"$(team)"}
$execute unless score min_char_len.$(team) bac_display.vars matches ..0 \
    store result storage bac_display:macro data.min_char_len int 1 run \
        scoreboard players remove min_char_len.$(team) bac_display.vars 1
function bac_display:refresh/display/sidebar/min_char_len with storage bac_display:macro data

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
