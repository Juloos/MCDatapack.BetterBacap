function bac_tracker:load/data
function bac_tracker:load/setup
execute if data storage bac_tracker:dev {enable:1b} run \
    function bac_tracker:load/dev
schedule function bac_tracker:load/scheduled_setup_1t 1t
schedule function bac_tracker:load/scheduled_setup_2t 2t
