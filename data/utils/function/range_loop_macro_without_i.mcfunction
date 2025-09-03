# Loop function macro <macro> from integer <from> (included) to integer <to> (excluded) and with data <data>,
# the looped function macro can stop the iteration at any time using the $$(break) command

$scoreboard players set i utils.vars $(from)
scoreboard players remove i utils.vars 1
$scoreboard players set maxi utils.vars $(to)
scoreboard players remove maxi utils.vars 1

$data modify storage utils:macro data set value {break:"scoreboard players set i utils.vars $(to)"}
$data modify storage utils:macro data merge value $(data)
$execute if score i utils.vars < maxi utils.vars run function utils:_subtask/range_loop_macro_without_i {macro:"$(macro)"}
