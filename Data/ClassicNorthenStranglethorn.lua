BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_NORTHERN_STRANGLETHORN_REBEL_CAMP] = {
    name = GetAchievementCriteriaInfo(12430, 1),
    category = BTWQUESTS_CATEGORY_CLASSIC_NORTHERN_STRANGLETHORN,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 20,
        },
    },
    completed = {
        type = "quest",
        id = 26674,
    },
    range = {20},
    items = {
        {
            name = "Go to Tobias Mistmantle",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(34, 0, 0.7908, 0.4418, "Tobias Mistmantle")
            end,
            x = 3,
            y = 0,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26666,
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26667,
            x = 3,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26669,
            x = 3,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26670,
            x = 3,
            y = 4,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26671,
            x = 3,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26672,
            x = 3,
            y = 6,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26674,
            x = 3,
            y = 7,
            connections = {
                1,
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_MORBENT_FEL,
            aside = true,
            x = 3,
            y = 8,
        },
    },
}
BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_NORTHERN_STRANGLETHORN] = {
    name = GetMapNameByID(37),
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_NORTHERN_STRANGLETHORN_REBEL_CAMP,
        },
    },
}
