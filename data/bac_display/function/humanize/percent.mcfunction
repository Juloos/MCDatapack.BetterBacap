$execute if score percent.$(team) bac_display.config matches 0 run return run \
    data modify storage bac_display:result percent set value "None"

$execute if score percent.$(team) bac_display.config matches 1 run return run \
    data modify storage bac_display:result percent set value "Outer left"

$execute if score percent.$(team) bac_display.config matches 2 run return run \
    data modify storage bac_display:result percent set value "Outer right"

$execute if score percent.$(team) bac_display.config matches 3 run return run \
    data modify storage bac_display:result percent set value "Inner left"

$execute if score percent.$(team) bac_display.config matches 4 run return run \
    data modify storage bac_display:result percent set value "Inner right"

$execute if score percent.$(team) bac_display.config matches 5 run return run \
    data modify storage bac_display:result percent set value "Center"

data modify storage bac_display:result percent set value "(Unknown)"
