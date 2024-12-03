$execute if score reward bac_settings matches 1 run return run function bacap_rewards:reward/$(adv_category)/$(adv_bac_name)
$execute if score reward bac_settings matches -1 unless score $(adv_full_name) bac_obtained matches 1.. run return run function bacap_rewards:reward/$(adv_category)/$(adv_bac_name)
$execute if score reward bac_settings matches -2 unless score $(adv_full_name) bac_obtained_$(player_bac_team) matches 1.. run return run function bacap_rewards:reward/$(adv_category)/$(adv_bac_name)
