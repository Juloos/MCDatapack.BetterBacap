$data modify storage color_picker:macro data.text_r set value {rgb:r,color:"$(color)",callbacks_id:$(callbacks_id)}
$function utils:range_loop_macro {macro:"color_picker:display/rgb/prepare_data/one_bar",from:0,to:$(r),data:{rgb:r,color:"#ff0000",hover_color:"#ff0000",callbacks_id:$(callbacks_id)}}
$function utils:range_loop_macro {macro:"color_picker:display/rgb/prepare_data/one_bar",from:$(r),to:256,data:{rgb:r,color:"#888888",hover_color:"#ff0000",callbacks_id:$(callbacks_id)}}
function color_picker:display/rgb/prepare_data/merge256 with storage color_picker:macro data.text_r

$data modify storage color_picker:macro data.text_g set value {rgb:g,color:"$(color)",callbacks_id:$(callbacks_id)}
$function utils:range_loop_macro {macro:"color_picker:display/rgb/prepare_data/one_bar",from:0,to:$(g),data:{rgb:g,color:"#00ff00",hover_color:"#00ff00",callbacks_id:$(callbacks_id)}}
$function utils:range_loop_macro {macro:"color_picker:display/rgb/prepare_data/one_bar",from:$(g),to:256,data:{rgb:g,color:"#888888",hover_color:"#00ff00",callbacks_id:$(callbacks_id)}}
function color_picker:display/rgb/prepare_data/merge256 with storage color_picker:macro data.text_g

$data modify storage color_picker:macro data.text_b set value {rgb:b,color:"$(color)",callbacks_id:$(callbacks_id)}
$function utils:range_loop_macro {macro:"color_picker:display/rgb/prepare_data/one_bar",from:0,to:$(b),data:{rgb:b,color:"#0000ff",hover_color:"#0000ff",callbacks_id:$(callbacks_id)}}
$function utils:range_loop_macro {macro:"color_picker:display/rgb/prepare_data/one_bar",from:$(b),to:256,data:{rgb:b,color:"#888888",hover_color:"#0000ff",callbacks_id:$(callbacks_id)}}
function color_picker:display/rgb/prepare_data/merge256 with storage color_picker:macro data.text_b
