# Ran 1 tick after setup

execute if score prevent_install_loop bac_tracker.vars matches 0 run \
    function bac_tracker:load/install_over_others with storage bac_tracker:data pack_info
