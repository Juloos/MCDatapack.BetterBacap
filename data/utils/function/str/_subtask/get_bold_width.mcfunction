data modify storage utils:macro data.char set string storage utils:macro data.string 0 1
data modify storage utils:macro data.string set string storage utils:macro data.string 1

execute store result score tmp utils.vars run \
    function utils:char/get_bold_width
scoreboard players operation acc utils.vars += tmp utils.vars

scoreboard players remove i utils.vars 1
execute unless score i utils.vars matches ..0 run \
    function utils:str/_subtask/get_width
