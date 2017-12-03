BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_ALLIANCE] = {
    name = GetAchievementCriteriaInfo(10790, 1),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    completed = {
        type = "quest",
        id = 39800,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39735,
            visible = {
                {
                    type = "quest",
                    id = 39864,
                    active = false,
                }
            },
            x = 3,
            y = 0,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39864,
            visible = {
                {
                    type = "quest",
                    id = 39864,
                    active = true,
                }
            },
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
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_ALLIANCE,
            aside = true,
            x = 3,
            y = 4,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_ALLIANCE] = {
    name = GetAchievementCriteriaInfo(10790, 2),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisite = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_ALLIANCE,
        },
    },
    completed = {
        type = "quest",
        id = 38060,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_ALLIANCE,
            x = 3,
            y = 0,
            connections = {
                1, 2, 3, 4
            }
        },
        {
            type = "quest",
            id = 38036,
            aside = true,
            x = 0,
            y = 1,
        },
        {
            type = "quest",
            id = 38052,
            x = 2,
            y = 1,
            connections = {
                3, 4
            },
        },
        {
            type = "quest",
            id = 38053,
            x = 4,
            y = 1,
            connections = {
                2, 3
            },
        },
        {
            type = "quest",
            id = 38558,
            x = 6,
            y = 1,
            connections = {
                1, 2
            },
        },

        
        {
            type = "quest",
            id = 38057,
            aside = true,
            x = 2,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38058,
            x = 4,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38059,
            aside = true,
            x = 2,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38060,
            x = 4,
            y = 3,
            connections = {
                1
            },
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_HORDE] = {
    name = GetAchievementCriteriaInfo(10790, 1),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "faction",
            faction = "Horde",
        },
    },
    completed = {
        type = "quest",
        id = 39800,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39864,
            visible = {
                {
                    type = "quest",
                    id = 44701,
                    active = false,
                }
            },
            x = 3,
            y = 0,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 44701,
            visible = {
                {
                    type = "quest",
                    id = 44701,
                    active = true,
                }
            },
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38307,
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
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_HORDE,
            aside = true,
            x = 3,
            y = 4,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_HORDE] = {
    name = GetAchievementCriteriaInfo(10790, 2),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "faction",
            faction = "Horde",
        },
    },
    prerequisite = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_HORDE,
        },
    },
    completed = {
        type = "quest",
        id = 40419,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_HORDE,
            x = 3,
            y = 0,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_MIGHT] = {
    name = GetAchievementCriteriaInfo(10790, 3),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 38210,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
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
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_ALLIANCE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_ALLIANCE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT_HORDE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_HORDE,
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
