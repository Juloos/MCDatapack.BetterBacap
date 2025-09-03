$data modify storage blazeandcave:macro data set value {team:"$(team)"}
$execute store result storage blazeandcave:macro data.line_a int 1 run \
    scoreboard players set line_b bac_display.vars $(line)
execute store result storage blazeandcave:macro data.line_b int 1 run \
    scoreboard players remove line_b bac_display.vars 1

function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/invert_lines with storage blazeandcave:macro data


$function blazeandcave:config/scoreboard_settings/advanced_page_settings {team:"$(team)"}
