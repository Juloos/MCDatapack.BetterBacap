# Ran 2 ticks after setup

function bac_tracker:refresh_data/category/size

execute if score refresh_on_load bac_tracker.config matches 1 \
    as @a[scores={bac_tracker.player.tracking_enabled=1}] run \
        function bac_tracker:refresh_data/player/forced_all
execute if score refresh_on_load bac_tracker.config matches 1 run \
    function bac_display:refresh
