data modify storage bac_tracker:macro data set value {adv_bac_name:"when_the_squad_hops_into_town",adv_full_name:"minecraft:husbandry/leash_all_frog_variants",adv_category:"animal",adv_extra_categories:["trophy"],adv_bac_type:"goal",player_bac_team:"any",member_adv_rank:-1s}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color
function bac_tracker:on_advancement_earned with storage bac_tracker:macro data
