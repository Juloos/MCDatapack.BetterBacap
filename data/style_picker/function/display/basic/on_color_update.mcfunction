$data modify storage style_picker:data draft.$(id).color set value "$(color)"

$function style_picker:display/basic/macro/on_color_update with storage style_picker:data callbacks.$(id)

$function style_picker:display/basic/finish with storage style_picker:data callbacks.$(id)
