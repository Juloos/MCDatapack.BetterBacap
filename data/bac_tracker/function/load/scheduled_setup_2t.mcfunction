# Ran 2 ticks after setup

# Allow for extension installations later on with reloads
scoreboard players set prevent_install_loop bac_tracker.vars 0


function bac_tracker:refresh_data/category/size

execute if score refresh_on_load bac_tracker.config matches 1 as @a[scores={bac_tracker.player.tracking_enabled=1}] run function bac_tracker:refresh_data/player/category/rewards
execute if score refresh_on_load bac_tracker.config matches 1 as @a[scores={bac_tracker.player.tracking_enabled=1}] run function bac_tracker:refresh_data/player/category/backwards
