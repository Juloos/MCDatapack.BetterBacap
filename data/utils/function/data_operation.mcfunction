# Perform operation <op> between the integer value in <data> and a constant <const>

$execute store result score data utils.vars run data get $(data)
$scoreboard players set const utils.vars $(const)
$execute store result $(data) int 1 run return run \
    scoreboard players operation data utils.vars $(op) const utils.vars
