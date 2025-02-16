$scoreboard players set count_hidden.$(team) bac_display.config $(new_value)

$function bac_tracker:refresh_data/category/size {team:"$(team)"}
$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
