function bac_tracker:hard_refresh_data/player/advancements/category/adventure
function bac_tracker:hard_refresh_data/player/advancements/category/animal
function bac_tracker:hard_refresh_data/player/advancements/category/bacap
function bac_tracker:hard_refresh_data/player/advancements/category/biomes
function bac_tracker:hard_refresh_data/player/advancements/category/building
function bac_tracker:hard_refresh_data/player/advancements/category/challenges
function bac_tracker:hard_refresh_data/player/advancements/category/enchanting
function bac_tracker:hard_refresh_data/player/advancements/category/end
function bac_tracker:hard_refresh_data/player/advancements/category/farming
function bac_tracker:hard_refresh_data/player/advancements/category/mining
function bac_tracker:hard_refresh_data/player/advancements/category/monsters
function bac_tracker:hard_refresh_data/player/advancements/category/nether
function bac_tracker:hard_refresh_data/player/advancements/category/potion
function bac_tracker:hard_refresh_data/player/advancements/category/redstone
function bac_tracker:hard_refresh_data/player/advancements/category/statistics
function bac_tracker:hard_refresh_data/player/advancements/category/terralith
function bac_tracker:hard_refresh_data/player/advancements/category/weaponry

function bac_tracker:hard_refresh_data/player/advancements/category/hidden
function bac_tracker:hard_refresh_data/player/advancements/category/total


data modify storage bac_tracker:macro data set value {player_bac_team:any,player_previous_bac_team:any}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color
function bac_tracker:hard_refresh_data/player/advancements/put_in_storage with storage bac_tracker:macro data
