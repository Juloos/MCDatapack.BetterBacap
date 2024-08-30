# Ran 1 tick after setup

execute if score installed bac_tracker.config matches 0 run \
    function bac_tracker:load/install_over_others with storage bac_tracker:data pack_info
