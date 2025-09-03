$data modify storage blazeandcave:macro data set value {team:"$(team)", remove_at:$(line)}
function utils:data_operation {data:"storage blazeandcave:macro data.remove_at", op:"+=", const:1}
$execute store result storage blazeandcave:macro data.page_size int 1 run \
    data get storage bac_display:data draft.refresh_callback.$(team)[0].page_size

function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/remove_line with storage blazeandcave:macro data

$execute store result score draft.page_size bac_display.vars run \
    function utils:data_operation {data:"storage bac_display:data draft.refresh_callback.$(team)[0].page_size", op:"-=", const:1}
$execute if score draft.page_size bac_display.vars matches ..-1 run \
    data modify storage bac_display:data draft.refresh_callback.$(team)[0].page_size set value 0


$function blazeandcave:config/scoreboard_settings/advanced_page_settings {team:"$(team)"}
