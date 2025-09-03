$execute store success score value_changed bac_display.vars run \
    data modify storage bac_display:data draft.line.$(team).$(line) set value "$(new_value)"

$execute if score value_changed bac_display.vars matches 1 run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/edit_line {team:"$(team)", line:$(line)}
$execute if score value_changed bac_display.vars matches 0 run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/save_to_line {team:"$(team)", line:$(line)}
