# Remove value <value> from array <array> of storage <storage>

$data modify storage buffer array set from storage $(storage) $(array)

$data modify storage utils:macro data set value {storage:"$(storage)",array:"$(array)",value:"$(value)"}

scoreboard players set i utils.vars 0
return run function utils:_subtask/remove_value_from_array_1 with storage utils:macro data
