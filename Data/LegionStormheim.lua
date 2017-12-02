BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT] = {
    name = GetAchievementCriteriaInfo(10790, 1),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 39800,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39735,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38035,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38206,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39800,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH,
            breadcrumb = true,
            x = 3,
            y = 4,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH] = {
    name = GetAchievementCriteriaInfo(10790, 2),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_MIGHT] = {
    name = GetAchievementCriteriaInfo(10790, 3),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_WILL] = {
    name = GetAchievementCriteriaInfo(10790, 4),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_VALOR] = {
    name = GetAchievementCriteriaInfo(10790, 5),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK] = {
    name = GetAchievementCriteriaInfo(10790, 6),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_SECRETS_OF_THE_SHIELDMAIDENS] = {
    name = GetAchievementCriteriaInfo(10790, 7),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_CHAMPION_OF_STORMHEIM] = {
    name = GetAchievementCriteriaInfo(10790, 8),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
    }
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_STORMHEIM] = {
    name = GetMapNameByID(1017),
    expansion = BTWQUESTS_EXPANSION_LEGION,
    buttonImage = 1537284,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_MIGHT,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_WILL,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_VALOR,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_SECRETS_OF_THE_SHIELDMAIDENS,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_CHAMPION_OF_STORMHEIM,
        },
    }
}
