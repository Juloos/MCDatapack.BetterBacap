$scoreboard players set r color_picker.vars $(r)
$scoreboard players set g color_picker.vars $(g)
$scoreboard players set b color_picker.vars $(b)
execute if function color_picker:history/new_entry/is_in_presets run return fail


$data modify storage color_picker:macro data merge value {r:$(r),g:$(g),b:$(b)}

execute unless score @s color_picker.rgb.hx = @s color_picker.rgb.hx run \
    scoreboard players set @s color_picker.rgb.hx -1


# When already in history
execute store result score target color_picker.vars run \
    function color_picker:history/new_entry/is_in_history

execute if score target color_picker.vars matches 1.. run \
    function color_picker:history/new_entry/shift_until_target
execute if score target color_picker.vars matches 0.. run return run \
    function color_picker:history/new_entry/finish with storage color_picker:macro data


# When history is full
execute if score @s color_picker.rgb.hx matches 16.. run \
    function color_picker:history/new_entry/shift
execute if score @s color_picker.rgb.hx matches 16.. run return run \
    function color_picker:history/new_entry/finish with storage color_picker:macro data


# When history is not full
execute store result score target color_picker.vars run \
    scoreboard players add @s color_picker.rgb.hx 1
execute if score target color_picker.vars matches 1.. run \
    function color_picker:history/new_entry/shift_until_target

function color_picker:history/new_entry/finish with storage color_picker:macro data
