$scoreboard players remove align.$(team) bac_display.config 1

$execute if score align.$(team) bac_display.config matches ..-1 run \
    scoreboard players set align.$(team) bac_display.config 0
$execute if score align.$(team) bac_display.config matches 4.. run \
    scoreboard players set align.$(team) bac_display.config 3

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
