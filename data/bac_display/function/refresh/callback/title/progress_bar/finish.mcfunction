$execute if score percent.$(team) bac_display.config matches 1 run \
    return run data modify storage bac_display:data page.$(team)[0].title set value '[{"text":"$(percent_decimals).$(percent_remainder)%",$(percent_style)},{"text":" [",$(left_style)},{"text":"$(done)",$(done_style)},{"text":"$(remaining)",$(remaining_style)},{"text":"]",$(right_style)}]'

$execute if score percent.$(team) bac_display.config matches 2 run \
    return run data modify storage bac_display:data page.$(team)[0].title set value '[{"text":"[",$(left_style)},{"text":"$(done)",$(done_style)},{"text":"$(remaining)",$(remaining_style)},{"text":"] ",$(right_style)},{"text":"$(percent_decimals).$(percent_remainder)%",$(percent_style)}]'

$data modify storage bac_display:data page.$(team)[0].title set value '{"text":"[",$(left_style)},{"text":"$(done)",$(done_style)},{"text":"$(remaining)",$(remaining_style)},{"text":"]",$(right_style)}'
