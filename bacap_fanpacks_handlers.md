# bacap_fanpacks handlers

A guide for bacap_fanpacks to support BetterBacap. 
Basic knowledge in datapack creation is required.

---

## Introduction

The point of this guide is to help you integrate your Bacap fanpack to BetterBacap as easily as possible. As of this, the main way to interact with BetterBacap is through function tags and the data storage system.

Entrypoints will be provided for (almost) each interface presented below, they correspond to function tags you can define in your fanpack and that will be called by BetterBacap. 

You may also have to use specific functions / commands inside these entrypoints to interact with the data storage system.

## Advancements Data
- **Entrypoint**: `bacap_fanpacks:advancements_data`
- **Execution context**: called after the data storage is filled with the list of all advancements.

Add your advancements to BetterBacap's list of advancements.

```mcfunction
function utils:insert_all { \
    target:"storage bac_tracker:data advancements", \
    index:0, \
    insert_list:'[{...}, ...]' \
}
```

NOTE: `insert_list` is your list of advancements. Check [`storage_description.md`](storage_description.md) for the structure of the objects.


## On advancement earned
This is the exception, you'll have to call BetterBacap functions to handle the advancement tracking logic.

Your advancements are not automatically tracked by default, you **MUST** execute the following at advancement reward, and put the correct macro arguments, for BetterBacap to handle the rest:
```mcfunction
data modify storage bac_tracker:macro data set value { \
    adv_bac_name:"advancement name (not the display name)", \
    adv_full_name:"namespace:path/to/your/advancement", \
    adv_category:"your_category", \
    adv_extra_categories:["any", "additionnal", "category"], \
    adv_bac_type:"Bacap type of your advancement", \
    player_bac_team:"any", member_adv_rank:-1s \
}
# ---------------- Care only about the above ----------------
execute if function utils:get_player_name run \
    data modify storage bac_tracker:macro data.player_name set from storage utils:result player_name
execute if function utils:get_player_bac_team_color run \
    data modify storage bac_tracker:macro data.player_bac_team set from storage utils:result player_bac_team_color
function bac_tracker:on_advancement_earned with storage bac_tracker:macro data
```
You can check for examples in the [bacap_rewards folder](data/bacap_rewards/function/). You may also check some of the fields' description in [`storage_description.md`](storage_description.md).

### What BetteBacap does with this function
- Call\* the corresponding rewards functions\*\*: 
  - Message in chat: `bacap_rewards:msg/$(adv_category)/$(adv_bac_name)`
  - Trophy: `bacap_rewards:trophy/$(adv_category)/$(adv_bac_name)`
  - Item(s): `bacap_rewards:reward/$(adv_category)/$(adv_bac_name)`
  - Experience: `bacap_rewards:exp/$(adv_category)/$(adv_bac_name)`
- Update Bacap's internal states (scoreboard, ect).
- Update BetterBacap's storage with new information about the player's progress.
- Grant the advancement to the team if coop is enabled.

\*The player who earned the advancement is the caller.

\*\*You have to implement those functions in your fanpack (if you want the corresponding rewards to exist, trophies are mostly optional in Bacap for example).

## On advancement revoked
When we need to revoke an advancement, it comes with data manipulation: you have to call BetterBacap functions again. 

Use the same set of commands as in [On advancement earned](#on-advancement-earned) where the only change is the last function call being `bac_tracker:on_advancement_revoked` instead.

You can also check for examples in the [bacap_backwards folder](data/bacap_backwards/function/).

NOTE: Contrary to its counterpart, there is no event handling for when an advancement is revoked, BetterBacap detects it by itself in a loop (see [Backwards in Refresh tasks](#backwards)).

## Refresh tasks

### Rewards
- **Entrypoint**: `bacap_fanpacks:refresh_tasks/rewards`
- **Execution context**: called as the selected player we want its advancements refreshed.

Refresh the advancements not previously rewarded for that player.
Players can have their advancements desynchronized for various reasons, from BetterBacap being loaded later than your fanpack, to functions not executed in time because of crashs. 

The goal is to ensure that the data in BetterBacap's storage is up-to-date with the player's advancements.

Check for this player all your advancements as follow\*:
```mcfunction
execute if entity @s[advancements={namespace:path/to/advancement=true}] \
    unless data storage bac_tracker:data players[0].advancements[{name:"adv_bac_name",category:"adv_category"}] run \
        function namespace:path/to/reward_function
``` 

\*Template is given for *one* advancement, complete the different fields accordingly.

You can check for examples in [refresh_data's rewards folder](data/bac_tracker/function/refresh_data/player/category/rewards/).

### Backwards
- **Entrypoint**: `bacap_fanpacks:refresh_tasks/backwards`
- **Execution context**: called as the selected player we want its advancements refreshed.

The principle is similar to its [Rewards counterpart](#rewards), except we want to ensure that the player's progress in BetterBacap's storage doesn't have more advancements than the player actually has.

Check for this player all your advancements as follow\*:
```mcfunction
execute unless entity @s[advancements={namespace:path/to/advancement=true}] \
    if data storage bac_tracker:data players[0].advancements[{name:"adv_bac_name",category:"adv_category"}] run \
        function namespace:path/to/backward_function

``` 

\*Template is given for *one* advancement again, complete the different fields accordingly.

You can check for examples in [refresh_data's backwards folder](data/bac_tracker/function/refresh_data/player/category/backwards/).
