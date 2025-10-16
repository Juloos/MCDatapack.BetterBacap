$data modify storage bac_display:macro data.done_style set from storage bac_display:data style.$(team).when_$(condition).progress_bar.done
$data modify storage bac_display:macro data.remaining_style set from storage bac_display:data style.$(team).when_$(condition).progress_bar.remaining
$data modify storage bac_display:macro data.left_style set from storage bac_display:data style.$(team).when_$(condition).progress_bar.left
$data modify storage bac_display:macro data.right_style set from storage bac_display:data style.$(team).when_$(condition).progress_bar.right
$data modify storage bac_display:macro data.percent_style set from storage bac_display:data style.$(team).when_$(condition).progress_bar.percent
