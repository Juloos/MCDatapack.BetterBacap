$data modify storage blazeandcave:macro data set value {team:"$(team)", i:$(i)}
$scoreboard players set j bac_display.vars $(i)
execute store result storage blazeandcave:macro data.j int 1 run \
    scoreboard players remove j bac_display.vars 1

function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/remove_line/shift with storage blazeandcave:macro data
