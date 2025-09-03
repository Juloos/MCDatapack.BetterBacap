tellraw @s "\n"
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
$tellraw @s ["",{"color":"gray","bold":false,"text":" $(name) v$(version): bac-$(bacap) mc-$(minecraft)"}]
$tellraw @s [""," ",{"color":"gray","bold":false,"translate":"$(team_name)"},{"color":"gray","bold":false,"text":": "},{"color":"gray","bold":false,"translate":"Advanced Page Customization Menu"}]
$tellraw @s [""," ",{"color":"gray","bold":false,"text":"└"}," ",{"color":"gray","bold":false,"translate":"Editing line %s","with":["$(line_humanized)"]}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

$execute unless data storage bac_display:data draft.line.$(team).$(line) run \
    data modify storage bac_display:data draft.line.$(team).$(line) set from storage bac_display:data draft.refresh_callback.$(team)[0].$(line)
$data modify storage blazeandcave:macro data set value {team:"$(team)", line:$(line), to_page:"draft.compiled_line"}
$data modify storage blazeandcave:macro data.callback set from storage bac_display:data draft.line.$(team).$(line)
$data modify storage blazeandcave:macro data.page_number set from storage bac_display:data draft.refresh_callback.$(team)[0].page_number
$execute store result storage blazeandcave:macro data.page_count int 1 \
    if data storage bac_display:data draft.refresh_callback.$(team)[]
function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/one_page_line with storage blazeandcave:macro data
$execute store success score line_changed bac_display.vars run \
    data modify storage blazeandcave:macro data.callback set from storage bac_display:data draft.refresh_callback.$(team)[0].$(line)
$execute if score line_changed bac_display.vars matches 0 run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/line_unchanged with storage bac_display:data draft.compiled_line.$(team)
$data modify storage bac_display:data draft.compiled_line.$(team).new_line set from storage bac_display:data draft.compiled_line.$(team).line
function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/one_page_line with storage blazeandcave:macro data
$execute if score line_changed bac_display.vars matches 1 run \
    function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/finish/line_changed with storage bac_display:data draft.compiled_line.$(team)
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/categories {team:"$(team)", line:$(line)}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/other_categories {team:"$(team)", line:$(line)}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/special {team:"$(team)", line:$(line)}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
$tellraw @s ["",{"text":"[ «« ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/save_to_line {team:\"$(team)\",line:$(line)}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to confirm the line's changes and go back","color":"gold"}]}}," ",{"translate":"Save and go back"}]
$tellraw @s ["",{"text":"[ «« ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/edit_line/reset_line {team:\"$(team)\",line:$(line)}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to leave the line unchanged and go back","color":"gold"}]}}," ",{"translate":"Discard and go back"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
