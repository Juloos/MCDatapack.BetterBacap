$scoreboard players add page_flip_time.$(team) bac_display.config 10

$execute unless score page_flip_time.$(team) bac_display.config matches 0.. run \
    scoreboard players set page_flip_time.$(team) bac_display.config 0

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
