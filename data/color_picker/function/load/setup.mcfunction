scoreboard objectives add color_picker.vars dummy

scoreboard objectives add color_picker.rgb.r dummy
scoreboard objectives add color_picker.rgb.g dummy
scoreboard objectives add color_picker.rgb.b dummy


scoreboard players set 16 color_picker.vars 16
scoreboard players set 64 color_picker.vars 64


execute unless score next_callbacks_id color_picker.vars = next_callbacks_id color_picker.vars run \
    scoreboard players set next_callbacks_id color_picker.vars 0
