$datapack disable "file/$(name)-$(version)_Bacap-$(bacap)_Minecraft-$(minecraft).zip"

# So that data can get reinitialized on next install
data remove storage bac_tracker:data pack_info

scoreboard players set installed bac_tracker.config 0
