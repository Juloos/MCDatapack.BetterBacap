$scoreboard players add percent.$(team) bac_display.config 1

$execute if score percent.$(team) bac_display.config matches ..-1 run \
    scoreboard players set percent.$(team) bac_display.config 0
# TODO: 5.. and 4 when inner will be done
$execute if score percent.$(team) bac_display.config matches 3.. run \
    scoreboard players set percent.$(team) bac_display.config 2

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
