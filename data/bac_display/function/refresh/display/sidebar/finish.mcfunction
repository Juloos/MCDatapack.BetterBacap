$scoreboard objectives setdisplay $(sidebar) bac_display.sidebar.any
$scoreboard objectives modify bac_display.sidebar.$(team) numberformat blank


$scoreboard objectives modify bac_display.sidebar.$(team) displayname $(title)

$execute store result score page_size bac_display.vars run \
    data get storage bac_display:data refresh_callback.$(team)[0].page_size

execute unless score page_size bac_display.vars matches 1.. run return 0
$scoreboard players display name 0 bac_display.sidebar.$(team) $(name_0)
$scoreboard players display numberformat 0 bac_display.sidebar.$(team) fixed $(number_0)

execute unless score page_size bac_display.vars matches 2.. run return 1
$scoreboard players display name 1 bac_display.sidebar.$(team) $(name_1)
$scoreboard players display numberformat 1 bac_display.sidebar.$(team) fixed $(number_1)

execute unless score page_size bac_display.vars matches 3.. run return 2
$scoreboard players display name 2 bac_display.sidebar.$(team) $(name_2)
$scoreboard players display numberformat 2 bac_display.sidebar.$(team) fixed $(number_2)

execute unless score page_size bac_display.vars matches 4.. run return 3
$scoreboard players display name 3 bac_display.sidebar.$(team) $(name_3)
$scoreboard players display numberformat 3 bac_display.sidebar.$(team) fixed $(number_3)

execute unless score page_size bac_display.vars matches 5.. run return 4
$scoreboard players display name 4 bac_display.sidebar.$(team) $(name_4)
$scoreboard players display numberformat 4 bac_display.sidebar.$(team) fixed $(number_4)

execute unless score page_size bac_display.vars matches 6.. run return 5
$scoreboard players display name 5 bac_display.sidebar.$(team) $(name_5)
$scoreboard players display numberformat 5 bac_display.sidebar.$(team) fixed $(number_5)

execute unless score page_size bac_display.vars matches 7.. run return 6
$scoreboard players display name 6 bac_display.sidebar.$(team) $(name_6)
$scoreboard players display numberformat 6 bac_display.sidebar.$(team) fixed $(number_6)

execute unless score page_size bac_display.vars matches 8.. run return 7
$scoreboard players display name 7 bac_display.sidebar.$(team) $(name_7)
$scoreboard players display numberformat 7 bac_display.sidebar.$(team) fixed $(number_7)

execute unless score page_size bac_display.vars matches 9.. run return 8
$scoreboard players display name 8 bac_display.sidebar.$(team) $(name_8)
$scoreboard players display numberformat 8 bac_display.sidebar.$(team) fixed $(number_8)

execute unless score page_size bac_display.vars matches 10.. run return 9
$scoreboard players display name 9 bac_display.sidebar.$(team) $(name_9)
$scoreboard players display numberformat 9 bac_display.sidebar.$(team) fixed $(number_9)

execute unless score page_size bac_display.vars matches 11.. run return 10
$scoreboard players display name 10 bac_display.sidebar.$(team) $(name_10)
$scoreboard players display numberformat 10 bac_display.sidebar.$(team) fixed $(number_10)

execute unless score page_size bac_display.vars matches 12.. run return 11
$scoreboard players display name 11 bac_display.sidebar.$(team) $(name_11)
$scoreboard players display numberformat 11 bac_display.sidebar.$(team) fixed $(number_11)

execute unless score page_size bac_display.vars matches 13.. run return 12
$scoreboard players display name 12 bac_display.sidebar.$(team) $(name_12)
$scoreboard players display numberformat 12 bac_display.sidebar.$(team) fixed $(number_12)

execute unless score page_size bac_display.vars matches 14.. run return 13
$scoreboard players display name 13 bac_display.sidebar.$(team) $(name_13)
$scoreboard players display numberformat 13 bac_display.sidebar.$(team) fixed $(number_13)

execute unless score page_size bac_display.vars matches 15.. run return 14
$scoreboard players display name 14 bac_display.sidebar.$(team) $(name_14)
$scoreboard players display numberformat 14 bac_display.sidebar.$(team) fixed $(number_14)

return 15
