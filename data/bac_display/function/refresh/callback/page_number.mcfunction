$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)", page_number:$(page_number), page_count:$(page_count), to_page:"$(to_page)"}
$data modify storage bac_display:macro data.style set from storage bac_display:data style.$(team).pagination
function bac_display:refresh/callback/page_number/finish with storage bac_display:macro data
