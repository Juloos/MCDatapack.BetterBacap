execute if data storage bac_tracker:macro {data:{value:"none"}} run \
    return 0
execute if data storage bac_tracker:macro {data:{value:"revoked"}} run \
    return 1
execute if data storage bac_tracker:macro {data:{value:"earned"}} run \
    return 2
execute if data storage bac_tracker:macro {data:{value:"both"}} run \
    return 3
return -1
