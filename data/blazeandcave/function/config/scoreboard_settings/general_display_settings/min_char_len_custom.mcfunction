$data modify storage bac_display:macro data set value {team:"$(team)"}

$scoreboard players set min_char_len.$(team) bac_display.vars $(new_value)
$execute if score min_char_len.$(team) bac_display.vars matches ..-1 run \
    scoreboard players set min_char_len.$(team) bac_display.vars 0
$execute if score min_char_len.$(team) bac_display.vars matches 65.. run \
    scoreboard players set min_char_len.$(team) bac_display.vars 64
$execute store result storage bac_display:macro data.min_char_len int 1 run \
    scoreboard players get min_char_len.$(team) bac_display.vars

function bac_display:refresh/display/sidebar/min_char_len with storage bac_display:macro data

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
