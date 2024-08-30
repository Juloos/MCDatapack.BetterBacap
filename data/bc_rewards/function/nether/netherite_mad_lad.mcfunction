data modify storage bac_tracker:macro data set value {adv_bac_name:"netherite_mad_lad",adv_full_name:"blazeandcave:nether/netherite_mad_lad",adv_category:"nether",adv_extra_categories:["hidden","trophy"],adv_bac_type:"challenge",player_bac_team:"any",member_adv_rank:-1s}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color
function bac_tracker:on_advancement_earned with storage bac_tracker:macro data
