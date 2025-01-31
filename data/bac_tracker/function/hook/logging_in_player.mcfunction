data modify storage bac_tracker:macro data set value {player_bac_team:any}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color

function bac_tracker:refresh_data/player/storage_player_at_0 with storage bac_tracker:macro data

# The reversed conditions of bac_tracker:refresh_data/player/all
execute if score refresh_type bac_tracker.config matches 0..2 \
    unless score refresh_type bac_tracker.config matches 1 run \
        function bac_tracker:refresh_data/player/category/backwards
execute if score refresh_type bac_tracker.config matches 0..1 run \
    function bac_tracker:refresh_data/player/category/rewards

# Refresh instantly the scoreboard on singleplayer world join
execute store result score player_count bac_tracker.vars if entity @a
execute if score player_count bac_tracker.vars matches 1 run function bac_display:refresh
