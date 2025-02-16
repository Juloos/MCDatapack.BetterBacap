# Ran 2 ticks after setup

function bac_tracker:refresh_data/category/size {team:"any"}
function bac_tracker:refresh_data/category/size {team:"red"}
function bac_tracker:refresh_data/category/size {team:"blue"}
function bac_tracker:refresh_data/category/size {team:"green"}
function bac_tracker:refresh_data/category/size {team:"yellow"}
function bac_tracker:refresh_data/category/size {team:"aqua"}
function bac_tracker:refresh_data/category/size {team:"light_purple"}
function bac_tracker:refresh_data/category/size {team:"gold"}
function bac_tracker:refresh_data/category/size {team:"dark_aqua"}
function bac_tracker:refresh_data/category/size {team:"dark_red"}
function bac_tracker:refresh_data/category/size {team:"dark_purple"}
function bac_tracker:refresh_data/category/size {team:"dark_blue"}
function bac_tracker:refresh_data/category/size {team:"dark_green"}
function bac_tracker:refresh_data/category/size {team:"gray"}
function bac_tracker:refresh_data/category/size {team:"dark_gray"}
function bac_tracker:refresh_data/category/size {team:"black"}
function bac_tracker:refresh_data/category/size {team:"white"}

execute if score refresh_on_load bac_tracker.config matches 1 \
    as @a[scores={bac_tracker.player.tracking_enabled=1}] run \
        function bac_tracker:refresh_data/player/forced_all
execute if score refresh_on_load bac_tracker.config matches 1 run \
    function bac_display:refresh
