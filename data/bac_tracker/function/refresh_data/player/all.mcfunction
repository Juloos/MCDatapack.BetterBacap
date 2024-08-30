data modify storage bac_tracker:macro data set value {player_bac_team:any}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color

function bac_tracker:refresh_data/player/storage_player_at_0 with storage bac_tracker:macro data


function bac_tracker:refresh_data/player/category/backwards/adventure_1
function bac_tracker:refresh_data/player/category/backwards/adventure_2
function bac_tracker:refresh_data/player/category/backwards/animal_1
function bac_tracker:refresh_data/player/category/backwards/animal_2
function bac_tracker:refresh_data/player/category/backwards/bacap
function bac_tracker:refresh_data/player/category/backwards/biomes
function bac_tracker:refresh_data/player/category/backwards/building_1
function bac_tracker:refresh_data/player/category/backwards/building_2
function bac_tracker:refresh_data/player/category/backwards/challenges
function bac_tracker:refresh_data/player/category/backwards/enchanting
function bac_tracker:refresh_data/player/category/backwards/end
function bac_tracker:refresh_data/player/category/backwards/farming
function bac_tracker:refresh_data/player/category/backwards/mining_1
function bac_tracker:refresh_data/player/category/backwards/mining_2
function bac_tracker:refresh_data/player/category/backwards/monsters
function bac_tracker:refresh_data/player/category/backwards/nether_1
function bac_tracker:refresh_data/player/category/backwards/nether_2
function bac_tracker:refresh_data/player/category/backwards/potion
function bac_tracker:refresh_data/player/category/backwards/redstone
function bac_tracker:refresh_data/player/category/backwards/statistics
function bac_tracker:refresh_data/player/category/backwards/weaponry
