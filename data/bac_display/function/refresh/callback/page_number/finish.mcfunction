$data modify storage bac_display:data page.$(team)[0].name_$(index) set value '""'
$data modify storage bac_display:data page.$(team)[0].number_$(index) set value '{"text":"Page $(page_number) of $(page_count)",$(style)}'
