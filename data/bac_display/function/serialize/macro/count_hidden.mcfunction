data remove storage bac_display:macro data
$data modify storage bac_display:macro data.value set value "$(value)"
return run function bac_display:serialize/count_hidden
