$data modify storage bac_display:data refresh_callback.$(team) append from storage bac_display:data refresh_callback.$(team)[0]
$data remove storage bac_display:data refresh_callback.$(team)[0]

$execute if score show_sidebar.$(team) bac_display.config matches 1 if entity $(player_selector) run \
    function bac_display:refresh/display/sidebar {team:"$(team)"}
