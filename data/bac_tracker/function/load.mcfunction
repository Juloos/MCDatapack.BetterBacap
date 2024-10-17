execute if score prevent_install_loop bac_tracker.vars matches 1 run \
    return fail

function bac_tracker:load/data
function bac_tracker:load/setup
schedule function bac_tracker:load/scheduled_setup_1t 1t
schedule function bac_tracker:load/scheduled_setup_2t 2t
