data modify storage bac_display:data default_config set value {page_flip_time:200, show_sidebar:0, page_size:11, min_char_len:24, align:"spaced_aligned", count_hidden:"overflow"}

data modify storage bac_display:data default_config.page set value [{}, {}, {}]
data modify storage bac_display:data default_config.refresh_callback set value [ \
    { \
        page_number: 1, \
        title: "bac_display:refresh/callback/title/progress_bar", \
        0: "bac_display:refresh/callback/blank", \
        1: "bac_display:refresh/callback/category/total", \
        2: "bac_display:refresh/callback/category/milestones", \
        3: "bac_display:refresh/callback/blank", \
        4: "bac_display:refresh/callback/category/adventure", \
        5: "bac_display:refresh/callback/category/animal", \
        6: "bac_display:refresh/callback/category/biomes", \
        7: "bac_display:refresh/callback/category/building", \
        8: "bac_display:refresh/callback/category/challenges", \
        9: "bac_display:refresh/callback/blank", \
        10: "bac_display:refresh/callback/page_number", \
        11: "bac_display:refresh/callback/blank", \
        12: "bac_display:refresh/callback/blank", \
        13: "bac_display:refresh/callback/blank", \
        14: "bac_display:refresh/callback/blank", \
    }, { \
        page_number: 2, \
        title: "bac_display:refresh/callback/title/progress_bar", \
        0: "bac_display:refresh/callback/blank", \
        1: "bac_display:refresh/callback/category/total", \
        2: "bac_display:refresh/callback/category/milestones", \
        3: "bac_display:refresh/callback/blank", \
        4: "bac_display:refresh/callback/category/enchanting", \
        5: "bac_display:refresh/callback/category/end", \
        6: "bac_display:refresh/callback/category/farming", \
        7: "bac_display:refresh/callback/category/mining", \
        8: "bac_display:refresh/callback/category/monsters", \
        9: "bac_display:refresh/callback/blank", \
        10: "bac_display:refresh/callback/page_number", \
        11: "bac_display:refresh/callback/blank", \
        12: "bac_display:refresh/callback/blank", \
        13: "bac_display:refresh/callback/blank", \
        14: "bac_display:refresh/callback/blank", \
    }, { \
        page_number: 3, \
        title: "bac_display:refresh/callback/title/progress_bar", \
        0: "bac_display:refresh/callback/blank", \
        1: "bac_display:refresh/callback/category/total", \
        2: "bac_display:refresh/callback/category/milestones", \
        3: "bac_display:refresh/callback/blank", \
        4: "bac_display:refresh/callback/category/nether", \
        5: "bac_display:refresh/callback/category/potion", \
        6: "bac_display:refresh/callback/category/redstone", \
        7: "bac_display:refresh/callback/category/statistics", \
        8: "bac_display:refresh/callback/category/weaponry", \
        9: "bac_display:refresh/callback/blank", \
        10: "bac_display:refresh/callback/page_number", \
        11: "bac_display:refresh/callback/blank", \
        12: "bac_display:refresh/callback/blank", \
        13: "bac_display:refresh/callback/blank", \
        14: "bac_display:refresh/callback/blank", \
    } \
]

data modify storage bac_display:data default_config.style set value { \
    when_complete: { \
        text: '"color":"#54FC54"', \
        progress_number: '"color":"#FCFC54"', \
        separator: '"color":"#FCA800"', \
        max_number: '"color":"#FCFC54"' \
    }, \
    when_incomplete: { \
        text: '"color":"#FCFCFC"', \
        progress_number: '"color":"#FCFC54"', \
        separator: '"color":"#FCA800"', \
        max_number: '"color":"#FCFC54"' \
    }, \
    pagination: '"color":"#A8A8A8","italic":true', \
    progress_bar: { \
        done: '"color":"#54FC54"', \
        remaining: '"color":"#A8A8A8"', \
        left: '"color":"#FCFCFC"', \
        right: '"color":"#FCFCFC"', \
        percent: '"color":"#FC54FC"' \
    } \
}

data modify storage bac_display:data default_config.progress_bar set value { \
    bar_len: 52, \
    percent: "right_outside" \
}


data modify storage bac_display:data progress_bar set value { \
    vertical_bar: "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||" \
}
