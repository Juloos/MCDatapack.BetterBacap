$data modify storage bac_display:data $(to_page).$(team).number_$(index) set value '[{"text":"$(progress)",$(progress_style)},{"text":"/",$(separator_style)},{"text":"$(max)",$(max_style)}]'
