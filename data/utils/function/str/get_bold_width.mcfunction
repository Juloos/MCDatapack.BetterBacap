# Get the total pixel width of the string given in storage 'utils:macro data.string' as the return value

execute store result score i utils.vars run \
    data get storage utils:macro data.string

scoreboard players set acc utils.vars 0
execute unless score i utils.vars matches ..0 run \
    function utils:str/_subtask/get_bold_width

return run scoreboard players get acc utils.vars
