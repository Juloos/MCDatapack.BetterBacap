# Get the team's full name of <team> in storage utils:result team_name

$data modify storage utils:macro data.team set value "$(team)"

execute if data storage utils:macro {data:{team:"any"}} run return run \
    data modify storage utils:result team_name set value "Global progress"

execute if data storage utils:macro {data:{team:"red"}} run return run \
    data modify storage utils:result team_name set value "Red team"

execute if data storage utils:macro {data:{team:"blue"}} run return run \
    data modify storage utils:result team_name set value "Blue team"

execute if data storage utils:macro {data:{team:"green"}} run return run \
    data modify storage utils:result team_name set value "Green team"

execute if data storage utils:macro {data:{team:"yellow"}} run return run \
    data modify storage utils:result team_name set value "Yellow team"

execute if data storage utils:macro {data:{team:"aqua"}} run return run \
    data modify storage utils:result team_name set value "Aqua team"

execute if data storage utils:macro {data:{team:"light_purple"}} run return run \
    data modify storage utils:result team_name set value "Light Purple team"

execute if data storage utils:macro {data:{team:"gold"}} run return run \
    data modify storage utils:result team_name set value "Gold team"

execute if data storage utils:macro {data:{team:"dark_aqua"}} run return run \
    data modify storage utils:result team_name set value "Dark Aqua team"

execute if data storage utils:macro {data:{team:"dark_red"}} run return run \
    data modify storage utils:result team_name set value "Dark Red team"

execute if data storage utils:macro {data:{team:"dark_purple"}} run return run \
    data modify storage utils:result team_name set value "Dark Purple team"

execute if data storage utils:macro {data:{team:"dark_blue"}} run return run \
    data modify storage utils:result team_name set value "Dark Blue team"

execute if data storage utils:macro {data:{team:"dark_green"}} run return run \
    data modify storage utils:result team_name set value "Dark Green team"

execute if data storage utils:macro {data:{team:"gray"}} run return run \
    data modify storage utils:result team_name set value "Gray team"

execute if data storage utils:macro {data:{team:"dark_gray"}} run return run \
    data modify storage utils:result team_name set value "Dark Gray team"

execute if data storage utils:macro {data:{team:"black"}} run return run \
    data modify storage utils:result team_name set value "Black team"
    
execute if data storage utils:macro {data:{team:"white"}} run return run \
    data modify storage utils:result team_name set value "White team"

data modify storage utils:result team_name set value "(Unknown)"
