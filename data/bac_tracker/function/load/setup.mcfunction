# Internal objectives
scoreboard objectives add bac_tracker.config dummy
scoreboard objectives add bac_tracker.vars dummy

# Per category objectives holding the advancement counts
scoreboard objectives add bac_tracker.category.adventure dummy
scoreboard objectives add bac_tracker.category.animal dummy
scoreboard objectives add bac_tracker.category.bacap dummy
scoreboard objectives add bac_tracker.category.biomes dummy
scoreboard objectives add bac_tracker.category.building dummy
scoreboard objectives add bac_tracker.category.challenges dummy
scoreboard objectives add bac_tracker.category.enchanting dummy
scoreboard objectives add bac_tracker.category.end dummy
scoreboard objectives add bac_tracker.category.farming dummy
scoreboard objectives add bac_tracker.category.mining dummy
scoreboard objectives add bac_tracker.category.monsters dummy
scoreboard objectives add bac_tracker.category.nether dummy
scoreboard objectives add bac_tracker.category.potion dummy
scoreboard objectives add bac_tracker.category.redstone dummy
scoreboard objectives add bac_tracker.category.statistics dummy
scoreboard objectives add bac_tracker.category.terralith dummy
scoreboard objectives add bac_tracker.category.weaponry dummy
scoreboard objectives add bac_tracker.category.hidden dummy
scoreboard objectives add bac_tracker.category.total dummy

# Per player objectives
scoreboard objectives add bac_tracker.player.tracking_enabled dummy

# Per advancement objectives
scoreboard objectives add bac_tracker.advancement.one_rank_per_tick dummy


# Default config
execute unless score installed bac_tracker.config = installed bac_tracker.config run \
    scoreboard players set installed bac_tracker.config 0

execute unless score target_refresh_time bac_tracker.config = target_refresh_time bac_tracker.config \
    store result score target_refresh_time bac_tracker.config run \
        data get storage bac_tracker:data default_config.target_refresh_time

# Constants
scoreboard players set 1000 bac_tracker.vars 1000
function bac_tracker:1rpt_reset


# Some edge cases will need way more than the default limit
gamerule maxCommandChainLength 1073741824
