# Special case for when target_refresh_time is 1 or less: refresh every tick
execute if score target_refresh_time bac_tracker.config matches ..1 run return run \
    function bac_tracker:refresh_data/run_all_iterations


# End the previous iteration, then start refreshing scores again for the next time
scoreboard players add ticks bac_tracker.vars 1
scoreboard players operation ticks bac_tracker.vars %= target_refresh_time bac_tracker.config
execute if score ticks bac_tracker.vars matches 0 run function bac_tracker:refresh_data/end_of_iteration
execute if score ticks bac_tracker.vars matches 0 run function bac_tracker:refresh_data/start_new_iteration

function bac_tracker:refresh_data/run_one_iteration
