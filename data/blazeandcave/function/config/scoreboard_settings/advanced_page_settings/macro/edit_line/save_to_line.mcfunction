$data modify storage bac_display:data draft.refresh_callback.$(team)[0].$(line) set from storage bac_display:data draft.line.$(team).$(line)

$function blazeandcave:config/scoreboard_settings/advanced_page_settings {team:"$(team)"}
