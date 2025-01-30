tellraw @s "\n"
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
$tellraw @s [{"color":"gray","bold":false,"text":" $(name) v$(version): bac-$(bacap) mc-$(minecraft) \n "},{"color":"gray","bold":false,"translate":"Advancement Scoreboard Tracker Settings"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Refresh rate
tellraw @a ["",{"text":"[+10]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/tracker_settings/target_refresh_time_add_10"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to add 10 ticks to the refresh rate","color":"gold"}]}}," ",{"text":"[set]","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function blazeandcave:config/tracker_settings/target_refresh_time_custom {new_value:XXX}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to manually modify the value of the refresh rate","color":"gold"}]}}," ",{"text":"[-10]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/tracker_settings/target_refresh_time_remove_10"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to remove 10 ticks to the refresh rate","color":"gold"}]}},{"text":" Refresh rate: "},{"score":{"name":"target_refresh_time","objective":"bac_tracker.config"},"color":"yellow"},{"text":"t","color":"yellow"}]
# Refresh type
$tellraw @a ["",$(refresh_type_toggle),{"text":" Refresh type: "},{"text":"$(refresh_type_description)","color":"yellow"}]
# Refresh on load
$tellraw @a ["",{$(refresh_on_load_toggle),"clickEvent":{"action":"run_command","value":"/function blazeandcave:config/tracker_settings/toggle_refresh_on_load"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to toggle","color":"gold"}]}},{"text":" Refresh on load currently "},{"text":"$(refresh_on_load_status)","color":"yellow"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
