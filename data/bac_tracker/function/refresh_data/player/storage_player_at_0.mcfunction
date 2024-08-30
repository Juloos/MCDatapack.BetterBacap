$execute unless data storage bac_tracker:data players[{name:"$(player_name)"}] run return run \
    data modify storage bac_tracker:data players prepend value {name:"$(player_name)"}
$data modify storage bac_tracker:data players[{name:"$(player_name)"}].tag set value 1b
data modify storage bac_tracker:data players prepend from storage bac_tracker:data players[{tag:1b}]
data remove storage bac_tracker:data players[0].tag
data remove storage bac_tracker:data players[{tag:1b}]
