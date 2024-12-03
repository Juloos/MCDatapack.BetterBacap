function bac_tracker:load/installation_done with storage bac_tracker:data pack_info
execute unless entity @a run schedule function bac_tracker:load/installation_done_loop 1s
