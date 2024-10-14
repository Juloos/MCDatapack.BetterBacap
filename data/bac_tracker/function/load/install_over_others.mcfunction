scoreboard players set prevent_install_loop bac_tracker.vars 1

datapack disable "file/BlazeandCave's Advancements Pack Nullscape.zip"
execute store success storage bac_tracker:data pack_info.extensions.bac_nullscape byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Nullscape.zip" last

datapack disable "file/BlazeandCave's Advancements Pack Amplified Nether.zip"
execute store success storage bac_tracker:data pack_info.extensions.bac_amplified_nether byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Amplified Nether.zip" last

datapack disable "file/BlazeandCave's Advancements Pack Terralith.zip"
execute store success storage bac_tracker:data pack_info.extensions.bac_terralith byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Terralith.zip" last

datapack disable "file/BlazeandCave's Advancements Pack Hardcore.zip"
execute store success storage bac_tracker:data pack_info.extensions.bac_hardcore byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Hardcore.zip" last

$datapack disable "file/$(name)-$(version)_Bacap-$(bacap)_Minecraft-$(minecraft).zip"
$datapack enable "file/$(name)-$(version)_Bacap-$(bacap)_Minecraft-$(minecraft).zip" last
