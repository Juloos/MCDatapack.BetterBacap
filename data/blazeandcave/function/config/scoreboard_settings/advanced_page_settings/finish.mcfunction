tellraw @s "\n"
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
$tellraw @s ["",{"color":"gray","bold":false,"text":" $(name) v$(version): bac-$(bacap) mc-$(minecraft)"}]
$tellraw @s [""," ",{"color":"gray","bold":false,"translate":"$(team_name)"},{"color":"gray","bold":false,"text":": "},{"color":"gray","bold":false,"translate":"Advanced Page Customization Menu"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Draft configuration
$tellraw @s ["",{"text":"[ ✔ ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/save_to_scoreboard {team:\"$(team)\"}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to set your changes to the scoreboard","color":"gold"}]}}," ",{"translate":"Save to scoreboard"}]
$tellraw @s ["",{"text":"[ ❌ ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/reset_configuration {team:\"$(team)\"}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to reset your changes","color":"gold"}]}}," ",{"translate":"Reset the configuration"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Customization Menu
$function bac_display:refresh/data/page_lines {team:"$(team)", from_page:"draft.page"}
$function blazeandcave:config/scoreboard_settings/advanced_page_settings/macro/finish with storage bac_display:data draft.page_lines.$(team)
$tellraw @s ["",{"text":"[⛨]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/insert_new_page {team:\"$(team)\"}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to insert a new page after this one","color":"gold"}]}}," ",{"text":"[ « ]","color":"gold","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/page_left {team:\"$(team)\"}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Previous page","color":"gold"}]}}," ",{"text":"[ » ]","color":"gold","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/advanced_page_settings/page_right {team:\"$(team)\"}"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Next page","color":"gold"}]}}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
