$data modify storage bac_display:data refresh_callback.$(team)[0].team set value "$(team)"
$function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.$(team)[0]

$data modify storage bac_display:data page.$(team)[0].team set value "$(team)"
$execute if data storage bac_display:data page.$(team)[{team:"any"}] run \
    data modify storage bac_display:data page.$(team)[0].sidebar set value "sidebar"
$execute unless data storage bac_display:data page.$(team)[{team:"any"}] run \
    data modify storage bac_display:data page.$(team)[0].sidebar set value "sidebar.team.$(team)"
$function bac_display:refresh/display/sidebar/finish with storage bac_display:data page.$(team)[0]
