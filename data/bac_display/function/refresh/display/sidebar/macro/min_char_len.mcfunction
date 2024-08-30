scoreboard players operation i_blank bac_display.vars = i bac_display.vars
scoreboard players operation i_blank bac_display.vars %= 2 bac_display.vars

scoreboard players operation i_tilde bac_display.vars = i bac_display.vars
scoreboard players operation i_tilde bac_display.vars -= 4 bac_display.vars
scoreboard players operation i_tilde bac_display.vars %= 7 bac_display.vars

scoreboard players add i bac_display.vars 1


$data modify storage bac_display:data min_char_len.$(team).blank append value " "
$execute if score i_blank bac_display.vars matches 0 run \
    data modify storage bac_display:data min_char_len.$(team).blank append value " "
$data modify storage bac_display:data min_char_len.$(team).dash append value "-"
$data modify storage bac_display:data min_char_len.$(team).double_dash append value "="
$execute unless score i_tilde bac_display.vars matches 0 run \
    data modify storage bac_display:data min_char_len.$(team).tilde append value "~"
$data modify storage bac_display:data min_char_len.$(team).underscore append value "_"
