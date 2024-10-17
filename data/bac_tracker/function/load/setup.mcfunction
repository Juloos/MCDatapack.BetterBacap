# Internal objectives
scoreboard objectives add bac_tracker.config dummy
scoreboard objectives add bac_tracker.vars dummy

# Per player objectives
scoreboard objectives add bac_tracker.player.tracking_enabled dummy
scoreboard objectives add bac_tracker.player.login_detection dummy

# Per advancement objectives
scoreboard objectives add bac_tracker.advancement.one_rank_per_tick dummy


execute unless score prevent_install_loop bac_tracker.vars = prevent_install_loop bac_tracker.vars run \
    scoreboard players set prevent_install_loop bac_tracker.vars 0


# Default config
execute unless score target_refresh_time bac_tracker.config = target_refresh_time bac_tracker.config \
    store result score target_refresh_time bac_tracker.config run \
        data get storage bac_tracker:data default_config.target_refresh_time

data remove storage bac_tracker:macro data
data modify storage bac_tracker:macro data.value set from storage bac_tracker:data default_config.refresh_type
execute unless score refresh_type bac_tracker.config = refresh_type bac_tracker.config \
    store result score refresh_type bac_tracker.config run \
        function bac_tracker:serialize/refresh_type

execute unless score refresh_on_load bac_tracker.config = refresh_on_load bac_tracker.config \
    store result score refresh_on_load bac_tracker.config run \
        data get storage bac_tracker:data default_config.refresh_on_load

# Constants
scoreboard players set 1000 bac_tracker.vars 1000
function bac_tracker:1rpt_reset


# Some edge cases will need way more than the default limit
gamerule maxCommandChainLength 1000000
