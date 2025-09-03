$data modify storage bac_display:data draft.refresh_callback.$(team) prepend from storage bac_display:data draft.refresh_callback.$(team)[-1]
$data remove storage bac_display:data draft.refresh_callback.$(team)[-1]

$function blazeandcave:config/scoreboard_settings/advanced_page_settings {team:"$(team)"}
