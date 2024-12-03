$data modify $(target) insert $(index) from storage minecraft:buffer list[0]
data remove storage minecraft:buffer list[0]
execute if data storage minecraft:buffer list[0] run \
    function utils:_subtask/insert_all with storage utils:macro data
