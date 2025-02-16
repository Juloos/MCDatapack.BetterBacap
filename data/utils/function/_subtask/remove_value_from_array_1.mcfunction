# Termination condition
execute unless data storage minecraft:buffer array[0] run return fail


data modify storage minecraft:buffer element set from storage minecraft:buffer array[0]
data remove storage minecraft:buffer array[0]
$execute if data storage minecraft:buffer {element:$(value)} run \
    return run function utils:_subtask/remove_value_from_array_2


scoreboard players add i utils.vars 1
return run function utils:_subtask/remove_value_from_array_1 with storage utils:macro data
