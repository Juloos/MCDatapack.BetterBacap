$execute as @a[scores={bac_tracker.player.tracking_enabled=1},tag=!bac_tracker.checked,limit=$(nb_players_to_check)] run \
    function bac_tracker:refresh_data/player/all

$tag @a[scores={bac_tracker.player.tracking_enabled=1},tag=!bac_tracker.checked,limit=$(nb_players_to_check)] add bac_tracker.checked
