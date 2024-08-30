$data modify storage bac_display:data page.$(team) append from storage bac_display:data page.$(team)[0]
$data remove storage bac_display:data page.$(team)[0]
$data modify storage bac_display:data refresh_callback.$(team) append from storage bac_display:data refresh_callback.$(team)[0]
$data remove storage bac_display:data refresh_callback.$(team)[0]


$function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.$(team)[0]
$function bac_display:refresh/display/sidebar with storage bac_display:data page.$(team)[0]
