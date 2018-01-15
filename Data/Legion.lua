BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION] = {
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_ORDERHALL,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEMONHUNTER,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DRUID,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_PALADIN,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_PRIEST,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_WARLOCK,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_CLASSES_WARRIOR,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_AZSUNA,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    },
    -- {
        -- type = "category",
        -- id = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    -- },
    -- {
        -- type = "category",
        -- id = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    -- },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_SURAMAR,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_BROKENSHORE,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_ARGUS,
    },
    {
        type = "category",
        id = BTWQUESTS_CATEGORY_LEGION_HIDDEN,
    },
    {
        type = "chain",
        id = BTWQUESTS_CHAIN_LEGION_EPILOGUE,
    },
}

BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_EPILOGUE] = {
    name = 'BTWQUESTS_CHAIN_LEGION_EPILOGUE',
    category = 0,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "achievement",
            id = 11991,
        },
    },
    completed = {
        type = "quest",
        id = -1,
    },
    range = {110},
    items = {
        {
            {
                type = "quest",
                id = 50371,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Alliance",
                    },
                },
                x = 3,
                y = 0,
                connections = {
                    1
                },
            },
            {
                type = "quest",
                id = 49977,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Horde",
                    },
                },
                x = 3,
                y = 0,
                connections = {
                    1
                },
            },
        },
        {
            {
                type = "quest",
                id = 49976,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Alliance",
                    },
                },
                x = 3,
                y = 1,
                connections = {
                    1
                },
            },
            {
                type = "quest",
                id = 50341,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Horde",
                    },
                },
                x = 3,
                y = 1,
                connections = {
                    1
                },
            },
        },
        {
            {
                type = "quest",
                id = 49981,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Alliance",
                    },
                },
                x = 3,
                y = 2,
                connections = {
                    1, 2
                },
            },
            {
                type = "quest",
                id = 49982,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Horde",
                    },
                },
                x = 3,
                y = 2,
                connections = {
                    1, 2
                },
            },
        },


        {
            {
                type = "quest",
                id = 50046,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Alliance",
                    },
                },
                x = 2,
                y = 3,
                connections = {
                    2, 3
                },
            },
            {
                type = "quest",
                id = 50046,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Horde",
                    },
                },
                x = 2,
                y = 3,
                connections = {
                    2, 3
                },
            },
        },
        {
            {
                type = "quest",
                id = 50047,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Alliance",
                    },
                },
                x = 4,
                y = 3,
                connections = {
                    1, 2
                },
            },
            {
                type = "quest",
                id = 50047,
                restrictions = {
                    {
                        type = "faction",
                        faction = "Horde",
                    },
                },
                x = 4,
                y = 3,
                connections = {
                    1, 2
                },
            },
        },

        
        {
            type = "quest",
            id = 50372,
            x = 2,
            y = 4,
            connections = {
                3, 4
            },
        },
        {
            type = "quest",
            id = 50228,
            x = 4,
            y = 4,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 50229,
            x = 6,
            y = 4,
        },

        
        {
            type = "quest",
            id = 50226,
            x = 1,
            y = 5,
        },
        {
            type = "quest",
            id = 50227,
            x = 3,
            y = 5,
        },
        
        {
            type = "quest",
            id = 50373,
            x = 5,
            y = 5,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 50049,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 50374,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
    },
}