$scoreboard players add percent.$(team) bac_display.config 1

$execute if score percent.$(team) bac_display.config matches ..-1 run \
    scoreboard players set percent.$(team) bac_display.config 0
$execute if score percent.$(team) bac_display.config matches 6.. run \
    scoreboard players set percent.$(team) bac_display.config 5

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
