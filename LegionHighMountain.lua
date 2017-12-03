BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERMANE_TRIBE] = {
    name = GetAchievementCriteriaInfo(10059, 1),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 39487,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39733,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38907,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38911,
            x = 3,
            y = 3,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 39272,
            x = 1,
            y = 4,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39491,
            x = 3,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39490,
            x = 5,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39496,
            x = 3,
            y = 5,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 39316,
            x = 1,
            y = 6,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39614,
            x = 3,
            y = 6,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39277,
            x = 5,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39661,
            x = 3,
            y = 7,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 39488,
            x = 2,
            y = 8,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39489,
            x = 4,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39487,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND,
            aside = true,
            x = 3,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND] = {
    name = GetAchievementCriteriaInfo(10059, 2),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERMANE_TRIBE,
        },
    },
    completed = {
        type = "quest",
        id = 38909,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERMANE_TRIBE,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39498,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42104,
            x = 3,
            y = 2,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 39025,
            x = 2,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39026,
            x = 4,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39043,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39027,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38909,
            x = 3,
            y = 6,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SKYHORN_TRIBE,
            aside = true,
            x = 1,
            y = 7,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_BLOODTOTEM_TRIBE,
            aside = true,
            x = 3,
            y = 7,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_HULNS_WAR,
            aside = true,
            x = 5,
            y = 7,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SKYHORN_TRIBE] = {
    name = GetAchievementCriteriaInfo(10059, 3),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND,
        },
    },
    completed = {
        type = "quest",
        id = 39387,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 38913,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39318,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38910,
            x = 3,
            y = 2,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 39321,
            x = 2,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39429,
            x = 4,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39322,
            x = 3,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SECRETS_OF_HIGHMOUNTAIN,
            aside = true,
            x = 1,
            y = 5,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39387,
            x = 3,
            y = 5,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_BLOODTOTEM_TRIBE,
            aside = true,
            x = 5,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SNOWBLIND_MESA,
            aside = true,
            x = 3,
            y = 6,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_BLOODTOTEM_TRIBE] = {
    name = GetAchievementCriteriaInfo(10059, 4),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND,
        },
    },
    completed = {
        type = "quest",
        id = 39426,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 38912,
            x = 3,
            y = 0,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 39372,
            x = 1,
            y = 1,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39373,
            x = 3,
            y = 1,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39873,
            x = 5,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39374,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39455,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39860,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39381,
            x = 3,
            y = 5,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 39425,
            x = 1,
            y = 6,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39391,
            x = 3,
            y = 6,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39588,
            x = 5,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39426,
            x = 3,
            y = 7,
            connections = {
                1, 2, 3, 
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SKYHORN_TRIBE,
            aside = true,
            x = 1,
            y = 8,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39456,
            aside = true,
            x = 3,
            y = 8,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SECRETS_OF_HIGHMOUNTAIN,
            aside = true,
            x = 5,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SNOWBLIND_MESA,
            aside = true,
            x = 3,
            y = 9,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_HULNS_WAR] = {
    name = GetAchievementCriteriaInfo(10059, 5),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND,
        },
    },
    completed = {
        type = "quest",
        id = 39992,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40515,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40167,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40520,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39983,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40112,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39988,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39990,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40388,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39992,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SECRETS_OF_HIGHMOUNTAIN,
            aside = true,
            x = 3,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SECRETS_OF_HIGHMOUNTAIN] = {
    name = GetAchievementCriteriaInfo(10059, 6),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_HULNS_WAR,
        },
    },
    completed = {
        type = "quest",
        id = 39579,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_HULNS_WAR,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38916,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39575,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40219,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39578,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39577,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39579,
            x = 3,
            y = 6,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SKYHORN_TRIBE,
            aside = true,
            x = 1,
            y = 7,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39580,
            aside = true,
            x = 3,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_BLOODTOTEM_TRIBE,
            aside = true,
            x = 5,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SNOWBLIND_MESA,
            aside = true,
            x = 3,
            y = 8,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SNOWBLIND_MESA] = {
    name = GetAchievementCriteriaInfo(10059, 7),
    category = BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_BLOODTOTEM_TRIBE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SKYHORN_TRIBE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SECRETS_OF_HIGHMOUNTAIN,
        },
    },
    completed = {
        type = "quest",
        id = 39780,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 38915,
            x = 3,
            y = 0,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 39777,
            x = 1,
            y = 1,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39776,
            x = 3,
            y = 1,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39862,
            x = 5,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42088,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42512,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40594,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39780,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39781,
            aside = true,
            x = 3,
            y = 6,
        },
    }
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_HIGHMOUNTAIN] = {
    name = GetMapNameByID(1024),
    expansion = BTWQUESTS_EXPANSION_LEGION,
    buttonImage = 1411854,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERMANE_TRIBE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERBEND,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SKYHORN_TRIBE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_BLOODTOTEM_TRIBE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_HULNS_WAR,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SECRETS_OF_HIGHMOUNTAIN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_SNOWBLIND_MESA,
        },
    },
}