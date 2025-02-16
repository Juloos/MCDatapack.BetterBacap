# scoreboards
$execute store result score min_char_len.$(team) bac_display.vars run \
    function utils:get_team_min_char_len {team:"$(team)"}
$execute store result score progress_bar_len.$(team) bac_display.vars run \
    data get storage bac_display:data progress_bar.$(team).bar_len


# data:
data modify storage blazeandcave:macro data set from storage bac_tracker:data pack_info

$data modify storage blazeandcave:macro data.team set value "$(team)"

# team_name
$function utils:get_team_name {team:"$(team)"}
data modify storage blazeandcave:macro data.team_name set from storage utils:result team_name

# scoreboard_alignment_description
$function bac_display:humanize/align {team:"$(team)"}
data modify storage blazeandcave:macro data.scoreboard_alignment_description set from storage bac_display:result align

# percent_placement_description
$function bac_display:humanize/percent {team:"$(team)"}
data modify storage blazeandcave:macro data.percent_placement_description set from storage bac_display:result percent

# count_hidden_description
$function bac_display:humanize/count_hidden {team:"$(team)"}
data modify storage blazeandcave:macro data.count_hidden_description set from storage bac_display:result count_hidden

# count_hidden_toggles
$execute if score count_hidden.$(team) bac_display.config matches 0 run \
    data modify storage blazeandcave:macro data.count_hidden_toggles set value '{"text":"[✔]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/general_display_settings/count_hidden_change {team:\\"$(team)\\",new_value:2}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"text":"[≡]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/general_display_settings/count_hidden_change {team:\\"$(team)\\",new_value:1}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable when it overflows","color":"gold"}]}}," ",{"text":"[❌]","color":"red"}'
$execute if score count_hidden.$(team) bac_display.config matches 1 run \
    data modify storage blazeandcave:macro data.count_hidden_toggles set value '{"text":"[✔]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/general_display_settings/count_hidden_change {team:\\"$(team)\\",new_value:2}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"text":"[≡]","color":"aqua"}," ",{"text":"[❌]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/general_display_settings/count_hidden_change {team:\\"$(team)\\",new_value:0}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}'
$execute if score count_hidden.$(team) bac_display.config matches 2 run \
    data modify storage blazeandcave:macro data.count_hidden_toggles set value '{"text":"[✔]","color":"green"}," ",{"text":"[≡]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/general_display_settings/count_hidden_change {team:\\"$(team)\\",new_value:1}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable when it overflows","color":"gold"}]}}," ",{"text":"[❌]","color":"gray","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/scoreboard_settings/general_display_settings/count_hidden_change {team:\\"$(team)\\",new_value:0}"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}'


function blazeandcave:config/scoreboard_settings/general_display_settings/finish with storage blazeandcave:macro data
