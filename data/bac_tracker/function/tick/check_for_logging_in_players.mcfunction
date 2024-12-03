scoreboard players add @a bac_tracker.player.login_detection 1

execute as @a[scores={bac_tracker.player.login_detection=1}] run function bac_tracker:hook/logging_in_player

scoreboard players set * bac_tracker.player.login_detection 0
scoreboard players set @a bac_tracker.player.login_detection -1
