data modify storage bac_display:macro data set value {char_type:"vertical_bar"}
$execute store result score total_max bac_display.vars run \
    data get storage bac_tracker:data category_size.$(team).total 1
