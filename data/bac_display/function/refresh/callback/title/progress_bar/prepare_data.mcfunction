data modify storage bac_display:macro data set value {char_type:"vertical_bar"}
execute store result score total_max bac_display.vars run \
    data get storage bac_tracker:data category_size.total 1


scoreboard players operation total_progress bac_display.vars *= 1000 bac_display.vars
execute store result score percent_decimals bac_display.vars store result score percent_remainder bac_display.vars run \
    scoreboard players operation total_progress bac_display.vars /= total_max bac_display.vars
execute store result storage bac_display:macro result.percent_decimals int 1 run \
    scoreboard players operation percent_decimals bac_display.vars /= 10 bac_display.vars
execute store result storage bac_display:macro result.percent_remainder int 1 run \
    scoreboard players operation percent_remainder bac_display.vars %= 10 bac_display.vars
scoreboard players operation total_progress bac_display.vars *= bar_len bac_display.vars

execute store result storage bac_display:macro data.count int 1 run \
    scoreboard players operation total_progress bac_display.vars /= 1000 bac_display.vars
function bac_display:refresh/callback/title/progress_bar/crop_bar_chars with storage bac_display:macro data
data modify storage bac_display:macro result.bar_done set from storage bac_display:macro result.bar

execute store result storage bac_display:macro data.count int 1 run \
    scoreboard players operation bar_len bac_display.vars -= total_progress bac_display.vars
function bac_display:refresh/callback/title/progress_bar/crop_bar_chars with storage bac_display:macro data
