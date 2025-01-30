scoreboard players set tmp bac_tracker.vars 1
scoreboard players operation tmp bac_tracker.vars -= refresh_on_load bac_tracker.config
scoreboard players operation refresh_on_load bac_tracker.config = tmp bac_tracker.vars

function blazeandcave:config/tracker_settings
