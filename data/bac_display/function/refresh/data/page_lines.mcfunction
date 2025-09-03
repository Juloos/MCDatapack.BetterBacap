$data modify storage bac_display:macro data set value {team:"$(team)", to_page_lines:"$(from_page)_lines"}
$data modify storage bac_display:macro data merge from storage bac_display:data $(from_page).$(team)
function bac_display:refresh/data/macro/page_lines with storage bac_display:macro data
