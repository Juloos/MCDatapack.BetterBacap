$function color_picker:hex/export/two_digits {value:$(r)}
data modify storage color_picker:macro data.red_hex set from storage color_picker:result hex

$function color_picker:hex/export/two_digits {value:$(g)}
data modify storage color_picker:macro data.green_hex set from storage color_picker:result hex

$function color_picker:hex/export/two_digits {value:$(b)}
data modify storage color_picker:macro data.blue_hex set from storage color_picker:result hex

function color_picker:hex/export/merge3 with storage color_picker:macro data
