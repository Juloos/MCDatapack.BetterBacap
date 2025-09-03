$execute as @a[tag=!bac_tracker.checked,scores={bac_tracker.player.tracking_enabled=1},limit=$(nb_players_to_check)] run \
    function bac_tracker:refresh_data/player/all

$tag @a[tag=!bac_tracker.checked,scores={bac_tracker.player.tracking_enabled=1},limit=$(nb_players_to_check)] add bac_tracker.checked
