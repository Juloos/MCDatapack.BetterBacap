tellraw @s "\n"
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
$tellraw @s ["",{"color":"gray","bold":false,"text":" $(name) v$(version): bac-$(bacap) mc-$(minecraft)"}]
$tellraw @s [""," ",{"color":"gray","bold":false,"translate":"$(team_name)"},{"color":"gray","bold":false,"text":": "},{"color":"gray","bold":false,"translate":"Advanced Style Customization Menu"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Something

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
