$scoreboard players set progress_bar_len.$(team) bac_display.vars $(new_value)
$execute if score progress_bar_len.$(team) bac_display.vars matches ..15 run \
    scoreboard players set progress_bar_len.$(team) bac_display.vars 16
$execute if score progress_bar_len.$(team) bac_display.vars matches 129.. run \
    scoreboard players set progress_bar_len.$(team) bac_display.vars 128
$execute store result storage bac_display:data progress_bar.$(team).bar_len int 1 run \
    scoreboard players get progress_bar_len.$(team) bac_display.vars

$function bac_display:refresh/display/sidebar {team:"$(team)"}

$function blazeandcave:config/scoreboard_settings/general_display_settings {team:"$(team)"}
