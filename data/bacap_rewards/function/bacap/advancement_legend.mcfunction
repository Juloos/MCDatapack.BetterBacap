data modify storage bac_tracker:macro data set value {adv_bac_name:"advancement_legend",adv_full_name:"blazeandcave:bacap/advancement_legend",adv_category:"bacap",adv_extra_categories:["trophy","milestones"],adv_bac_type:"milestone",player_bac_team:"any",member_adv_rank:-1s}
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color
function bac_tracker:on_advancement_earned with storage bac_tracker:macro data

# Special title
title @s title {"text":"Congratulations!","color":"light_purple","bold":true}
title @s subtitle {"text":"You have completed ","color":"white","extra":[{"text":"Blaze","color":"gold"},{"text":"and","color":"white"},{"text":"Cave","color":"aqua"},{"text":"'s Advancements Pack!","color":"white"}]}
title @s times 20 200 20
