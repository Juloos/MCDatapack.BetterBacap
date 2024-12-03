tag @a[tag=bac_tracker.checked] remove bac_tracker.checked

execute store result score nb_players_per_tick bac_tracker.vars if entity @a[scores={bac_tracker.player.tracking_enabled=1}]
scoreboard players operation nb_players_per_tick bac_tracker.vars *= 1000 bac_tracker.vars
scoreboard players operation nb_players_acc bac_tracker.vars = nb_players_per_tick bac_tracker.vars

scoreboard players operation nb_players_per_tick bac_tracker.vars /= target_refresh_time bac_tracker.config
scoreboard players operation nb_players_acc bac_tracker.vars %= target_refresh_time bac_tracker.config
