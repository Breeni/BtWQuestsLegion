BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_NORTHERN_STRANGLETHORN_REBEL_CAMP] = {
    name = GetAchievementCriteriaInfo(4906, 2),
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
            level = 25,
        },
    },
    completed = {
        type = "quest",
        id = 26743,
    },
    range = {25,60},
    items = {
        {
            {
                type = "quest",
                id = 26838,
                restrictions = {
                    {
                        type = "quest",
                        id = 26838,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    2,
                },
            },
            {
                type = "quest",
                id = 26838,
                restrictions = {
                    {
                        type = "quest",
                        id = 26838,
                        active = true,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    2,
                },
            },
            {
                type = "quest",
                id = 28699,
                restrictions = {
                    {
                        type = "quest",
                        id = 28699,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    2,
                },
            },
            {
                type = "quest",
                id = 28699,
                restrictions = {
                    {
                        type = "quest",
                        id = 28699,
                        active = true,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    2,
                },
            },
            {
                name = "Go to Lieutenant Doren",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(37, 0, 0.4757, 0.1025, "Lieutenant Doren")
                end,
                x = 3,
                y = 0,
                connections = {
                    2,
                },
            },
        },
        {
            type = "quest",
            id = 26732,
            x = 1,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26735,
            x = 3,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26740,
            x = 5,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26733,
            x = 1,
            y = 2,
        },
        {
            type = "quest",
            id = 26736,
            x = 3,
            y = 2,
            connections = {
                3,
                2,
            },
        },
        {
            type = "quest",
            id = 26763,
            x = 5,
            y = 2,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26729,
            x = 1,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26737,
            x = 3,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26765,
            x = 5,
            y = 3,
        },
        {
            type = "quest",
            id = 26730,
            x = 1,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26742,
            x = 3,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26731,
            x = 1,
            y = 5,
        },
        {
            type = "quest",
            id = 26743,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_NORTHERN_STRANGLETHORN_NESINGWARY] = {
    name = GetAchievementCriteriaInfo(4906, 3),
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
            level = 25,
        },
    },
    completed = {
        type = "quest",
        id = 208,
    },
    range = {25,60},
    items = {
        {
            {
                type = "quest",
                id = 26340,
                restrictions = {
                    {
                        type = "quest",
                        id = 26340,
                    }
                },
                x = 2,
                y = 0,
                connections = {
                    2,
                },
            },
            {
                type = "quest",
                id = 26340,
                restrictions = {
                    {
                        type = "quest",
                        id = 26340,
                        active = true,
                    }
                },
                x = 2,
                y = 0,
                connections = {
                    2,
                },
            },
            {
                name = "Go to Barnil Stonepot",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(37, 0, 0.4424, 0.2213, "Barnil Stonepot")
                end,
                x = 2,
                y = 0,
                connections = {
                    2,
                },
            },
        },
        {
            name = "Go to Drizzlik",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(37, 0, 0.4364, 0.2338, "Drizzlik")
            end,
            x = 6,
            y = 0,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26340,
            x = 2,
            y = 0,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 583,
            x = 2,
            y = 1,
            connections = {
                1,
                3,
                4,
                5,
            },
        },
        {
            type = "quest",
            id = 26269,
            x = 4,
            y = 1,
        },
        {
            type = "quest",
            id = 26343,
            x = 6,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 185,
            x = 0,
            y = 2,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 190,
            x = 2,
            y = 2,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 194,
            x = 4,
            y = 2,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 26344,
            x = 6,
            y = 2,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 186,
            x = 0,
            y = 3,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 191,
            x = 2,
            y = 3,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 195,
            x = 4,
            y = 3,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 26345,
            x = 6,
            y = 3,
        },
        {
            type = "quest",
            id = 187,
            x = 0,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 192,
            x = 2,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 196,
            x = 4,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 188,
            x = 0,
            y = 5,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 193,
            x = 2,
            y = 5,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 197,
            x = 4,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 208,
            x = 2,
            y = 6,
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
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_NORTHERN_STRANGLETHORN_NESINGWARY,
        },
    },
}
