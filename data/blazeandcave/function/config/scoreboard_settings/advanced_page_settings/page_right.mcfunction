$data modify storage bac_display:data draft.refresh_callback.$(team) append from storage bac_display:data draft.refresh_callback.$(team)[0]
$data remove storage bac_display:data draft.refresh_callback.$(team)[0]

$function blazeandcave:config/scoreboard_settings/advanced_page_settings {team:"$(team)"}
