data modify storage bac_tracker:macro data set value {player_bac_team:any}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color

function bac_tracker:refresh_data/player/storage_player_at_0 with storage bac_tracker:macro data

function bac_tracker:refresh_data/player/category/backwards
function bac_tracker:refresh_data/player/category/rewards
