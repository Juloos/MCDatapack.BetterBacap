# Get the name of the executing player in storage utils:result player_name

loot replace block 16000000 -64 4200 container.0 loot utils:player_head
data modify storage utils:result player_name set from block 16000000 -64 4200 Items[0].components.minecraft:profile.name
return run execute if entity @s[type=player]
