$execute unless score $(adv_bac_type) bac_settings matches 0 run function bac_tracker:advancement_wards/give_msg with storage bac_tracker:macro data
execute unless score trophy bac_settings matches 0 if data storage bac_tracker:macro data{adv_extra_categories:["trophy"]} run function bac_tracker:advancement_wards/give_trophy with storage bac_tracker:macro data
execute unless score reward bac_settings matches 0 run function bac_tracker:advancement_wards/give_reward with storage bac_tracker:macro data
execute unless score exp bac_settings matches 0 run function bac_tracker:advancement_wards/give_exp with storage bac_tracker:macro data
