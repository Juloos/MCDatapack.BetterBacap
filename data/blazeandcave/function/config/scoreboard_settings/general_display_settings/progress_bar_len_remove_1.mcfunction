$execute unless score progress_bar_len.$(team) bac_display.vars matches ..16 \
    store result storage bac_display:data progress_bar.$(team).bar_len int 1 run \
        scoreboard players remove progress_bar_len.$(team) bac_display.vars 1

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
