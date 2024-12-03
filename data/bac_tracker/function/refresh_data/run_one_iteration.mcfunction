scoreboard players operation nb_players_acc bac_tracker.vars += nb_players_per_tick bac_tracker.vars

data remove storage bac_tracker:macro data
execute store result storage bac_tracker:macro data.nb_players_to_check int 0.001 run \
    scoreboard players get nb_players_acc bac_tracker.vars

scoreboard players operation nb_players_acc bac_tracker.vars %= 1000 bac_tracker.vars


function bac_tracker:refresh_data/one_iteration with storage bac_tracker:macro data
