scoreboard players add page_flip.any bac_display.vars 1
scoreboard players operation page_flip.any bac_display.vars %= page_flip_time.any bac_display.config
execute if score page_flip.any bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"any"}

scoreboard players add page_flip.aqua bac_display.vars 1
scoreboard players operation page_flip.aqua bac_display.vars %= page_flip_time.aqua bac_display.config
execute if score page_flip.aqua bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"aqua"}

scoreboard players add page_flip.black bac_display.vars 1
scoreboard players operation page_flip.black bac_display.vars %= page_flip_time.black bac_display.config
execute if score page_flip.black bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"black"}

scoreboard players add page_flip.blue bac_display.vars 1
scoreboard players operation page_flip.blue bac_display.vars %= page_flip_time.blue bac_display.config
execute if score page_flip.blue bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"blue"}

scoreboard players add page_flip.dark_aqua bac_display.vars 1
scoreboard players operation page_flip.dark_aqua bac_display.vars %= page_flip_time.dark_aqua bac_display.config
execute if score page_flip.dark_aqua bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"dark_aqua"}

scoreboard players add page_flip.dark_blue bac_display.vars 1
scoreboard players operation page_flip.dark_blue bac_display.vars %= page_flip_time.dark_blue bac_display.config
execute if score page_flip.dark_blue bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"dark_blue"}

scoreboard players add page_flip.dark_gray bac_display.vars 1
scoreboard players operation page_flip.dark_gray bac_display.vars %= page_flip_time.dark_gray bac_display.config
execute if score page_flip.dark_gray bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"dark_gray"}

scoreboard players add page_flip.dark_green bac_display.vars 1
scoreboard players operation page_flip.dark_green bac_display.vars %= page_flip_time.dark_green bac_display.config
execute if score page_flip.dark_green bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"dark_green"}

scoreboard players add page_flip.dark_purple bac_display.vars 1
scoreboard players operation page_flip.dark_purple bac_display.vars %= page_flip_time.dark_purple bac_display.config
execute if score page_flip.dark_purple bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"dark_purple"}

scoreboard players add page_flip.dark_red bac_display.vars 1
scoreboard players operation page_flip.dark_red bac_display.vars %= page_flip_time.dark_red bac_display.config
execute if score page_flip.dark_red bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"dark_red"}

scoreboard players add page_flip.gold bac_display.vars 1
scoreboard players operation page_flip.gold bac_display.vars %= page_flip_time.gold bac_display.config
execute if score page_flip.gold bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"gold"}

scoreboard players add page_flip.gray bac_display.vars 1
scoreboard players operation page_flip.gray bac_display.vars %= page_flip_time.gray bac_display.config
execute if score page_flip.gray bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"gray"}

scoreboard players add page_flip.green bac_display.vars 1
scoreboard players operation page_flip.green bac_display.vars %= page_flip_time.green bac_display.config
execute if score page_flip.green bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"green"}

scoreboard players add page_flip.light_purple bac_display.vars 1
scoreboard players operation page_flip.light_purple bac_display.vars %= page_flip_time.light_purple bac_display.config
execute if score page_flip.light_purple bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"light_purple"}

scoreboard players add page_flip.red bac_display.vars 1
scoreboard players operation page_flip.red bac_display.vars %= page_flip_time.red bac_display.config
execute if score page_flip.red bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"red"}

scoreboard players add page_flip.white bac_display.vars 1
scoreboard players operation page_flip.white bac_display.vars %= page_flip_time.white bac_display.config
execute if score page_flip.white bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"white"}

scoreboard players add page_flip.yellow bac_display.vars 1
scoreboard players operation page_flip.yellow bac_display.vars %= page_flip_time.yellow bac_display.config
execute if score page_flip.yellow bac_display.vars matches 0 run \
    function bac_display:refresh/display/sidebar/flip_page {team:"yellow"}
