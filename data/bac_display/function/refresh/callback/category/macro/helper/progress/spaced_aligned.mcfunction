$data modify storage minecraft:buffer max set value "$(max)"
execute store result score max_len bac_display.vars run data get storage minecraft:buffer max

$execute if score max_len bac_display.vars matches 1 run \
    data modify storage bac_display:data page.$(team)[0].number_$(index) set value '[{"text":"$(progress)",$(progress_style)}," ",{"text":"/",$(separator_style)},{"text":" ","bold":true},{"text":" ","bold":true}," "," "," ",{"text":"$(max)",$(max_style)}]'

$execute if score max_len bac_display.vars matches 2 run \
    data modify storage bac_display:data page.$(team)[0].number_$(index) set value '[{"text":"$(progress)",$(progress_style)}," ",{"text":"/",$(separator_style)}," "," "," "," ",{"text":"$(max)",$(max_style)}]'

$execute if score max_len bac_display.vars matches 3 run \
    data modify storage bac_display:data page.$(team)[0].number_$(index) set value '[{"text":"$(progress)",$(progress_style)}," ",{"text":"/",$(separator_style)},{"text":" ","bold":true},{"text":" ","bold":true},{"text":"$(max)",$(max_style)}]'

$execute if score max_len bac_display.vars matches 4 run \
    data modify storage bac_display:data page.$(team)[0].number_$(index) set value '[{"text":"$(progress)",$(progress_style)}," ",{"text":"/",$(separator_style)}," ",{"text":"$(max)",$(max_style)}]'
