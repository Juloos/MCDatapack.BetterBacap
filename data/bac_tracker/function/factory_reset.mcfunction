say Factory resetting! This may take a while...


# Remove every bit of data this datapack uses to reinstall with a fresh configuration
data merge storage bac_display:data {default_config:{}, bar_char_set:{}, progress_bar:{}, refresh_callback:{}, page:{}}
data merge storage bac_tracker:data {default_config:{}, pack_info:{}, players:{}, teams:{}, advancements:{}, category_size:{}}

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
scoreboard objectives remove utils.vars
scoreboard objectives remove utils.player_count


reload
