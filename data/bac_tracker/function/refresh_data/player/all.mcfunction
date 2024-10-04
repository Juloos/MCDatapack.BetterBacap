data modify storage bac_tracker:macro data set value {player_bac_team:any}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color

function bac_tracker:refresh_data/player/storage_player_at_0 with storage bac_tracker:macro data

execute if score refresh_type bac_tracker.config matches 1..3 \
    unless score refresh_type bac_tracker.config matches 2 run \
        function bac_tracker:refresh_data/player/category/backwards
execute if score refresh_type bac_tracker.config matches 2..3 run \
    function bac_tracker:refresh_data/player/category/rewards
