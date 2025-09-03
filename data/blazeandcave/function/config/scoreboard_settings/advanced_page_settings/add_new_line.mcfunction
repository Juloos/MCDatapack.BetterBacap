$execute store result score draft.page_size bac_display.vars run \
    function utils:data_operation {data:"storage bac_display:data draft.refresh_callback.$(team)[0].page_size", op:"+=", const:1}

$execute if score draft.page_size bac_display.vars matches 2 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].1 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 3 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].2 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 4 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].3 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 5 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].4 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 6 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].5 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 7 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].6 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 8 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].7 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 9 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].8 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 10 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].9 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 11 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].10 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 12 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].11 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 13 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].12 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 14 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].13 set value "bac_display:refresh/callback/blank"
$execute if score draft.page_size bac_display.vars matches 15 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].14 set value "bac_display:refresh/callback/blank"

$execute if score draft.page_size bac_display.vars matches 16.. run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].page_size set value 15


$function blazeandcave:config/scoreboard_settings/advanced_page_settings {team:"$(team)"}
