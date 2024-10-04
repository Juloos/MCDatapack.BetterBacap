data remove storage blazeandcave:macro data

execute if score show_sidebar.any bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_any set value "✔"
execute if score show_sidebar.any bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_any set value "❌"
execute if score show_sidebar.aqua bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_aqua set value "✔"
execute if score show_sidebar.aqua bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_aqua set value "❌"
execute if score show_sidebar.black bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_black set value "✔"
execute if score show_sidebar.black bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_black set value "❌"
execute if score show_sidebar.blue bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_blue set value "✔"
execute if score show_sidebar.blue bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_blue set value "❌"
execute if score show_sidebar.dark_aqua bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_dark_aqua set value "✔"
execute if score show_sidebar.dark_aqua bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_dark_aqua set value "❌"
execute if score show_sidebar.dark_blue bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_dark_blue set value "✔"
execute if score show_sidebar.dark_blue bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_dark_blue set value "❌"
execute if score show_sidebar.dark_gray bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_dark_gray set value "✔"
execute if score show_sidebar.dark_gray bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_dark_gray set value "❌"
execute if score show_sidebar.dark_green bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_dark_green set value "✔"
execute if score show_sidebar.dark_green bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_dark_green set value "❌"
execute if score show_sidebar.dark_purple bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_dark_purple set value "✔"
execute if score show_sidebar.dark_purple bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_dark_purple set value "❌"
execute if score show_sidebar.dark_red bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_dark_red set value "✔"
execute if score show_sidebar.dark_red bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_dark_red set value "❌"
execute if score show_sidebar.gold bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_gold set value "✔"
execute if score show_sidebar.gold bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_gold set value "❌"
execute if score show_sidebar.gray bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_gray set value "✔"
execute if score show_sidebar.gray bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_gray set value "❌"
execute if score show_sidebar.green bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_green set value "✔"
execute if score show_sidebar.green bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_green set value "❌"
execute if score show_sidebar.light_purple bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_light_purple set value "✔"
execute if score show_sidebar.light_purple bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_light_purple set value "❌"
execute if score show_sidebar.red bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_red set value "✔"
execute if score show_sidebar.red bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_red set value "❌"
execute if score show_sidebar.white bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_white set value "✔"
execute if score show_sidebar.white bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_white set value "❌"
execute if score show_sidebar.yellow bac_display.config matches 1 run data modify storage blazeandcave:macro data.show_sidebar_yellow set value "✔"
execute if score show_sidebar.yellow bac_display.config matches 0 run data modify storage blazeandcave:macro data.show_sidebar_yellow set value "❌"

data modify storage blazeandcave:macro data.team_toggle set value '{"text":"[ ","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_all_teams_show_sidebar"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for all teams","color":"gold"}]}},{"text":"/","bold":true,"clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_all_teams_show_sidebar"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for all teams","color":"gold"}]}},{"text":" ]","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_all_teams_show_sidebar"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for all teams","color":"gold"}]}}'
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
        run data modify storage blazeandcave:macro data.team_toggle set value '{"text":"[ ✔ ]","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_all_teams_show_sidebar"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for all teams","color":"gold"}]}}'
execute \
    if score show_sidebar.aqua bac_display.config matches 0 \
    if score show_sidebar.black bac_display.config matches 0 \
    if score show_sidebar.blue bac_display.config matches 0 \
    if score show_sidebar.dark_aqua bac_display.config matches 0 \
    if score show_sidebar.dark_blue bac_display.config matches 0 \
    if score show_sidebar.dark_gray bac_display.config matches 0 \
    if score show_sidebar.dark_green bac_display.config matches 0 \
    if score show_sidebar.dark_purple bac_display.config matches 0 \
    if score show_sidebar.dark_red bac_display.config matches 0 \
    if score show_sidebar.gold bac_display.config matches 0 \
    if score show_sidebar.gray bac_display.config matches 0 \
    if score show_sidebar.green bac_display.config matches 0 \
    if score show_sidebar.light_purple bac_display.config matches 0 \
    if score show_sidebar.red bac_display.config matches 0 \
    if score show_sidebar.white bac_display.config matches 0 \
    if score show_sidebar.yellow bac_display.config matches 0 \
        run data modify storage blazeandcave:macro data.team_toggle set value '{"text":"[ ❌ ]","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_all_teams_show_sidebar"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for all teams","color":"gold"}]}}'

function blazeandcave:config/macro/scoreboard_settings with storage blazeandcave:macro data
