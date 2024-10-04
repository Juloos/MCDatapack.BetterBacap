execute if score refresh_type bac_tracker.config matches 0..2 \
    unless score refresh_type bac_tracker.config matches 1 run \
        function bac_tracker:refresh_data/player/category/rewards
execute if score refresh_type bac_tracker.config matches 0..1 run \
    function bac_tracker:refresh_data/player/category/backwards
