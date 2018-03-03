BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_ZULGURUB] = {
    name = GetAchievementCriteriaInfo(4905, 1),
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
            level = 30,
        },
    },
    completed = {
        type = "quest",
        id = 26814,
    },
    range = {30,60},
    items = {
        {
            type = "quest",
            id = 28702,
            x = 2,
            y = 0,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26805,
            x = 4,
            y = 0,
        },
        {
            type = "quest",
            id = 26825,
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26823,
            x = 3,
            y = 2,
            connections = {
                2,
                3,
                4,
                5,
            },
        },
        {
            type = "quest",
            id = 26822,
            x = 5,
            y = 2,
        },
        {
            type = "quest",
            id = 26818,
            x = 0,
            y = 3,
        },
        {
            type = "quest",
            id = 26817,
            x = 2,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26819,
            x = 4,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26820,
            x = 6,
            y = 3,
        },
        {
            type = "quest",
            id = 26815,
            x = 1,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26808,
            x = 5,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26809,
            x = 1,
            y = 5,
            connections = {
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 26809,
            x = 5,
            y = 5,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26816,
            x = 0,
            y = 6,
        },
        {
            type = "quest",
            id = 26824,
            x = 2,
            y = 6,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26810,
            x = 5,
            y = 6,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26821,
            x = 2,
            y = 7,
        },
        {
            type = "quest",
            id = 26811,
            x = 5,
            y = 7,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26812,
            x = 5,
            y = 8,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26813,
            x = 5,
            y = 9,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26814,
            x = 5,
            y = 10,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_PIRATES] = {
    name = GetAchievementCriteriaInfo(4905, 3),
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
            level = 30,
        },
        {
            type = "quest",
            id = 26612,
        },
    },
    completed = {
        type = "quest",
        id = 26665,
    },
    range = {25,60},
    items = {
        {
            name = BtWQuests_GetQuestName(26612),
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BOOTY_BAY,
            userdata = {
                scrollTo = {
                    type = "quest",
                    id = 26612,
                }
            },
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26624,
            x = 3,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26629,
            x = 3,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26631,
            x = 3,
            y = 4,
            connections = {
                1,
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 26635,
            x = 1,
            y = 5,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26633,
            x = 3,
            y = 5,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26634,
            x = 5,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26644,
            x = 3,
            y = 6,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 26648,
            x = 1,
            y = 7,
        },
        {
            type = "quest",
            id = 26647,
            x = 3,
            y = 7,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26649,
            x = 3,
            y = 8,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26650,
            x = 3,
            y = 9,
            connections = {
                1,
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 26662,
            x = 1,
            y = 10,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26663,
            x = 3,
            y = 10,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26664,
            x = 5,
            y = 10,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26665,
            x = 3,
            y = 11,
            connections = {
                1,
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BLOODSAIL,
            x = 3,
            y = 12,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BOOTY_BAY] = {
    name = GetAchievementCriteriaInfo(4905, 2),
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
            level = 30,
        },
    },
    completed = {
        type = "quest",
        id = 26613,
    },
    range = {30,60},
    items = {
        {
            type = "quest",
            id = 26603,
            x = 0,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 26593,
            x = 2,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 26599,
            x = 4,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 26597,
            x = 6,
            y = 1,
        },
        {
            type = "quest",
            id = 26604,
            x = 0,
            y = 2,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26594,
            x = 2,
            y = 2,
            connections = {
                5,
            },
        },
        {
            type = "quest",
            id = 26600,
            x = 4,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26605,
            x = 0,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26602,
            x = 4,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26606,
            x = 0,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26595,
            x = 2,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26601,
            x = 4,
            y = 4,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26609,
            x = 2,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26610,
            x = 2,
            y = 6,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26617,
            x = 4,
            y = 6,
        },
        {
            type = "quest",
            id = 26611,
            x = 2,
            y = 7,
            connections = {
                1,
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 26614,
            x = 0,
            y = 8,
        },
        {
            type = "quest",
            id = 26612,
            x = 2,
            y = 8,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26613,
            x = 4,
            y = 8,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_PIRATES,
            x = 2,
            y = 9,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BLOODSAIL] = {
    name = GetAchievementCriteriaInfo(4905, 4),
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
            level = 30,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BOOTY_BAY
        },
    },
    completed = {
        type = "quest",
        id = 26703,
    },
    range = {30,60},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_PIRATES,
            x = 3,
            y = 0,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26678,
            x = 3,
            y = 1,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26679,
            x = 3,
            y = 2,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 26695,
            x = 2,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26698,
            x = 4,
            y = 3,
            connections = {
                2,
                3,
            },
        },
        {
            type = "quest",
            id = 26697,
            x = 1,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 26700,
            x = 3,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 26699,
            x = 5,
            y = 4,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 26703,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_CAPE_OF_STRANGLETHORN] = {
    name = GetMapNameByID(673),
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_ZULGURUB,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BOOTY_BAY,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_PIRATES,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_CAPE_OF_STRANGLETHORN_BLOODSAIL,
        },
    },
}
