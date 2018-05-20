BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_EPILOGUE] = {
    name = BTWQUESTS_EPILOGUE,
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
        id = 50374,
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
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_LOST_MAIL] = {
    name = "Lost Mail",
    category = 0,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 50247,
    },
    range = {110},
    items = {
        {
            type = "quest",
            id = 41368,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            name = "Head to the Dalaran Mailroom",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(1014, 10, 0.3342, 0.3164, "Dalaran Mailroom Entrance")
            end,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46278,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41397,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41367,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41394,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41395,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            name = "Return to the Dalaran Mailroom",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(1014, 10, 0.3342, 0.3164, "Dalaran Mailroom Entrance")
            end,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 50247,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_EPILOGUE,
})

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_LOST_MAIL,
})