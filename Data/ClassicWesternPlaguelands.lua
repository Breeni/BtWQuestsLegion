local MAP_ID = 22

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_FIRST] = {
    name = GetAchievementCriteriaInfo(4893, 1),
    category = BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            id = BTWQUESTS_FACTION_ID_ALLIANCE,
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 35,
        },
    },
    completed = {
        type = "quest",
        id = 27165,
    },
    range = {35,60},
    items = {
        {
            {
                type = "quest",
                id = 27158,
                restrictions = {
                    {
                        type = "quest",
                        id = 27158,
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
                id = 27158,
                restrictions = {
                    {
                        type = "quest",
                        id = 27158,
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
                id = 28505,
                restrictions = {
                    {
                        type = "quest",
                        id = 28505,
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
                id = 28505,
                restrictions = {
                    {
                        type = "quest",
                        id = 28505,
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
                id = 28576,
                restrictions = {
                    {
                        type = "quest",
                        id = 28576,
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
                id = 28576,
                restrictions = {
                    {
                        type = "quest",
                        id = 28576,
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
                id = 28749,
                restrictions = {
                    {
                        type = "quest",
                        id = 28749,
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
                id = 28749,
                restrictions = {
                    {
                        type = "quest",
                        id = 28749,
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
                name = "Go to Thassarian",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(22, 0, 0.4106, 0.7045, "Thassarian")
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
            id = 27161,
            x = 1,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27159,
            x = 3,
            y = 1,
            connections = {
                3,
                4,
            },
        },
        {
            type = "quest",
            id = 27160,
            x = 5,
            y = 1,
        },
        {
            type = "quest",
            id = 27164,
            x = 1,
            y = 2,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27162,
            x = 3,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27163,
            x = 5,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27165,
            x = 3,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_PEACE,
            x = 3,
            y = 4,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_PEACE] = {
    name = GetAchievementCriteriaInfo(4893, 2),
    category = BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            id = BTWQUESTS_FACTION_ID_ALLIANCE,
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 35,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_FIRST,
        },
    },
    completed = {
        type = "quest",
        id = 27174,
    },
    range = {35,60},
    items = {
        {
            name = "Go to Commander Ashlam Valorfist",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(22, 0, 0.4270, 0.8401, "Commander Ashlam Valorfist")
            end,
            x = 3,
            y = 0,
            connections = {
                2,
            },
        },
        {
            type = "chain",
            id = 12701,
            x = 1,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27167,
            x = 3,
            y = 1,
            connections = {
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 27166,
            x = 5,
            y = 1,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27169,
            x = 3,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27168,
            x = 5,
            y = 2,
        },
        {
            type = "quest",
            id = 27170,
            x = 3,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27171,
            x = 3,
            y = 4,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27172,
            x = 2,
            y = 5,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27175,
            x = 4,
            y = 5,
        },
        {
            type = "quest",
            id = 27173,
            x = 2,
            y = 6,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27174,
            x = 2,
            y = 7,
            connections = {
                1,
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_SECOND,
            x = 2,
            y = 8,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_SECOND] = {
    name = GetAchievementCriteriaInfo(4893, 3),
    category = BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            id = BTWQUESTS_FACTION_ID_ALLIANCE,
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 35,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_PEACE,
        },
    },
    -- completed = {
    --     type = "quest",
    --     id = 27206,
    -- },
    range = {35,60},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_PEACE,
            x = 3,
            y = 0,
            connections = {
                1,
            },
        },
        {
            name = "Go to Durnt Brightfalcon",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(22, 0, 0.5046, 0.5270, "Durnt Brightfalcon")
            end,
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27197,
            x = 3,
            y = 2,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27198,
            x = 2,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27199,
            x = 4,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27205,
            x = 3,
            y = 4,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27202,
            x = 2,
            y = 5,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27201,
            x = 4,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27204,
            x = 3,
            y = 6,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_STEAD] = {
    name = GetAchievementCriteriaInfo(4893, 4),
    category = BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            id = BTWQUESTS_FACTION_ID_ALLIANCE,
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 35,
        },
    },
    -- completed = {
    --     type = "quest",
    --     id = 26748,
    -- },
    range = {35,60},
    items = {
        {
            type = "quest",
            id = 26953,
            x = 1,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26999,
            x = 3,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26956,
            x = 5,
            y = 1,
        },
        {
            type = "quest",
            id = 26954,
            x = 1,
            y = 2,
        },
        {
            type = "quest",
            id = 26935,
            x = 3,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27000,
            x = 3,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27013,
            x = 5,
            y = 3,
            connections = {
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 27001,
            x = 2,
            y = 4,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27011,
            x = 4,
            y = 4,
        },
        {
            type = "quest",
            id = 27012,
            x = 6,
            y = 4,
        },
        {
            type = "quest",
            id = 26957,
            x = 0,
            y = 5,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27002,
            x = 2,
            y = 5,
        },
        {
            type = "quest",
            id = 27151,
            x = 4,
            y = 5,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27156,
            x = 6,
            y = 5,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27017,
            x = 0,
            y = 6,
        },
        {
            type = "quest",
            id = 27053,
            x = 2,
            y = 6,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27152,
            x = 4,
            y = 6,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27157,
            x = 6,
            y = 6,
        },
        {
            type = "quest",
            id = 27057,
            x = 2,
            y = 7,
            connections = {
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 27153,
            x = 4,
            y = 7,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26955,
            x = 0,
            y = 8,
        },
        {
            type = "quest",
            id = 27054,
            x = 2,
            y = 8,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27154,
            x = 4,
            y = 8,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27055,
            x = 2,
            y = 9,
        },
        {
            type = "quest",
            id = 27155,
            x = 4,
            y = 9,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS] = {
    name = GetMapNameByID(MAP_ID),
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        type = "faction",
        id = BTWQUESTS_FACTION_ID_ALLIANCE,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_FIRST,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_PEACE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_SECOND,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_WESTERN_PLAGUELANDS_STEAD,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_WESTERN_PLAGUELANDS,
}