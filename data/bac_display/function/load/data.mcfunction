data modify storage bac_display:data default_config set value {page_flip_time:200, show_sidebar:0, page_size:11, min_char_len:24}

data modify storage bac_display:data translation set value { \
    adventure: '"Adventure"', \
    animal: '"Animal"', \
    bacap: '"BlazeAndCave"', \
    biomes: '"Biomes"', \
    building: '"Building"', \
    challenges: '"Super challenges"', \
    enchanting: '"Enchanting"', \
    end: '"End"', \
    farming: '"Farming"', \
    hidden: '"Hidden"', \
    milestones: '"Milestones"', \
    mining: '"Mining"', \
    monsters: '"Monsters"', \
    nether: '"Nether"', \
    potion: '"Potion"', \
    redstone: '"Redstone"', \
    statistics: '"Statistics"', \
    terralith: '"Terralith"', \
    total: '"Total"', \
    trophy: '"Trophies"', \
    weaponry: '"Weaponry"', \
    \
    blank: '"Blank line"', \
    dash: '"Dash line"', \
    double_dash: '"Double-dash line"', \
    tilde: '"Tilde line"', \
    underscore: '"Underscore line"', \
}


data modify storage bac_display:data default_config.page set value [{}, {}, {}]
data modify storage bac_display:data default_config.refresh_callback set value [ \
    { \
        page_number: 1, \
        title: "bac_display:refresh/callback/title/normal", \
        0: "bac_display:refresh/callback/dash", \
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
        title: "bac_display:refresh/callback/title/normal", \
        0: "bac_display:refresh/callback/dash", \
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
        title: "bac_display:refresh/callback/title/normal", \
        0: "bac_display:refresh/callback/dash", \
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
