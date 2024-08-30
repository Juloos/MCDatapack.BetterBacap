execute store result storage utils:macro data.i int 1 run \
    scoreboard players add i utils.vars 1
$function $(macro) with storage utils:macro data
$execute if score i utils.vars < maxi utils.vars run function utils:_subtask/range_loop_macro {macro:"$(macro)"}
