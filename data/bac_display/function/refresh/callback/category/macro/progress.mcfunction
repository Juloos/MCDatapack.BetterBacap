# normal
$execute if score align.$(team) bac_display.config matches 0 run \
    return run data modify storage bac_display:data page.$(team)[0].number_$(index) set value '"$(progress)/$(max)"'

# spaced
$execute if score align.$(team) bac_display.config matches 1 run \
    return run data modify storage bac_display:data page.$(team)[0].number_$(index) set value '"$(progress) / $(max)"'

# aligned
$execute if score align.$(team) bac_display.config matches 2 run \
    return run function bac_display:refresh/callback/category/macro/progress/aligned {team:"$(team)",index:$(index),progress:$(progress),max:$(max)}

# spaced_aligned
$execute if score align.$(team) bac_display.config matches 3 run \
    return run function bac_display:refresh/callback/category/macro/progress/spaced_aligned {team:"$(team)",index:$(index),progress:$(progress),max:$(max)}
