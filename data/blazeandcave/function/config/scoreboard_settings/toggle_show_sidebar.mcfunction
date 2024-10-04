scoreboard players set tmp bac_display.vars 1
$scoreboard players operation tmp bac_display.vars -= show_sidebar.$(team) bac_display.config
$scoreboard players operation show_sidebar.$(team) bac_display.config = tmp bac_display.vars

$execute if score show_sidebar.$(team) bac_display.config matches 1 run \
    scoreboard objectives setdisplay $(sidebar) bac_display.sidebar.$(team)
$execute if score show_sidebar.$(team) bac_display.config matches 0 run \
    scoreboard objectives setdisplay $(sidebar)

function blazeandcave:config/scoreboard_settings
