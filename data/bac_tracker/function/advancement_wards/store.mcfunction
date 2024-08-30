$execute unless data storage bac_tracker:data players[{name:"$(player_name)"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)"}] run \
    data modify storage bac_tracker:data players[{name:"$(player_name)"}].advancements append value { \
        name:"$(adv_bac_name)", \
        category:"$(adv_category)", \
        extra_categories:$(adv_extra_categories), \
        type:"$(adv_bac_type)", \
        global_rank:$(player_adv_rank)s, \
        team_rank:$(member_adv_rank)s \
}

$execute unless data storage bac_tracker:data teams[{name:"$(player_bac_team)"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)"}] run \
    data modify storage bac_tracker:data teams[{name:"$(player_bac_team)"}].advancements append value { \
        name:"$(adv_bac_name)", \
        category:"$(adv_category)", \
        extra_categories:$(adv_extra_categories), \
        type:"$(adv_bac_type)", \
}

$execute unless data storage bac_tracker:data teams[{name:"any"}].advancements[{name:"$(adv_bac_name)",category:"$(adv_category)"}] run \
    data modify storage bac_tracker:data teams[{name:"any"}].advancements append value { \
        name:"$(adv_bac_name)", \
        category:"$(adv_category)", \
        extra_categories:$(adv_extra_categories), \
        type:"$(adv_bac_type)", \
}
