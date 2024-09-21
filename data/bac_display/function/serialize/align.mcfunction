execute if data storage bac_display:macro {data:{value:"normal"}} run \
    return 0
execute if data storage bac_display:macro {data:{value:"spaced"}} run \
    return 1
execute if data storage bac_display:macro {data:{value:"aligned"}} run \
    return 2
execute if data storage bac_display:macro {data:{value:"spaced_aligned"}} run \
    return 3
return -1
