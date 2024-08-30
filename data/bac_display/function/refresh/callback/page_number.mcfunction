$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)", page_number:$(page_number)}
$execute store result storage bac_display:macro data.page_count int 1 \
    if data storage bac_display:data page.$(team)[]
function bac_display:refresh/callback/macro/page_number with storage bac_display:macro data
