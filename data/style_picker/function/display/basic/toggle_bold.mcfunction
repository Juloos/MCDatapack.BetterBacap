$execute store result score tmp style_picker.vars if data storage style_picker:data draft.$(id){bold:"false"}
$execute if score tmp style_picker.vars matches 1 run data modify storage style_picker:data draft.$(id).bold set value "true"
$execute if score tmp style_picker.vars matches 0 run data modify storage style_picker:data draft.$(id).bold set value "false"


$function style_picker:display/basic/update {id:"$(id)",callback:"$(update_callback)"}

$function style_picker:display/basic {id:"$(id)",confirm_callback:"$(confirm_callback)",update_callback:"$(update_callback)",cancel_callback:"$(cancel_callback)",current_style:''}
