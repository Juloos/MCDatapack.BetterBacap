# Termination condition
execute unless data storage buffer array[0] run return fail


data modify storage buffer element set from storage buffer array[0]
data remove storage buffer array[0]
$execute if data storage buffer {element:$(value)} run \
    return run function utils:_subtask/remove_value_from_array_2


scoreboard players add i utils.vars 1
return run function utils:_subtask/remove_value_from_array_1 with storage utils:macro data
