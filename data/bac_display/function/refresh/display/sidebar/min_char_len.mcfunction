$data modify storage bac_display:data min_char_len.$(team).blank set value []
$data modify storage bac_display:data min_char_len.$(team).dash set value []
$data modify storage bac_display:data min_char_len.$(team).double_dash set value []
$data modify storage bac_display:data min_char_len.$(team).tilde set value []
$data modify storage bac_display:data min_char_len.$(team).underscore set value []

scoreboard players set i bac_display.vars 0
$function utils:range_loop_macro_without_i {macro:"bac_display:refresh/display/sidebar/min_char_len/iterator",from:0,to:$(min_char_len),data:{team:"$(team)"}}

$data modify storage bac_display:macro data set value {team:"$(team)"}
$data modify storage bac_display:macro data merge from storage bac_display:data min_char_len.$(team)
function bac_display:refresh/display/sidebar/min_char_len/finish with storage bac_display:macro data
