scoreboard objectives add utils.vars dummy
scoreboard objectives add utils.player_count dummy


# For special loots
execute positioned 16000000 -64 4200 run forceload add ~ ~
setblock 16000000 -64 4200 chest
setblock 16000000 -63 4200 bedrock
