$data modify storage blazeandcave:macro data set value {team:"$(team)"}

$execute store result storage blazeandcave:macro data.remove_at int 1 run \
    data get storage bac_display:data draft.refresh_callback.$(team)[0].page_number
$execute store result storage blazeandcave:macro data.page_count int 1 \
    if data storage bac_display:data draft.refresh_callback.$(team)[]
function utils:data_operation {data:"storage blazeandcave:macro data.page_count", op:"+=", const:1}

function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/remove_page with storage blazeandcave:macro data

$data remove storage bac_display:data draft.refresh_callback.$(team)[0]


$function blazeandcave:config/scoreboard_settings/advanced_page_settings/page_left {team:"$(team)"}
