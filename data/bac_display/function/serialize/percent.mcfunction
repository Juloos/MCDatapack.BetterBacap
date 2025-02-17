execute if data storage bac_display:macro {data:{value:"none"}} run \
    return 0
execute if data storage bac_display:macro {data:{value:"left_outside"}} run \
    return 1
execute if data storage bac_display:macro {data:{value:"right_outside"}} run \
    return 2
execute if data storage bac_display:macro {data:{value:"left_inside"}} run \
    return 3
execute if data storage bac_display:macro {data:{value:"right_inside"}} run \
    return 4
return -1
