data modify storage bac_display:data refresh_callback.any[0].team set value "any"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.any[0]
data modify storage bac_display:data page.any[0].team set value "any"
execute if score show_sidebar.any bac_display.config matches 1 if entity @a run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.any[0]

data modify storage bac_display:data refresh_callback.aqua[0].team set value "aqua"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.aqua[0]
data modify storage bac_display:data page.aqua[0].team set value "aqua"
execute if score show_sidebar.aqua bac_display.config matches 1 if entity @a[team=bac_team_aqua] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.aqua[0]

data modify storage bac_display:data refresh_callback.black[0].team set value "black"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.black[0]
data modify storage bac_display:data page.black[0].team set value "black"
execute if score show_sidebar.black bac_display.config matches 1 if entity @a[team=bac_team_black] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.black[0]

data modify storage bac_display:data refresh_callback.blue[0].team set value "blue"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.blue[0]
data modify storage bac_display:data page.blue[0].team set value "blue"
execute if score show_sidebar.blue bac_display.config matches 1 if entity @a[team=bac_team_blue] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.blue[0]

data modify storage bac_display:data refresh_callback.dark_aqua[0].team set value "dark_aqua"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.dark_aqua[0]
data modify storage bac_display:data page.dark_aqua[0].team set value "dark_aqua"
execute if score show_sidebar.dark_aqua bac_display.config matches 1 if entity @a[team=bac_team_dark_aqua] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.dark_aqua[0]

data modify storage bac_display:data refresh_callback.dark_blue[0].team set value "dark_blue"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.dark_blue[0]
data modify storage bac_display:data page.dark_blue[0].team set value "dark_blue"
execute if score show_sidebar.dark_blue bac_display.config matches 1 if entity @a[team=bac_team_dark_blue] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.dark_blue[0]

data modify storage bac_display:data refresh_callback.dark_gray[0].team set value "dark_gray"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.dark_gray[0]
data modify storage bac_display:data page.dark_gray[0].team set value "dark_gray"
execute if score show_sidebar.dark_gray bac_display.config matches 1 if entity @a[team=bac_team_dark_gray] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.dark_gray[0]

data modify storage bac_display:data refresh_callback.dark_green[0].team set value "dark_green"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.dark_green[0]
data modify storage bac_display:data page.dark_green[0].team set value "dark_green"
execute if score show_sidebar.dark_green bac_display.config matches 1 if entity @a[team=bac_team_dark_green] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.dark_green[0]

data modify storage bac_display:data refresh_callback.dark_purple[0].team set value "dark_purple"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.dark_purple[0]
data modify storage bac_display:data page.dark_purple[0].team set value "dark_purple"
execute if score show_sidebar.dark_purple bac_display.config matches 1 if entity @a[team=bac_team_dark_purple] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.dark_purple[0]

data modify storage bac_display:data refresh_callback.dark_red[0].team set value "dark_red"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.dark_red[0]
data modify storage bac_display:data page.dark_red[0].team set value "dark_red"
execute if score show_sidebar.dark_red bac_display.config matches 1 if entity @a[team=bac_team_dark_red] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.dark_red[0]

data modify storage bac_display:data refresh_callback.gold[0].team set value "gold"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.gold[0]
data modify storage bac_display:data page.gold[0].team set value "gold"
execute if score show_sidebar.gold bac_display.config matches 1 if entity @a[team=bac_team_gold] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.gold[0]

data modify storage bac_display:data refresh_callback.gray[0].team set value "gray"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.gray[0]
data modify storage bac_display:data page.gray[0].team set value "gray"
execute if score show_sidebar.gray bac_display.config matches 1 if entity @a[team=bac_team_gray] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.gray[0]

data modify storage bac_display:data refresh_callback.green[0].team set value "green"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.green[0]
data modify storage bac_display:data page.green[0].team set value "green"
execute if score show_sidebar.green bac_display.config matches 1 if entity @a[team=bac_team_green] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.green[0]

data modify storage bac_display:data refresh_callback.light_purple[0].team set value "light_purple"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.light_purple[0]
data modify storage bac_display:data page.light_purple[0].team set value "light_purple"
execute if score show_sidebar.light_purple bac_display.config matches 1 if entity @a[team=bac_team_light_purple] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.light_purple[0]

data modify storage bac_display:data refresh_callback.red[0].team set value "red"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.red[0]
data modify storage bac_display:data page.red[0].team set value "red"
execute if score show_sidebar.red bac_display.config matches 1 if entity @a[team=bac_team_red] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.red[0]

data modify storage bac_display:data refresh_callback.white[0].team set value "white"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.white[0]
data modify storage bac_display:data page.white[0].team set value "white"
execute if score show_sidebar.white bac_display.config matches 1 if entity @a[team=bac_team_white] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.white[0]

data modify storage bac_display:data refresh_callback.yellow[0].team set value "yellow"
function bac_display:refresh/data/one_page with storage bac_display:data refresh_callback.yellow[0]
data modify storage bac_display:data page.yellow[0].team set value "yellow"
execute if score show_sidebar.yellow bac_display.config matches 1 if entity @a[team=bac_team_yellow] run \
    function bac_display:refresh/display/sidebar with storage bac_display:data page.yellow[0]
