BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_PROFESSIONS_UNDERLIGHT_ANGLER] = {
    name = BTWQUESTS_THE_UNDERLIGHT_ANGLER,
    category = BTWQUESTS_CATEGORY_LEGION_PROFESSIONS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "level",
            level = 110,
        },
        {
            type = "achievement",
            id = 10596,
        },
    },
    completed = {
        type = "quest",
        id = 41010,
    },
    range = {98, 110},
    items = {
        {
            name = BTWQUESTS_FISH_LUMINOUS_PEARL,
            breadcrumb = true,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 40960,
            x = 3,
            y = 1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 40961,
            x = 3,
            y = 2,
            connections = {
                1,
            }
        },
        {
            name = BTWQUESTS_WAIT_NAT_PAGLE,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 41010,
            x = 3,
            y = 4,
        },
    },
}


BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_PROFESSIONS] = {
    name = BTWQUESTS_PROFESSIONS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_PROFESSIONS_UNDERLIGHT_ANGLER,
        },
    },
}

