# bac_tracker:data
```yaml
    default_config: {
        // The time in ticks that the tracker should target
        //   for refreshing all the tracked data.
        // The tasks for tracking everything are spread over 
        //   the course of this time for less lag spikes.
        target_refresh_time: 20,

        // Acts on the what to detect when refreshing the data.
        //   - "none", do not refresh anything with tasks.
        //   - "revoked", detect revoked advancements and refresh.
        //   - "earned", detect earned advancements and refresh.
        //   - "both", detect all advancements changes and refresh.
        // Note that advancements are already tracked when granted, detecting
        //   them again periodically is only useful to prevent desyncs.
        // Also note that remaining tasks are refreshed at player login. 
        refresh_type: "revoked",

        // Whether to refresh all currently online players on /reload or not.
        refresh_on_load: true,

        // Whether to count the hidden advancements in the progress or not.
        count_hidden: false
    },

    pack_info: {
        name: "BetterBacap",
        version: "x.y.z",

        // The supported bacap versions.
        bacap: "1.17",

        // The supported minecraft versions.
        minecraft: "1.21",

        // The loaded extension packs that were successfully detected.
        extensions: {
            bac_terralith: 1b, 
            bac_amplified_nether: 0b, 
            bac_nullscape: 0b, 
            bac_hardcore: 1b,
            ...
        }
    },

    players: [
        {
            name: "Juloos",
            advancements: [
                {
                    // Last name of the advancement.
                    // For example, the following from "minecraft:end/elytra"
                    name: "elytra",
                    // The tab this advancement belongs to.
                    category: "end",

                    // Some advancements have extra categories to account for,
                    //   such as "hidden", "milestone", "terralith", ect.
                    extra_categories: [],

                    // The bac type of the advancement.
                    // One of "task", "challenge", "goal",
                    //   "super_challenge", "milestone".
                    type: "goal",

                    // Rank for this advancement across everyone.
                    global_rank: 2,
                    // Rank for this advancement across the player's team.
                    team_rank: 1,
                },
                ...
            ]
        }, 
        ...
    ],

    teams: [
        {
            name: "dark_purple",
            advancements: [
                {
                    name: "elytra",
                    category: "end",
                    extra_categories: [],
                    type: "goal",
                },
                ...
            ]
        }, 
        ...
    ],

    // The exhaustive list of advancements.
    advancements: [
        {
            name: "elytra",
            category: "end",
            extra_categories: [],
            type: "goal",
        },
        ...
    ],

    // The size of each category in the advancements list.
    // Computed after each load.
    category_size: {
        "total": 1182,
        ...
    }
```


# bac_display:data
```yaml
    default_config: {
        // Time in ticks to wait before flipping the page.
        page_flip_time: 200,

        show_sidebar: 0,

        // Fixed vertical space per page (counting in lines).
        page_size: 11,

        // Minimum horizontal space per page (counting in dashes).
        // Doesn't clamp the width of the page though.
        min_char_len: 26,

        // The alignment format of the right-justified text in the page.
        // One of "normal", "spaced", "aligned", "spaced_aligned"
        align: "spaced_aligned",

        // Progress bar settings
        progress_bar: {
            // The lenth of the bar itself, in number of `|` characters.
            bar_len: 64,
            // The percentage of the total progress with numbers (%).
            // One of "none", "left_outside", "right_outside",
            //   "left_inside", "right_inside", "center_inside"
            percent: "right_outside"
        },

        // The page initial setup, with the default number of pages (3).
        page: [{}, {}, {}],
        // The refresh callbacks for the different pages.
        // Should be migrated to a preset system at some point.
        refresh_callbacks: [
            // Refer to the `page` and `regresh_callbacks` tags below.
        ],

        // The style to apply in different situations to different components.
        // Note that the style is a NBT JSON Style without the curly braces.
        style: {
            when_complete: {
                // The left-justified text.
                text: '"color":"#54FC54"',
                // The left number of the right-justified text.
                progress_number: '"color":"#FCFC54"',
                // The character in-between the right-justified text.
                separator: '"color":"#FCA800"',
                // The right number of the right-justified text.
                max_number: '"color":"#FCFC54"',
                // The progress bar, if shown.
                progress_bar: '"color":"#54FC54"'
            },

            // Same components as above
            when_incomplete: {
                ...
            },

            // The text describing the page number.
            pagination: '"color":"#A8A8A8","italic":true',

            progress_bar: {
                // The done part of the progress bar.
                done: '"color":"#54FC54"',
                // The remaining part of the progress bar.
                remaining: '"color":"#A8A8A8"',
                // The character(s) on the left of the progress bar.
                left: '"color":"#FCFCFC"',
                // The character(s) on the right of the progress bar.
                right: '"color":"#FCFCFC"',
                // The percentage that optionnally appear.
                percent: '"color":"#FC54FC"'
            }
        }
    },

    // Constant string of same characters for the progress bar logic.
    bar_char_set: {
        vertical_bar: "|||||||||||||||||||||||...",
        ...
    }

    // The progress bar settings in use for the different teams.
    progress_bar: {
        // The team name, which is either `any` or a team color.
        team: {
            bar_len: 64,
            percent: "right_outside"
        }
    },

    // The refresh callbacks in use for the different teams and pages.
    refresh_callback: {
        // The team name, which is either `any` or a team color.
        team: [
            {
                // The page index (+1) for callbacks to have context.
                page_number: x,
                
                // The callbacks are function macros with arguments
                //   - `index` of the line in the page
                //   - `team` of the corresponding sidebar
                //   - `page_number` for convenience
                // Except for the title callback, which only has `team`.
                title: "bac_display:refresh/callback/title/foo",
                // Even if `page_size` is less than 15, all the callbacks are
                //   still called, which raises exceptions with empty strings.
                // Use empty functions when filling unused callbacks.
                0..14: "bac_display:refresh/callback/bar"
            },
            ...
        ]
    },

    // The pages to display to each team.
    // They will automatically fill the corresponding sidebars.
    page: {
        // The team name, which is either "any" or a team color.
        team: [
            {
                // The team this page belongs to, for macro convenience.
                team: `corresponding team`,
                
                // The following arguments are stringified raw JSON texts,
                //   which means that an empty string is '""' and not "".
                title: '"Advancements progress"',
                // name_x is the left-justified text.
                name_0..14: '["Category", " ", "name"]',
                // number_x is the right-justified text.
                number_0..14: '{"text": "Progress", "color": "green"}'
            },
            ...
        ]
    }
```
