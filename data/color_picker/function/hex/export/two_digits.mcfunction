$scoreboard players set tmp color_picker.vars $(value)
execute store result storage color_picker:macro data.index byte 1 run \
    scoreboard players operation tmp color_picker.vars /= 16 color_picker.vars
function color_picker:hex/export/one_digit with storage color_picker:macro data
data modify storage color_picker:macro data.upper_hex set from storage color_picker:result hex

$scoreboard players set tmp color_picker.vars $(value)
execute store result storage color_picker:macro data.index byte 1 run \
    scoreboard players operation tmp color_picker.vars %= 16 color_picker.vars
function color_picker:hex/export/one_digit with storage color_picker:macro data
data modify storage color_picker:macro data.lower_hex set from storage color_picker:result hex

function color_picker:hex/export/merge2 with storage color_picker:macro data
