$execute if data storage color_picker:data callbacks[{confirm_callback:"$(confirm_callback)",update_callback:"$(update_callback)",cancel_callback:"$(cancel_callback)"}] run \
    return run data get storage color_picker:data callbacks[{confirm_callback:"$(confirm_callback)",update_callback:"$(update_callback)",cancel_callback:"$(cancel_callback)"}].id

$data modify storage color_picker:macro data merge value {confirm_callback:"$(confirm_callback)",update_callback:"$(update_callback)",cancel_callback:"$(cancel_callback)"}
execute store result storage color_picker:macro data.callbacks_id byte 1 run \
    scoreboard players get next_callbacks_id color_picker.vars
function color_picker:display/rgb/define_callbacks/set_in_storage with storage color_picker:macro data

scoreboard players add next_callbacks_id color_picker.vars 1
scoreboard players operation next_callbacks_id color_picker.vars %= 64 color_picker.vars

return run data get storage color_picker:macro data.callbacks_id
