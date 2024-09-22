# Considering that we are only being called here from helper

# normal
$execute if score align.$(team) bac_display.config matches 0 run return run \
    function bac_display:refresh/callback/category/macro/helper/progress/normal with storage bac_display:macro data

# spaced
$execute if score align.$(team) bac_display.config matches 1 run return run \
    function bac_display:refresh/callback/category/macro/helper/progress/spaced with storage bac_display:macro data

# aligned
$execute if score align.$(team) bac_display.config matches 2 run return run \
    function bac_display:refresh/callback/category/macro/helper/progress/aligned with storage bac_display:macro data

# spaced_aligned
$execute if score align.$(team) bac_display.config matches 3 run return run \
    function bac_display:refresh/callback/category/macro/helper/progress/spaced_aligned with storage bac_display:macro data