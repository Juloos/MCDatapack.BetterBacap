$data modify storage blazeandcave:macro data set value {team:"$(team)"}

$execute store result storage blazeandcave:macro data.insert_at int 1 \
    store result score page_number bac_display.vars run \
        data get storage bac_display:data draft.refresh_callback.$(team)[0].page_number
$execute store result storage blazeandcave:macro data.size int 1 \
    if data storage bac_display:data draft.refresh_callback.$(team)[]

function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/insert_new_page with storage blazeandcave:macro data

$data modify storage bac_display:data draft.refresh_callback.$(team) insert 1 value { \
    page_size: 11, \
    title: "bac_display:refresh/callback/title/progress_bar", \
    0: "bac_display:refresh/callback/blank", \
    1: "bac_display:refresh/callback/blank", \
    2: "bac_display:refresh/callback/blank", \
    3: "bac_display:refresh/callback/blank", \
    4: "bac_display:refresh/callback/blank", \
    5: "bac_display:refresh/callback/blank", \
    6: "bac_display:refresh/callback/blank", \
    7: "bac_display:refresh/callback/blank", \
    8: "bac_display:refresh/callback/blank", \
    9: "bac_display:refresh/callback/blank", \
    10: "bac_display:refresh/callback/blank", \
    11: "bac_display:refresh/callback/blank", \
    12: "bac_display:refresh/callback/blank", \
    13: "bac_display:refresh/callback/blank", \
    14: "bac_display:refresh/callback/blank", \
}
$execute store result storage bac_display:data draft.refresh_callback.$(team)[1].page_number int 1 run \
    scoreboard players add page_number bac_display.vars 1


$function blazeandcave:config/scoreboard_settings/advanced_page_settings/page_right {team:"$(team)"}
