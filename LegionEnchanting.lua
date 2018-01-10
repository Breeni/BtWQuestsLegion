BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_ENCHANTING_PROFESSION] = {
    name = "Profession quest line",
    category = BTWQUESTS_CATEGORY_LEGION_ENCHANTING,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "level",
            level = 98,
        },
    },
    completed = {
        type = "quest",
        id = 39923,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39874,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39875,
            x = 3,
            y = 1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39876,
            x = 3,
            y = 2,
            connections = {
                1, 2,
            }
        },
        {
            type = "quest",
            id = 39877,
            x = 2,
            y = 3,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 40048,
            x = 4,
            y = 3,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39905,
            x = 3,
            y = 4,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39878,
            x = 3,
            y = 5,
            connections = {
                1, 2,
            }
        },
        {
            type = "quest",
            id = 39879,
            x = 2,
            y = 6,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 39880,
            x = 4,
            y = 6,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39883,
            x = 3,
            y = 7,
            connections = {
                1, 2,
            }
        },
        {
            type = "quest",
            id = 39881,
            x = 2,
            y = 8,
            connections = {
                2, 3,
            }
        },
        {
            type = "quest",
            id = 39903,
            x = 4,
            y = 8,
            connections = {
                4,
            }
        },

        
        {
            type = "quest",
            id = 39884,
            x = 1,
            y = 9,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 39889,
            x = 3,
            y = 9,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39882,
            x = 2,
            y = 10,
            connections = {
                3,
            }
        },

        
        {
            type = "quest",
            id = 40265,
            x = 5,
            y = 9,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39904,
            x = 4,
            y = 10,
            connections = {
                1,
            }
        },

        
        {
            type = "quest",
            id = 39891,
            x = 3,
            y = 11,
            connections = {
                1, 2, 3,
            }
        },
        {
            type = "quest",
            id = 39910,
            x = 1,
            y = 12,
        },
        {
            type = "quest",
            id = 40169,
            x = 3,
            y = 12,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 39906,
            x = 5,
            y = 12,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 39916,
            x = 3,
            y = 13,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 39914,
            x = 5,
            y = 13,
        },
        {
            type = "quest",
            id = 40130,
            x = 3,
            y = 14,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39918,
            x = 3,
            y = 15,
            connections = {
                1,
            }
        },

        
        {
            type = "quest",
            id = 39907,
            x = 3,
            y = 16,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39920,
            x = 3,
            y = 17,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39921,
            x = 3,
            y = 18,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 39923,
            x = 3,
            y = 19,
        },
    },
}


BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_ENCHANTING] = {
    name = BTWQUESTS_ENCHANTING,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ENCHANTING_PROFESSION,
        },
    },
}

