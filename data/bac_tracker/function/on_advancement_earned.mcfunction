# msg, trophy, reward and exp
execute unless score global bac_settings matches 0 run function bac_tracker:advancement_wards/give with storage bac_tracker:macro data

# Update bac internal states
execute unless data storage bac_tracker:macro data{adv_extra_categories:["hidden"]} run function bc_rewards:score_add


# Prepare data
$execute unless data storage bac_tracker:data players[{name:"$(player_name)"}] run \
    data modify storage bac_tracker:data players append value {name:"$(player_name)"}
$execute store result storage bac_tracker:macro data.player_adv_rank short 1 run \
    scoreboard players operation $(adv_full_name) bac_obtained += $(adv_full_name) bac_tracker.advancement.one_rank_per_tick
$execute unless data storage bac_tracker:macro data{player_bac_team:"any"} \
    store result storage bac_tracker:macro data.member_adv_rank short 1 run \
        scoreboard players add $(adv_full_name) bac_obtained_$(player_bac_team) 1

# Add the advancement to the storage of the player, the player's team, and the global progress
function bac_tracker:advancement_wards/store with storage bac_tracker:macro data


# Grant advancement to teammates
$execute if score coop bac_settings matches 1 run advancement grant @a only $(adv_full_name)
$execute if score coop bac_settings matches 2 run advancement grant @a[team=bac_team_$(player_bac_team)] only $(adv_full_name)
