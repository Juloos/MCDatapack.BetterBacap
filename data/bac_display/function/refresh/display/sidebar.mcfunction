$data modify storage bac_display:data page.$(team) set value { \
    title:'""', \
    name_0:'""', number_0:'""', \ 
    name_1:'""', number_1:'""', \ 
    name_2:'""', number_2:'""', \ 
    name_3:'""', number_3:'""', \ 
    name_4:'""', number_4:'""', \ 
    name_5:'""', number_5:'""', \ 
    name_6:'""', number_6:'""', \ 
    name_7:'""', number_7:'""', \ 
    name_8:'""', number_8:'""', \ 
    name_9:'""', number_9:'""', \ 
    name_10:'""', number_10:'""', \ 
    name_11:'""', number_11:'""', \ 
    name_12:'""', number_12:'""', \ 
    name_13:'""', number_13:'""', \ 
    name_14:'""', number_14:'""', \ 
}

$data modify storage bac_display:data refresh_callback.$(team)[0].team set value "$(team)"
$execute store result storage bac_display:data refresh_callback.$(team)[0].page_count int 1 \
    if data storage bac_display:data refresh_callback.$(team)[]
$data modify storage bac_display:data refresh_callback.$(team)[0].to_page set value "page"
$function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.$(team)[0]

$function bac_display:refresh/display/sidebar/page_size {team:"$(team)"}

$data modify storage bac_display:data page.$(team).team set value "$(team)"
$execute if data storage bac_display:data page.$(team){team:"any"} run \
    data modify storage bac_display:data page.$(team).sidebar set value "sidebar"
$execute unless data storage bac_display:data page.$(team){team:"any"} run \
    data modify storage bac_display:data page.$(team).sidebar set value "sidebar.team.$(team)"
$function bac_display:refresh/display/sidebar/finish with storage bac_display:data page.$(team)
