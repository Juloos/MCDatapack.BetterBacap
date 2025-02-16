$execute if score align.$(team) bac_display.config matches 0 run return run \
    data modify storage bac_display:result align set value "Normal"

$execute if score align.$(team) bac_display.config matches 1 run return run \
    data modify storage bac_display:result align set value "Spaced"

$execute if score align.$(team) bac_display.config matches 2 run return run \
    data modify storage bac_display:result align set value "Aligned"

$execute if score align.$(team) bac_display.config matches 3 run return run \
    data modify storage bac_display:result align set value "Spaced & Aligned"

data modify storage bac_display:result align set value "(Unknown)"
