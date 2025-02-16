$execute if score page_flip_time.$(team) bac_display.config matches 10.. run \
    scoreboard players remove page_flip_time.$(team) bac_display.config 10

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
