scoreboard objectives add color_picker.vars dummy

# RGB
scoreboard objectives add color_picker.rgb.r dummy
scoreboard objectives add color_picker.rgb.g dummy
scoreboard objectives add color_picker.rgb.b dummy


# RGB History
scoreboard objectives add color_picker.rgb.hx dummy

scoreboard objectives add color_picker.rgb.h0.r dummy
scoreboard objectives add color_picker.rgb.h0.g dummy
scoreboard objectives add color_picker.rgb.h0.b dummy

scoreboard objectives add color_picker.rgb.h1.r dummy
scoreboard objectives add color_picker.rgb.h1.g dummy
scoreboard objectives add color_picker.rgb.h1.b dummy

scoreboard objectives add color_picker.rgb.h2.r dummy
scoreboard objectives add color_picker.rgb.h2.g dummy
scoreboard objectives add color_picker.rgb.h2.b dummy

scoreboard objectives add color_picker.rgb.h3.r dummy
scoreboard objectives add color_picker.rgb.h3.g dummy
scoreboard objectives add color_picker.rgb.h3.b dummy

scoreboard objectives add color_picker.rgb.h4.r dummy
scoreboard objectives add color_picker.rgb.h4.g dummy
scoreboard objectives add color_picker.rgb.h4.b dummy

scoreboard objectives add color_picker.rgb.h5.r dummy
scoreboard objectives add color_picker.rgb.h5.g dummy
scoreboard objectives add color_picker.rgb.h5.b dummy

scoreboard objectives add color_picker.rgb.h6.r dummy
scoreboard objectives add color_picker.rgb.h6.g dummy
scoreboard objectives add color_picker.rgb.h6.b dummy

scoreboard objectives add color_picker.rgb.h7.r dummy
scoreboard objectives add color_picker.rgb.h7.g dummy
scoreboard objectives add color_picker.rgb.h7.b dummy

scoreboard objectives add color_picker.rgb.h8.r dummy
scoreboard objectives add color_picker.rgb.h8.g dummy
scoreboard objectives add color_picker.rgb.h8.b dummy

scoreboard objectives add color_picker.rgb.h9.r dummy
scoreboard objectives add color_picker.rgb.h9.g dummy
scoreboard objectives add color_picker.rgb.h9.b dummy

scoreboard objectives add color_picker.rgb.h10.r dummy
scoreboard objectives add color_picker.rgb.h10.g dummy
scoreboard objectives add color_picker.rgb.h10.b dummy

scoreboard objectives add color_picker.rgb.h11.r dummy
scoreboard objectives add color_picker.rgb.h11.g dummy
scoreboard objectives add color_picker.rgb.h11.b dummy

scoreboard objectives add color_picker.rgb.h12.r dummy
scoreboard objectives add color_picker.rgb.h12.g dummy
scoreboard objectives add color_picker.rgb.h12.b dummy

scoreboard objectives add color_picker.rgb.h13.r dummy
scoreboard objectives add color_picker.rgb.h13.g dummy
scoreboard objectives add color_picker.rgb.h13.b dummy

scoreboard objectives add color_picker.rgb.h14.r dummy
scoreboard objectives add color_picker.rgb.h14.g dummy
scoreboard objectives add color_picker.rgb.h14.b dummy

scoreboard objectives add color_picker.rgb.h15.r dummy
scoreboard objectives add color_picker.rgb.h15.g dummy
scoreboard objectives add color_picker.rgb.h15.b dummy


scoreboard players set 16 color_picker.vars 16
scoreboard players set 64 color_picker.vars 64


execute unless score next_callbacks_id color_picker.vars = next_callbacks_id color_picker.vars run \
    scoreboard players set next_callbacks_id color_picker.vars 0
