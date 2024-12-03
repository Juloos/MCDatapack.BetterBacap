$execute if score $(adv_bac_type) bac_settings matches 1 run return run function bacap_rewards:msg/$(adv_category)/$(adv_bac_name)
$execute if score $(adv_bac_type) bac_settings matches -1 unless score $(adv_full_name) bac_obtained matches 1.. run return run function bacap_rewards:msg/$(adv_category)/$(adv_bac_name)
$execute if score $(adv_bac_type) bac_settings matches -2 unless score $(adv_full_name) bac_obtained_$(player_bac_team) matches 1.. run return run function bacap_rewards:msg/$(adv_category)/$(adv_bac_name)
