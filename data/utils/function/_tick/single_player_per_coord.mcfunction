# Slightly move players such that there are none in the same exact coordinate,
# most functions of this module need players to not share coordinates in order to split entities deterministically

# execute as @r[scores={utils.player_count=2..}] at @s run tp ~0.00000000000001 ~ ~
# execute as @a store result score @s utils.player_count if entity @a[distance=0]
# # If there are still some players within the same coordinate, then recursively call this function
# execute if entity @a[scores={utils.player_count=2..}] run \
#     function utils:_tick/single_player_per_coord
