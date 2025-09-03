$function $(callback) {index:$(line), team:"$(team)", page_number:$(page_number), page_count:$(page_count), to_page:"$(to_page)"}

$data modify storage bac_display:data $(to_page).$(team).name set from storage bac_display:data $(to_page).$(team).name_$(line)
$data modify storage bac_display:data $(to_page).$(team).number set from storage bac_display:data $(to_page).$(team).number_$(line)
$function bac_display:refresh/data/page_line {team:"$(team)", from_page:"$(to_page)", to_page:"$(to_page)"}
