execute if score refresh_type bac_tracker.config matches 0 run return run \
    data modify storage bac_tracker:result refresh_type set value "None"

execute if score refresh_type bac_tracker.config matches 1 run return run \
    data modify storage bac_tracker:result refresh_type set value "Revoked advancements only"

execute if score refresh_type bac_tracker.config matches 2 run return run \
    data modify storage bac_tracker:result refresh_type set value "Earned advancements only"

execute if score refresh_type bac_tracker.config matches 3 run return run \
    data modify storage bac_tracker:result refresh_type set value "Any advancement change"

data modify storage bac_tracker:result refresh_type set value "(Unknown)"
