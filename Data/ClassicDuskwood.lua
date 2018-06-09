local MAP_ID = 34

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD] = {
    name = GetAchievementCriteriaInfo(12430, 5),
    category = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
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
            level = 20,
        },
    },
    completed = {
        type = "achievement",
        id = 12430,
        criteria = 5,
    },
    range = {20},
    items = {
        {
            {
                type = "quest",
                id = 28564,
                restrictions = {
                    {
                        type = "quest",
                        id = 28564,
                    }
                },
                x = 2,
                y = 0,
                connections = {
                    3,
                },
            },
            {
                type = "quest",
                id = 28564,
                restrictions = {
                    {
                        type = "quest",
                        id = 28564,
                        active = true,
                    }
                },
                x = 2,
                y = 0,
                connections = {
                    3,
                },
            },
            {
                type = "quest",
                id = 26728,
                restrictions = {
                    {
                        type = "quest",
                        id = 26728,
                    }
                },
                x = 2,
                y = 0,
                connections = {
                    3,
                },
            },
            {
                type = "quest",
                id = 26728,
                restrictions = {
                    {
                        type = "quest",
                        id = 26728,
                        active = true,
                    }
                },
                x = 2,
                y = 0,
                connections = {
                    3,
                },
            },
            {
                name = "Go to Commander Althea Ebonlocke",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(34, 0, 0.7352, 0.4693, "Commander Althea Ebonlocke")
                end,
                x = 2,
                y = 0,
                connections = {
                    3,
                },
            },
        },
        {
            name = "Go to Calor",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(34, 0, 0.7533, 0.4802, "Calor")
            end,
            x = 6,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 26620,
            x = 0,
            y = 1,
        },
        {
            type = "quest",
            id = 26618,
            x = 2,
            y = 1,
            connections = {
                3,
                4,
                5,
            },
        },
        {
            type = "quest",
            id = 26623,
            x = 4,
            y = 1,
        },
        {
            type = "quest",
            id = 26688,
            x = 6,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_HERMIT,
            aside = true,
            x = 0,
            y = 2,
        },
        {
            name = "Go to Viktori Prism'Antras",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(34, 0, 0.7953, 0.4747, "Viktori Prism'Antras")
            end,
            x = 2,
            y = 2,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26645,
            x = 4,
            y = 2,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26689,
            x = 6,
            y = 2,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26683,
            x = 2,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26686,
            x = 4,
            y = 3,
        },
        {
            type = "quest",
            id = 26690,
            x = 6,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26684,
            x = 2,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26691,
            x = 6,
            y = 4,
        },
        {
            type = "quest",
            id = 26685,
            x = 2,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_STALVAN] = {
    name = GetAchievementCriteriaInfo(12430, 1),
    category = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
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
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_MORBENT_FEL] = {
    name = GetAchievementCriteriaInfo(12430, 2),
    category = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
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
            level = 20,
        },
    },
    completed = {
        type = "quest",
        id = 26754,
    },
    range = {20},
    items = {
        {
            {
                type = "quest",
                id = 26785,
                restrictions = {
                    {
                        type = "quest",
                        id = 26785,
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
                id = 26785,
                restrictions = {
                    {
                        type = "quest",
                        id = 26785,
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
                name = "Go to Apprentice Fess",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(34, 0, 0.4492, 0.6743, "Apprentice Fess")
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
            id = 26707,
            x = 1,
            y = 1,
        },
        {
            type = "quest",
            id = 26717,
            x = 3,
            y = 1,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 25235,
            x = 5,
            y = 1,
        },
        {
            type = "quest",
            id = 26719,
            x = 3,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26777,
            x = 1,
            y = 3,
        },
        {
            type = "quest",
            id = 26720,
            x = 3,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26721,
            x = 5,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26760,
            x = 3,
            y = 4,
            connections = {
                2, 3
            },
        },
        {
            type = "quest",
            id = 26787,
            x = 5,
            y = 4,
        },
        {
            type = "quest",
            id = 26778,
            x = 1,
            y = 5,
        },
        {
            type = "quest",
            id = 26723,
            x = 3,
            y = 5,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26724,
            x = 3,
            y = 6,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26725,
            x = 3,
            y = 7,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26753,
            x = 3,
            y = 8,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26722,
            x = 3,
            y = 9,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26754,
            x = 3,
            y = 10,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_HERMIT] = {
    name = GetAchievementCriteriaInfo(12430, 3),
    category = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
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
            level = 20,
        },
    },
    completed = {
        type = "quest",
        id = 26727,
    },
    range = {20},
    items = {
        {
            {
                type = "quest",
                id = 26627,
                restrictions = {
                    {
                        type = "quest",
                        id = 26627,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    1,
                },
            },
            {
                type = "quest",
                id = 26627,
                restrictions = {
                    {
                        type = "quest",
                        id = 26627,
                        active = true,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    1,
                },
            },
            {
                name = "Go to Abercrombie",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(34, 0, 0.8743, 0.3520, "Abercrombie")
                end,
                x = 3,
                y = 0,
                connections = {
                    1,
                },
            },
        },
        {
            type = "quest",
            id = 26653,
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26652,
            x = 3,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26654,
            x = 3,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26655,
            x = 3,
            y = 4,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26660,
            x = 3,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26661,
            x = 3,
            y = 6,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26676,
            x = 3,
            y = 7,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26680,
            x = 3,
            y = 8,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26677,
            x = 3,
            y = 9,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26681,
            x = 3,
            y = 10,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26727,
            x = 3,
            y = 11,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_MORLADIM] = {
    name = GetAchievementCriteriaInfo(12430, 4),
    category = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
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
            level = 20,
        },
    },
    completed = {
        type = "quest",
        id = 26797,
    },
    range = {20},
    items = {
        {
            name = "Go to The Weathered Grave",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(34, 0, 0.1772, 0.2907, "The Weathered Grave")
            end,
            x = 3,
            y = 0,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26793,
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26794,
            x = 3,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26795,
            x = 3,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26796,
            x = 3,
            y = 4,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26797,
            x = 3,
            y = 5,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD] = {
    name = GetMapNameByID(MAP_ID),
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        type = "faction",
        id = BTWQUESTS_FACTION_ID_ALLIANCE,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_STALVAN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_HERMIT,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_MORBENT_FEL,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_DUSKWOOD_MORLADIM,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_DUSKWOOD,
}