# Get the bacap team color of the executing player in storage utils:result player_bac_team_color

data remove storage utils:result player_bac_team_color
execute if entity @s[team=bac_team_red] run return run data modify storage utils:result player_bac_team_color set value "red"
execute if entity @s[team=bac_team_blue] run return run data modify storage utils:result player_bac_team_color set value "blue"
execute if entity @s[team=bac_team_green] run return run data modify storage utils:result player_bac_team_color set value "green"
execute if entity @s[team=bac_team_yellow] run return run data modify storage utils:result player_bac_team_color set value "yellow"
execute if entity @s[team=bac_team_aqua] run return run data modify storage utils:result player_bac_team_color set value "aqua"
execute if entity @s[team=bac_team_light_purple] run return run data modify storage utils:result player_bac_team_color set value "light_purple"
execute if entity @s[team=bac_team_gold] run return run data modify storage utils:result player_bac_team_color set value "gold"
execute if entity @s[team=bac_team_dark_aqua] run return run data modify storage utils:result player_bac_team_color set value "dark_aqua"
execute if entity @s[team=bac_team_dark_red] run return run data modify storage utils:result player_bac_team_color set value "dark_red"
execute if entity @s[team=bac_team_dark_purple] run return run data modify storage utils:result player_bac_team_color set value "dark_purple"
execute if entity @s[team=bac_team_dark_blue] run return run data modify storage utils:result player_bac_team_color set value "dark_blue"
execute if entity @s[team=bac_team_dark_green] run return run data modify storage utils:result player_bac_team_color set value "dark_green"
execute if entity @s[team=bac_team_gray] run return run data modify storage utils:result player_bac_team_color set value "gray"
execute if entity @s[team=bac_team_dark_gray] run return run data modify storage utils:result player_bac_team_color set value "dark_gray"
execute if entity @s[team=bac_team_black] run return run data modify storage utils:result player_bac_team_color set value "black"
execute if entity @s[team=bac_team_white] run return run data modify storage utils:result player_bac_team_color set value "white"
return fail
