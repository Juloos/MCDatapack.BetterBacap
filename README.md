# BetterBacap

BetterBacap is a heavy plugin datapack for Blazeandcave's Advancements Pack (Bacap) aiming at improving the global experience of players. It is designed for Minecraft 1.21+ and Bacap 1.17.2+ at the moment. For earlier versions, please refer to the [legacy datapack](https://github.com/Juloos/MCDatapack.BacapTracker) this one comes from.

## Features
### Progress tracker

## Installation guide
First make sure that Bacap is installed and working properly. See the [official download page](https://www.planetminecraft.com/data-pack/blazeandcave-s-advancements-pack-1-12/) for Bacap for more information.

Download the latest version of BetterBacap from the [release page](https://github.com/Juloos/MCDatapack.BetterBacap/releases). As of any datapack, you will need to put the zip file in the `datapacks` folder of your world save. If you are not familiar with the process, you can refer to the [official Minecraft wiki](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack).

Once in your world, the datapack should automatically load itself and the supported extensions correctly. 

In case of any extension added after the installation of BetterBacap, you will need to reinstall it with `/function bac_tracker:reinstall`.

## How to use

Open Bacap's config menu with `/function blazeandcave:config`.

BetterBacap overrides the `Advancement Scoreboard Display Settings` menu to create a new interface for its features. The interface is kept similar to the original one for a seamless experience.

Most of the settings do not have an interface yet (this is a work in progress). But if you wish to try and customize them out by yourself you will need to check the code (a mix of scoreboard and data storage are used for configuration) as well as [storage_description.md](storage_description.md).

## Feature supports
The official Bacap extensions are supported:
- [Hardcore extension](https://www.planetminecraft.com/data-pack/blazeandcave-s-advancements-pack-hardcore-version/)
- [Terralith extension](https://www.planetminecraft.com/data-pack/blazeandcave-s-advancements-pack-terralith-version/)
- Amplified Nether extension
- Nullscape extension

But also all the fanpacks that followed the [BetterBacap integration guide](bacap_fanpacks_handlers.md).

## Build
If you wish to modify the code and run the datapack yourself, you have to run the [release.py](release.py) script. It will create a zipped datapack from all the tracked files\* with the correct meta information.

\*: You need to add new files to the git repository in order to track them.

## TODO
- An interface for all the set up configuration settings.
- Improve the vanilla advancement logic to help with lags and bugs.
- Create a leaderboard of the players based on their advancements rankings.
- Modify the vanilla coop logic for a better tracking of the team advancements in some edge cases (players leaving teams, advancements revoked...).
