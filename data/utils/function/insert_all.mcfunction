$data modify storage utils:macro data set value {target:"$(target)", index:$(index)}
$data modify storage minecraft:buffer list set value $(insert_list)

function utils:_subtask/insert_all with storage utils:macro data
