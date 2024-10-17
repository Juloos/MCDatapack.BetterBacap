scoreboard players set tmp bac_display.vars 1
execute \
    if score show_sidebar.aqua bac_display.config matches 1 \
    if score show_sidebar.black bac_display.config matches 1 \
    if score show_sidebar.blue bac_display.config matches 1 \
    if score show_sidebar.dark_aqua bac_display.config matches 1 \
    if score show_sidebar.dark_blue bac_display.config matches 1 \
    if score show_sidebar.dark_gray bac_display.config matches 1 \
    if score show_sidebar.dark_green bac_display.config matches 1 \
    if score show_sidebar.dark_purple bac_display.config matches 1 \
    if score show_sidebar.dark_red bac_display.config matches 1 \
    if score show_sidebar.gold bac_display.config matches 1 \
    if score show_sidebar.gray bac_display.config matches 1 \
    if score show_sidebar.green bac_display.config matches 1 \
    if score show_sidebar.light_purple bac_display.config matches 1 \
    if score show_sidebar.red bac_display.config matches 1 \
    if score show_sidebar.white bac_display.config matches 1 \
    if score show_sidebar.yellow bac_display.config matches 1 \
        run scoreboard players set tmp bac_display.vars 0

scoreboard players operation show_sidebar.red bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.yellow bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.green bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.aqua bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.blue bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.light_purple bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.white bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.dark_gray bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.dark_red bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.gold bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.dark_green bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.dark_aqua bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.dark_blue bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.dark_purple bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.gray bac_display.config = tmp bac_display.vars
scoreboard players operation show_sidebar.black bac_display.config = tmp bac_display.vars

execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.red bac_display.sidebar.red
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.yellow bac_display.sidebar.yellow
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.green bac_display.sidebar.green
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.aqua bac_display.sidebar.aqua
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.blue bac_display.sidebar.blue
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.light_purple bac_display.sidebar.light_purple
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.white bac_display.sidebar.white
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.dark_gray bac_display.sidebar.dark_gray
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.dark_red bac_display.sidebar.dark_red
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.gold bac_display.sidebar.gold
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.dark_green bac_display.sidebar.dark_green
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.dark_aqua bac_display.sidebar.dark_aqua
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.dark_blue bac_display.sidebar.dark_blue
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.dark_purple bac_display.sidebar.dark_purple
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.gray bac_display.sidebar.gray
execute if score tmp bac_display.vars matches 1 run scoreboard objectives setdisplay sidebar.team.black bac_display.sidebar.black

execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.red
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.yellow
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.green
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.aqua
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.blue
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.light_purple
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.white
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.dark_red
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.gold
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.dark_green
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.dark_aqua
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.dark_blue
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.dark_purple
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.gray
execute if score tmp bac_display.vars matches 0 run scoreboard objectives setdisplay sidebar.team.black

function bac_display:refresh
function blazeandcave:config/scoreboard_settings
