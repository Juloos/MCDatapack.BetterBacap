$data modify storage style_picker:macro data set value {id:"$(id)"}

$function style_picker:display/basic/merge_style with storage style_picker:data draft.$(id)
data modify storage style_picker:macro data.style set from storage style_picker:result style

$function $(callback) with storage style_picker:macro data
