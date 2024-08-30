scoreboard players set bac_team_green bac_tracker.category.adventure 0
scoreboard players set bac_team_green bac_tracker.category.animal 0
scoreboard players set bac_team_green bac_tracker.category.bacap 0
scoreboard players set bac_team_green bac_tracker.category.biomes 0
scoreboard players set bac_team_green bac_tracker.category.building 0
scoreboard players set bac_team_green bac_tracker.category.challenges 0
scoreboard players set bac_team_green bac_tracker.category.enchanting 0
scoreboard players set bac_team_green bac_tracker.category.end 0
scoreboard players set bac_team_green bac_tracker.category.farming 0
scoreboard players set bac_team_green bac_tracker.category.mining 0
scoreboard players set bac_team_green bac_tracker.category.monsters 0
scoreboard players set bac_team_green bac_tracker.category.nether 0
scoreboard players set bac_team_green bac_tracker.category.potion 0
scoreboard players set bac_team_green bac_tracker.category.redstone 0
scoreboard players set bac_team_green bac_tracker.category.statistics 0
scoreboard players set bac_team_green bac_tracker.category.terralith 0
scoreboard players set bac_team_green bac_tracker.category.weaponry 0

scoreboard players set bac_team_green bac_tracker.category.hidden 0
scoreboard players set bac_team_green bac_tracker.category.total 0


data modify storage bac_tracker:macro data set value {team:"bac_team_green"}
data modify storage buffer members set from storage bac_tracker:data team.green.members
function bac_tracker:refresh_data/team/iterate_members
