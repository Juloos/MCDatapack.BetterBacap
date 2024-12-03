execute if data storage bac_display:macro {data:{value:"no"}} run \
    return 0
execute if data storage bac_display:macro {data:{value:"overflow"}} run \
    return 1
execute if data storage bac_display:macro {data:{value:"yes"}} run \
    return 2
return -1
