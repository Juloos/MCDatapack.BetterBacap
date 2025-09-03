$data modify storage bac_display:macro data set value {index:$(index), team:"$(team)", to_page:"$(to_page)", text:"$(text)", progress:$(progress), max:$(max)}

$scoreboard players set tmp bac_display.vars $(progress)
$execute if score tmp bac_display.vars matches $(max).. run \
    function bac_display:refresh/callback/category/macro/helper/load_styles {team:"$(team)", condition:"complete"}
$execute unless score tmp bac_display.vars matches $(max).. run \
    function bac_display:refresh/callback/category/macro/helper/load_styles {team:"$(team)", condition:"incomplete"}


function bac_display:refresh/callback/category/macro/helper/text with storage bac_display:macro data
$function bac_display:refresh/callback/category/macro/helper/progress {team:"$(team)"}
