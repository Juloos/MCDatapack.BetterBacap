data modify storage color_picker:macro data.index set string storage color_picker:input hex 1 2
execute store result score @s color_picker.rgb.r run \
    function color_picker:hex/import/one_digit with storage color_picker:macro data
scoreboard players operation @s color_picker.rgb.r *= 16 color_picker.vars

data modify storage color_picker:macro data.index set string storage color_picker:input hex 2 3
execute store result score tmp color_picker.vars run \
    function color_picker:hex/import/one_digit with storage color_picker:macro data
scoreboard players operation @s color_picker.rgb.r += tmp color_picker.vars


data modify storage color_picker:macro data.index set string storage color_picker:input hex 3 4
execute store result score @s color_picker.rgb.g run \
    function color_picker:hex/import/one_digit with storage color_picker:macro data
scoreboard players operation @s color_picker.rgb.g *= 16 color_picker.vars

data modify storage color_picker:macro data.index set string storage color_picker:input hex 4 5
execute store result score tmp color_picker.vars run \
    function color_picker:hex/import/one_digit with storage color_picker:macro data
scoreboard players operation @s color_picker.rgb.g += tmp color_picker.vars


data modify storage color_picker:macro data.index set string storage color_picker:input hex 5 6
execute store result score @s color_picker.rgb.b run \
    function color_picker:hex/import/one_digit with storage color_picker:macro data
scoreboard players operation @s color_picker.rgb.b *= 16 color_picker.vars

data modify storage color_picker:macro data.index set string storage color_picker:input hex 6 7
execute store result score tmp color_picker.vars run \
    function color_picker:hex/import/one_digit with storage color_picker:macro data
scoreboard players operation @s color_picker.rgb.b += tmp color_picker.vars
