data modify storage blazeandcave:macro data set value {tellraw_list:[]}

$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Adventure", callback:"bac_display:refresh/callback/category/adventure", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Animal", callback:"bac_display:refresh/callback/category/animal", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Biomes", callback:"bac_display:refresh/callback/category/biomes", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Building", callback:"bac_display:refresh/callback/category/building", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Challenges", callback:"bac_display:refresh/callback/category/challenges", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Enchanting", callback:"bac_display:refresh/callback/category/enchanting", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"End", callback:"bac_display:refresh/callback/category/end", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Farming", callback:"bac_display:refresh/callback/category/farming", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Mining", callback:"bac_display:refresh/callback/category/mining", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Monsters", callback:"bac_display:refresh/callback/category/monsters", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Nether", callback:"bac_display:refresh/callback/category/nether", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Potion", callback:"bac_display:refresh/callback/category/potion", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Redstone", callback:"bac_display:refresh/callback/category/redstone", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Statistics", callback:"bac_display:refresh/callback/category/statistics", team:"$(team)", line:$(line), color:"white"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/add_to_data {name:"Weaponry", callback:"bac_display:refresh/callback/category/weaponry", team:"$(team)", line:$(line), color:"white"}

execute store result score tellraw_size bac_display.vars \
    store result storage blazeandcave:macro data.tellraw_size int 1 \
        if data storage blazeandcave:macro data.tellraw_list[]
function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/compile_data with storage blazeandcave:macro data
execute if score tellraw_size bac_display.vars matches 1..32 run return run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/concatenated_tellraw with storage blazeandcave:macro data
tellraw @s ["",{"translate":"Invalid list size while loading '%s'","with":["categories"],"color":"red","bold":true}]
