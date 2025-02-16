$execute if score count_hidden.$(team) bac_display.config matches 0 run return run \
    data modify storage bac_display:result count_hidden set value "No"

$execute if score count_hidden.$(team) bac_display.config matches 1 run return run \
    data modify storage bac_display:result count_hidden set value "Overflow"

$execute if score count_hidden.$(team) bac_display.config matches 2 run return run \
    data modify storage bac_display:result count_hidden set value "Yes"

data modify storage bac_display:result count_hidden set value "(Unknown)"
