scoreboard players set prevent_install_loop bac_tracker.vars 1


$say [$(name)] Starting installation process...

# BetterBacap's dev env
execute if data storage bac_tracker:dev {enable:1b} run \
    datapack disable "file/BetterBacap"
$datapack disable "file/$(name)-$(version).zip"
$say [$(name)] Installation steps:  1 / 11

datapack disable "file/BlazeandCave's Advancements Pack Nullscape.zip"
$say [$(name)] Installation steps:  2 / 11

datapack disable "file/BlazeandCave's Advancements Pack Amplified Nether.zip"
$say [$(name)] Installation steps:  3 / 11

datapack disable "file/BlazeandCave's Advancements Pack Terralith.zip"
$say [$(name)] Installation steps:  4 / 11

datapack disable "file/BlazeandCave's Advancements Pack Hardcore.zip"
$say [$(name)] Installation steps:  5 / 11


execute store success storage bac_tracker:data pack_info.extensions.bac_nullscape byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Nullscape.zip" last
$say [$(name)] Installation steps:  6 / 11

execute store success storage bac_tracker:data pack_info.extensions.bac_amplified_nether byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Amplified Nether.zip" last
$say [$(name)] Installation steps:  7 / 11

execute store success storage bac_tracker:data pack_info.extensions.bac_terralith byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Terralith.zip" last
$say [$(name)] Installation steps:  8 / 11

execute store success storage bac_tracker:data pack_info.extensions.bac_hardcore byte 1 run \
    datapack enable "file/BlazeandCave's Advancements Pack Hardcore.zip" last
$say [$(name)] Installation steps:  9 / 11

$datapack enable "file/$(name)-$(version).zip" last
execute if data storage bac_tracker:dev {enable:1b} run \
    datapack enable "file/BetterBacap" last
$say [$(name)] Installation steps: 10 / 11


function #bacap_fanpacks:install
$say [$(name)] Installation process finished!


function bac_tracker:load/installation_done_loop
