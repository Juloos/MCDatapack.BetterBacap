$scoreboard objectives setdisplay $(sidebar) bac_display.sidebar.any
$scoreboard objectives modify bac_display.sidebar.$(team) numberformat blank


$scoreboard objectives modify bac_display.sidebar.$(team) displayname $(title)

$scoreboard players display name 0 bac_display.sidebar.$(team) $(name_0)
$scoreboard players display numberformat 0 bac_display.sidebar.$(team) fixed $(number_0)

$execute if score page_size.$(team) bac_display.config matches 2.. run scoreboard players display name 1 bac_display.sidebar.$(team) $(name_1)
$execute if score page_size.$(team) bac_display.config matches 2.. run scoreboard players display numberformat 1 bac_display.sidebar.$(team) fixed $(number_1)

$execute if score page_size.$(team) bac_display.config matches 3.. run scoreboard players display name 2 bac_display.sidebar.$(team) $(name_2)
$execute if score page_size.$(team) bac_display.config matches 3.. run scoreboard players display numberformat 2 bac_display.sidebar.$(team) fixed $(number_2)

$execute if score page_size.$(team) bac_display.config matches 4.. run scoreboard players display name 3 bac_display.sidebar.$(team) $(name_3)
$execute if score page_size.$(team) bac_display.config matches 4.. run scoreboard players display numberformat 3 bac_display.sidebar.$(team) fixed $(number_3)

$execute if score page_size.$(team) bac_display.config matches 5.. run scoreboard players display name 4 bac_display.sidebar.$(team) $(name_4)
$execute if score page_size.$(team) bac_display.config matches 5.. run scoreboard players display numberformat 4 bac_display.sidebar.$(team) fixed $(number_4)

$execute if score page_size.$(team) bac_display.config matches 6.. run scoreboard players display name 5 bac_display.sidebar.$(team) $(name_5)
$execute if score page_size.$(team) bac_display.config matches 6.. run scoreboard players display numberformat 5 bac_display.sidebar.$(team) fixed $(number_5)

$execute if score page_size.$(team) bac_display.config matches 7.. run scoreboard players display name 6 bac_display.sidebar.$(team) $(name_6)
$execute if score page_size.$(team) bac_display.config matches 7.. run scoreboard players display numberformat 6 bac_display.sidebar.$(team) fixed $(number_6)

$execute if score page_size.$(team) bac_display.config matches 8.. run scoreboard players display name 7 bac_display.sidebar.$(team) $(name_7)
$execute if score page_size.$(team) bac_display.config matches 8.. run scoreboard players display numberformat 7 bac_display.sidebar.$(team) fixed $(number_7)

$execute if score page_size.$(team) bac_display.config matches 9.. run scoreboard players display name 8 bac_display.sidebar.$(team) $(name_8)
$execute if score page_size.$(team) bac_display.config matches 9.. run scoreboard players display numberformat 8 bac_display.sidebar.$(team) fixed $(number_8)

$execute if score page_size.$(team) bac_display.config matches 10.. run scoreboard players display name 9 bac_display.sidebar.$(team) $(name_9)
$execute if score page_size.$(team) bac_display.config matches 10.. run scoreboard players display numberformat 9 bac_display.sidebar.$(team) fixed $(number_9)

$execute if score page_size.$(team) bac_display.config matches 11.. run scoreboard players display name 10 bac_display.sidebar.$(team) $(name_10)
$execute if score page_size.$(team) bac_display.config matches 11.. run scoreboard players display numberformat 10 bac_display.sidebar.$(team) fixed $(number_10)

$execute if score page_size.$(team) bac_display.config matches 12.. run scoreboard players display name 11 bac_display.sidebar.$(team) $(name_11)
$execute if score page_size.$(team) bac_display.config matches 12.. run scoreboard players display numberformat 11 bac_display.sidebar.$(team) fixed $(number_11)

$execute if score page_size.$(team) bac_display.config matches 13.. run scoreboard players display name 12 bac_display.sidebar.$(team) $(name_12)
$execute if score page_size.$(team) bac_display.config matches 13.. run scoreboard players display numberformat 12 bac_display.sidebar.$(team) fixed $(number_12)

$execute if score page_size.$(team) bac_display.config matches 14.. run scoreboard players display name 13 bac_display.sidebar.$(team) $(name_13)
$execute if score page_size.$(team) bac_display.config matches 14.. run scoreboard players display numberformat 13 bac_display.sidebar.$(team) fixed $(number_13)

$execute if score page_size.$(team) bac_display.config matches 15.. run scoreboard players display name 14 bac_display.sidebar.$(team) $(name_14)
$execute if score page_size.$(team) bac_display.config matches 15.. run scoreboard players display numberformat 14 bac_display.sidebar.$(team) fixed $(number_14)
