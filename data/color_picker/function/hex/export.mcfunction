execute store result storage color_picker:macro data.value short 1 run \
    scoreboard players get @s color_picker.rgb.r
function color_picker:hex/export/two_digits with storage color_picker:macro data
data modify storage color_picker:macro data.red_hex set from storage color_picker:result hex

execute store result storage color_picker:macro data.value short 1 run \
    scoreboard players get @s color_picker.rgb.g
function color_picker:hex/export/two_digits with storage color_picker:macro data
data modify storage color_picker:macro data.green_hex set from storage color_picker:result hex

execute store result storage color_picker:macro data.value short 1 run \
    scoreboard players get @s color_picker.rgb.b
function color_picker:hex/export/two_digits with storage color_picker:macro data
data modify storage color_picker:macro data.blue_hex set from storage color_picker:result hex

function color_picker:hex/export/merge3 with storage color_picker:macro data
