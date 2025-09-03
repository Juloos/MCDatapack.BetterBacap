$execute store result score page_size bac_display.vars run \
    data get storage bac_display:data refresh_callback.$(team)[0].page_size

$execute if score page_size bac_display.vars matches 1.. run scoreboard players set 0 bac_display.sidebar.$(team) 14
$execute if score page_size bac_display.vars matches 2.. run scoreboard players set 1 bac_display.sidebar.$(team) 13
$execute if score page_size bac_display.vars matches 3.. run scoreboard players set 2 bac_display.sidebar.$(team) 12
$execute if score page_size bac_display.vars matches 4.. run scoreboard players set 3 bac_display.sidebar.$(team) 11
$execute if score page_size bac_display.vars matches 5.. run scoreboard players set 4 bac_display.sidebar.$(team) 10
$execute if score page_size bac_display.vars matches 6.. run scoreboard players set 5 bac_display.sidebar.$(team) 9
$execute if score page_size bac_display.vars matches 7.. run scoreboard players set 6 bac_display.sidebar.$(team) 8
$execute if score page_size bac_display.vars matches 8.. run scoreboard players set 7 bac_display.sidebar.$(team) 7
$execute if score page_size bac_display.vars matches 9.. run scoreboard players set 8 bac_display.sidebar.$(team) 6
$execute if score page_size bac_display.vars matches 10.. run scoreboard players set 9 bac_display.sidebar.$(team) 5
$execute if score page_size bac_display.vars matches 11.. run scoreboard players set 10 bac_display.sidebar.$(team) 4
$execute if score page_size bac_display.vars matches 12.. run scoreboard players set 11 bac_display.sidebar.$(team) 3
$execute if score page_size bac_display.vars matches 13.. run scoreboard players set 12 bac_display.sidebar.$(team) 2
$execute if score page_size bac_display.vars matches 14.. run scoreboard players set 13 bac_display.sidebar.$(team) 1
$execute if score page_size bac_display.vars matches 15.. run scoreboard players set 14 bac_display.sidebar.$(team) 0

$execute unless score page_size bac_display.vars matches 15.. run scoreboard players reset 14 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 14.. run scoreboard players reset 13 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 13.. run scoreboard players reset 12 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 12.. run scoreboard players reset 11 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 11.. run scoreboard players reset 10 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 10.. run scoreboard players reset 9 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 9.. run scoreboard players reset 8 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 8.. run scoreboard players reset 7 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 7.. run scoreboard players reset 6 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 6.. run scoreboard players reset 5 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 5.. run scoreboard players reset 4 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 4.. run scoreboard players reset 3 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 3.. run scoreboard players reset 2 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 2.. run scoreboard players reset 1 bac_display.sidebar.$(team)
$execute unless score page_size bac_display.vars matches 1.. run scoreboard players reset 0 bac_display.sidebar.$(team)
