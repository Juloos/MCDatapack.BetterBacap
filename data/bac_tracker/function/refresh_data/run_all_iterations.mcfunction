function bac_display:refresh
execute as @a[scores={bac_tracker.player.tracking_enabled=1}] run \
    function bac_tracker:refresh_data/player/all
