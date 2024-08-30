$execute if score coop bac_settings matches 1 \
    if data storage bac_tracker:data players[{name:"$(player_name)"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)",global_rank:1s}] run \
        data remove storage bac_tracker:data teams[{name:"any"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)"}]

$execute if score coop bac_settings matches 2 \
    if data storage bac_tracker:data players[{name:"$(player_name)"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)",team_rank:1s}] run \
        data remove storage bac_tracker:data teams[{name:"$(player_bac_team)"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)"}]

$data remove storage bac_tracker:data players[{name:"$(player_name)"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)"}]
