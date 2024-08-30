$function utils:remove_number_from_array {storage:"bac_tracker:data",array:"team.$(player_previous_bac_team).members",value:'"$(player_name)"'}
$execute unless data storage bac_tracker:data {team:{$(player_bac_team):{members:["$(player_name)"]}}} run \
    data modify storage bac_tracker:data team.$(player_bac_team).members prepend value "$(player_name)"
