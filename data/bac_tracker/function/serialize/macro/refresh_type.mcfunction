data remove storage bac_tracker:macro data
$data modify storage bac_tracker:macro data.value set value "$(value)"
return run function bac_tracker:serialize/refresh_type
