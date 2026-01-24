$data modify storage style_picker:data callbacks.$(id) set value {id:"$(id)",confirm_callback:"$(confirm_callback)",update_callback:"$(update_callback)",cancel_callback:"$(cancel_callback)"}
$data modify storage style_picker:data draft.$(id) merge value {$(current_style)}

# Export current_style color
$data modify storage style_picker:macro data.hex set from storage style_picker:data draft.$(id).color
function color_picker:hex/import_macro with storage style_picker:macro data

$function style_picker:display/basic/finish with storage style_picker:data callbacks.$(id)

$function color_picker:display/rgb {id:"$(id)",confirm_callback:"style_picker:display/basic/confirm_selection",update_callback:"style_picker:display/basic/on_color_update",cancel_callback:"$(cancel_callback)"}
