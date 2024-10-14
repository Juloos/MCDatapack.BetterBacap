$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)", page_number:$(page_number)}
$execute store result storage bac_display:macro data.page_count int 1 \
    if data storage bac_display:data page.$(team)[]
$data modify storage bac_display:macro data.style set from storage bac_display:data style.$(team).pagination
function bac_display:refresh/callback/page_number/finish with storage bac_display:macro data
