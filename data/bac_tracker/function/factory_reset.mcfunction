say Factory resetting! This may take a while...


# Remove every bit of data this datapack uses to reinstall with a fresh configuration
data remove storage bac_display:data default_config
data remove storage bac_display:data bar_char_set
data remove storage bac_display:data progress_bar
data remove storage bac_display:data style
data remove storage bac_display:data refresh_callback
data remove storage bac_display:data page
data remove storage bac_display:data draft
data remove storage bac_tracker:data default_config
data remove storage bac_tracker:data pack_info
data remove storage bac_tracker:data players
data remove storage bac_tracker:data teams
data remove storage bac_tracker:data advancements
data remove storage bac_tracker:data category_size

# Remove also all objectives
scoreboard objectives remove bac_display.config
scoreboard objectives remove bac_display.vars
scoreboard objectives remove bac_display.sidebar.any
scoreboard objectives remove bac_display.sidebar.aqua
scoreboard objectives remove bac_display.sidebar.black
scoreboard objectives remove bac_display.sidebar.blue
scoreboard objectives remove bac_display.sidebar.dark_aqua
scoreboard objectives remove bac_display.sidebar.dark_blue
scoreboard objectives remove bac_display.sidebar.dark_gray
scoreboard objectives remove bac_display.sidebar.dark_green
scoreboard objectives remove bac_display.sidebar.dark_purple
scoreboard objectives remove bac_display.sidebar.dark_red
scoreboard objectives remove bac_display.sidebar.gold
scoreboard objectives remove bac_display.sidebar.gray
scoreboard objectives remove bac_display.sidebar.green
scoreboard objectives remove bac_display.sidebar.light_purple
scoreboard objectives remove bac_display.sidebar.red
scoreboard objectives remove bac_display.sidebar.white
scoreboard objectives remove bac_display.sidebar.yellow
scoreboard objectives remove bac_tracker.config
scoreboard objectives remove bac_tracker.vars
scoreboard objectives remove bac_tracker.player.tracking_enabled
scoreboard objectives remove bac_tracker.player.login_detection
scoreboard objectives remove bac_tracker.advancement.one_rank_per_tick
scoreboard objectives remove color_picker.vars
scoreboard objectives remove color_picker.rgb.r
scoreboard objectives remove color_picker.rgb.g
scoreboard objectives remove color_picker.rgb.b
scoreboard objectives remove color_picker.rgb.hx
scoreboard objectives remove color_picker.rgb.h0.r
scoreboard objectives remove color_picker.rgb.h0.g
scoreboard objectives remove color_picker.rgb.h0.b
scoreboard objectives remove color_picker.rgb.h1.r
scoreboard objectives remove color_picker.rgb.h1.g
scoreboard objectives remove color_picker.rgb.h1.b
scoreboard objectives remove color_picker.rgb.h2.r
scoreboard objectives remove color_picker.rgb.h2.g
scoreboard objectives remove color_picker.rgb.h2.b
scoreboard objectives remove color_picker.rgb.h3.r
scoreboard objectives remove color_picker.rgb.h3.g
scoreboard objectives remove color_picker.rgb.h3.b
scoreboard objectives remove color_picker.rgb.h4.r
scoreboard objectives remove color_picker.rgb.h4.g
scoreboard objectives remove color_picker.rgb.h4.b
scoreboard objectives remove color_picker.rgb.h5.r
scoreboard objectives remove color_picker.rgb.h5.g
scoreboard objectives remove color_picker.rgb.h5.b
scoreboard objectives remove color_picker.rgb.h6.r
scoreboard objectives remove color_picker.rgb.h6.g
scoreboard objectives remove color_picker.rgb.h6.b
scoreboard objectives remove color_picker.rgb.h7.r
scoreboard objectives remove color_picker.rgb.h7.g
scoreboard objectives remove color_picker.rgb.h7.b
scoreboard objectives remove color_picker.rgb.h8.r
scoreboard objectives remove color_picker.rgb.h8.g
scoreboard objectives remove color_picker.rgb.h8.b
scoreboard objectives remove color_picker.rgb.h9.r
scoreboard objectives remove color_picker.rgb.h9.g
scoreboard objectives remove color_picker.rgb.h9.b
scoreboard objectives remove color_picker.rgb.h10.r
scoreboard objectives remove color_picker.rgb.h10.g
scoreboard objectives remove color_picker.rgb.h10.b
scoreboard objectives remove color_picker.rgb.h11.r
scoreboard objectives remove color_picker.rgb.h11.g
scoreboard objectives remove color_picker.rgb.h11.b
scoreboard objectives remove color_picker.rgb.h12.r
scoreboard objectives remove color_picker.rgb.h12.g
scoreboard objectives remove color_picker.rgb.h12.b
scoreboard objectives remove color_picker.rgb.h13.r
scoreboard objectives remove color_picker.rgb.h13.g
scoreboard objectives remove color_picker.rgb.h13.b
scoreboard objectives remove color_picker.rgb.h14.r
scoreboard objectives remove color_picker.rgb.h14.g
scoreboard objectives remove color_picker.rgb.h14.b
scoreboard objectives remove color_picker.rgb.h15.r
scoreboard objectives remove color_picker.rgb.h15.g
scoreboard objectives remove color_picker.rgb.h15.b
scoreboard objectives remove utils.vars
scoreboard objectives remove utils.player_count


reload
