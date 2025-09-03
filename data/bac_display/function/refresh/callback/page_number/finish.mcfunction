$data modify storage bac_display:data $(to_page).$(team).name_$(index) set value '""'
$data modify storage bac_display:data $(to_page).$(team).number_$(index) set value '{"text":"Page $(page_number) of $(page_count)",$(style)}'
