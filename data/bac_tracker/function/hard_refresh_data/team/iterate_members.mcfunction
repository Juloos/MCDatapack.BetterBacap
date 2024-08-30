# Termination condition
execute unless data storage buffer members[0] run return 1


data modify storage bac_tracker:macro data.player set from storage buffer members[0]
data remove storage buffer members[0]

function bac_tracker:refresh_data/team/one_member with storage bac_tracker:macro data


function bac_tracker:refresh_data/team/iterate_members
