data modify storage bac_tracker:macro data set value {adv_bac_name:"blaze_extinguisher",adv_full_name:"blazeandcave:nether/blaze_extinguisher",adv_category:"nether",adv_extra_categories:[],adv_bac_type:"goal",player_bac_team:"any",member_adv_rank:-1s}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color
function bac_tracker:on_advancement_revoked with storage bac_tracker:macro data
