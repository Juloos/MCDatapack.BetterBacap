# Get the pixel width of the character given in storage 'utils:macro data.char' as the return value

execute if data storage utils:macro data{char:'"'} run \
    return run data get storage juloos:data char.widths.'"'
return run function utils:char/_subtask/get_width with storage utils:macro data
