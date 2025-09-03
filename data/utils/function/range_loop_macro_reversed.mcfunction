# Loop function macro <macro> from integer <from> (included) to integer <to> (excluded) with step -1 and with data <data>,
# the looped function macro will also have access to an index <i> inside data, and can stop the iteration
# at any time using the $$(break) command
# Tip: use "range_loop_macro_without_i" if you don't use the index <i> for better performance

$scoreboard players set i utils.vars $(from)
scoreboard players add i utils.vars 1
$scoreboard players set mini utils.vars $(to)
scoreboard players add mini utils.vars 1

$data modify storage utils:macro data set value {break:"scoreboard players set i utils.vars $(to)"}
$data modify storage utils:macro data merge value $(data)
$execute if score i utils.vars > mini utils.vars run function utils:_subtask/range_loop_macro_reversed {macro:"$(macro)"}
