scoreboard players remove target_refresh_time bac_tracker.config 10
execute if score target_refresh_time bac_tracker.config matches ..0 run \
    scoreboard players set target_refresh_time bac_tracker.config 1

function blazeandcave:config/tracker_settings
