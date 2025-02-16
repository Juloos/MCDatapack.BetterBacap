tellraw @s "\n"
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
$tellraw @s ["",{"color":"gray","bold":false,"text":" $(name) v$(version): bac-$(bacap) mc-$(minecraft)"}]
tellraw @s [""," ",{"color":"gray","bold":false,"translate":"Advancement Scoreboard Display Settings"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Scoreboards
$tellraw @s ["",{"text":"[ $(show_sidebar_any) ]","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'any',sidebar:'sidebar'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle","color":"gold"}]}}," Global Progress"]
$tellraw @s ["",$(team_toggle)," ",{"translate":"Team Progress"},":"]
$tellraw @s [" "," ",{"text":"[$(show_sidebar_red)]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'red',sidebar:'sidebar.team.red'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Red","color":"gold"}]}}," ",{"text":"[$(show_sidebar_yellow)]","color":"yellow","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'yellow',sidebar:'sidebar.team.yellow'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Yellow","color":"gold"}]}}," ",{"text":"[$(show_sidebar_green)]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'green',sidebar:'sidebar.team.green'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Green","color":"gold"}]}}," ",{"text":"[$(show_sidebar_aqua)]","color":"aqua","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'aqua',sidebar:'sidebar.team.aqua'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Aqua","color":"gold"}]}}," ",{"text":"[$(show_sidebar_blue)]","color":"blue","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'blue',sidebar:'sidebar.team.blue'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Blue","color":"gold"}]}}," ",{"text":"[$(show_sidebar_light_purple)]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'light_purple',sidebar:'sidebar.team.light_purple'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Light Purple","color":"gold"}]}}," ",{"text":"[$(show_sidebar_white)]","color":"white","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'white',sidebar:'sidebar.team.white'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team White","color":"gold"}]}}," ",{"text":"[$(show_sidebar_dark_gray)]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'dark_gray',sidebar:'sidebar.team.dark_gray'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Dark Gray","color":"gold"}]}}]
$tellraw @s [" "," ",{"text":"[$(show_sidebar_dark_red)]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'dark_red',sidebar:'sidebar.team.dark_red'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Dark Red","color":"gold"}]}}," ",{"text":"[$(show_sidebar_gold)]","color":"gold","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'gold',sidebar:'sidebar.team.gold'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Gold","color":"gold"}]}}," ",{"text":"[$(show_sidebar_dark_green)]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'dark_green',sidebar:'sidebar.team.dark_green'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Dark Green","color":"gold"}]}}," ",{"text":"[$(show_sidebar_dark_aqua)]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'dark_aqua',sidebar:'sidebar.team.dark_aqua'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Dark Aqua","color":"gold"}]}}," ",{"text":"[$(show_sidebar_dark_blue)]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'dark_blue',sidebar:'sidebar.team.dark_blue'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Dark Blue","color":"gold"}]}}," ",{"text":"[$(show_sidebar_dark_purple)]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'dark_purple',sidebar:'sidebar.team.dark_purple'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Dark Purple","color":"gold"}]}}," ",{"text":"[$(show_sidebar_gray)]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'gray',sidebar:'sidebar.team.gray'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Gray","color":"gold"}]}}," ",{"text":"[$(show_sidebar_black)]","color":"black","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/toggle_show_sidebar {team:'black',sidebar:'sidebar.team.black'}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle for team Black","color":"gold"}]}}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# General and Advanced settings
tellraw @s ["",{"text":"[ »» ]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/prepare_team_selection {redirect_from_description:\"General Scoreboard Display Settings\",redirect_to:\"blazeandcave:config/scoreboard_settings/general_display_settings\"}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Global settings for the appearance and update logic of the custom display","color":"#D1FFFD"},"\n",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"General Scoreboard Display Settings"}]
tellraw @s ["",{"text":"[ »» ]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/prepare_team_selection {redirect_from_description:\"Advanced Page Customization Menu\",redirect_to:\"blazeandcave:config/scoreboard_settings/advanced_page_settings\"}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Advanced menu for customizing what info is displayed on the scoreboard","color":"#D1FFFD"},"\n",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Advanced Page Customization Menu"}]
tellraw @s ["",{"text":"[ »» ]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/prepare_team_selection {redirect_from_description:\"Advanced Style Customization Menu\",redirect_to:\"blazeandcave:config/scoreboard_settings/advanced_style_settings\"}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Advanced menu for customizing the appearance of the info displayed on the scoreboard","color":"#D1FFFD"},"\n",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Advanced Style Customization Menu"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Old Scoreboards
tellraw @s ["",{"text":"[ »» ]","color":"gold","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/old_scoreboard_settings"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Vanilla bac settings for what type of scoreboard to display and where","color":"#D1FFFD"},"\n",{"translate":"Click to view","color":"gold"}]}}," ",{"translate":"Old Advancement Scoreboard Display Settings"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
