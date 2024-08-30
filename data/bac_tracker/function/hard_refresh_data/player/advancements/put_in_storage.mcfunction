# Store category statistics
$execute store result storage bac_tracker:data player.$(player_name).category.adventure int 1 run \
    scoreboard players get @s bac_tracker.category.adventure

$execute store result storage bac_tracker:data player.$(player_name).category.animal int 1 run \
    scoreboard players get @s bac_tracker.category.animal

$execute store result storage bac_tracker:data player.$(player_name).category.bacap int 1 run \
    scoreboard players get @s bac_tracker.category.bacap

$execute store result storage bac_tracker:data player.$(player_name).category.biomes int 1 run \
    scoreboard players get @s bac_tracker.category.biomes

$execute store result storage bac_tracker:data player.$(player_name).category.building int 1 run \
    scoreboard players get @s bac_tracker.category.building

$execute store result storage bac_tracker:data player.$(player_name).category.challenges int 1 run \
    scoreboard players get @s bac_tracker.category.challenges

$execute store result storage bac_tracker:data player.$(player_name).category.enchanting int 1 run \
    scoreboard players get @s bac_tracker.category.enchanting

$execute store result storage bac_tracker:data player.$(player_name).category.end int 1 run \
    scoreboard players get @s bac_tracker.category.end

$execute store result storage bac_tracker:data player.$(player_name).category.farming int 1 run \
    scoreboard players get @s bac_tracker.category.farming

$execute store result storage bac_tracker:data player.$(player_name).category.mining int 1 run \
    scoreboard players get @s bac_tracker.category.mining

$execute store result storage bac_tracker:data player.$(player_name).category.monsters int 1 run \
    scoreboard players get @s bac_tracker.category.monsters

$execute store result storage bac_tracker:data player.$(player_name).category.nether int 1 run \
    scoreboard players get @s bac_tracker.category.nether

$execute store result storage bac_tracker:data player.$(player_name).category.potion int 1 run \
    scoreboard players get @s bac_tracker.category.potion

$execute store result storage bac_tracker:data player.$(player_name).category.redstone int 1 run \
    scoreboard players get @s bac_tracker.category.redstone

$execute store result storage bac_tracker:data player.$(player_name).category.statistics int 1 run \
    scoreboard players get @s bac_tracker.category.statistics

$execute store result storage bac_tracker:data player.$(player_name).category.terralith int 1 run \
    scoreboard players get @s bac_tracker.category.terralith

$execute store result storage bac_tracker:data player.$(player_name).category.weaponry int 1 run \
    scoreboard players get @s bac_tracker.category.weaponry

$execute store result storage bac_tracker:data player.$(player_name).category.hidden int 1 run \
    scoreboard players get @s bac_tracker.category.hidden

$execute store result storage bac_tracker:data player.$(player_name).category.total int 1 run \
    scoreboard players get @s bac_tracker.category.total


# Specify the team of the player
$data modify storage bac_tracker:macro data.player_previous_bac_team set from storage bac_tracker:data player.$(player_name).bac_team
$execute store success score result bac_tracker.vars run \
    data modify storage bac_tracker:data player.$(player_name).bac_team set value "$(player_bac_team)"
execute if score result bac_tracker.vars matches 1 run \
    function bac_tracker:refresh_data/team/attribute_player with storage bac_tracker:macro data
