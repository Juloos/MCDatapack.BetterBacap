function color_picker:hex/export
data modify storage color_picker:macro data.color set from storage color_picker:result hex

$data modify storage color_picker:macro data.callbacks_id set value $(callbacks_id)


function color_picker:history/export_all
$data modify storage color_picker:result data.callbacks_id set value $(callbacks_id)
function color_picker:display/rgb/prepare_data/filled_history with storage color_picker:result data
function color_picker:display/rgb/prepare_data/leftover_history


execute store result storage color_picker:macro data.r short 1 run scoreboard players add @s color_picker.rgb.r 1
execute store result storage color_picker:macro data.g short 1 run scoreboard players add @s color_picker.rgb.g 1
execute store result storage color_picker:macro data.b short 1 run scoreboard players add @s color_picker.rgb.b 1

function color_picker:display/rgb/prepare_data with storage color_picker:macro data

execute store result storage color_picker:macro data.r short 1 run scoreboard players remove @s color_picker.rgb.r 1
execute store result storage color_picker:macro data.g short 1 run scoreboard players remove @s color_picker.rgb.g 1
execute store result storage color_picker:macro data.b short 1 run scoreboard players remove @s color_picker.rgb.b 1


function color_picker:display/rgb/finish with storage color_picker:macro data
