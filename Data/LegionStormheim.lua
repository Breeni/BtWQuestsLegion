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
    prerequisites = {
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
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_MIGHT,
            x = 3,
            y = 4,
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
        id = 39801,
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
            id = 39698,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39801,
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
    prerequisites = {
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
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_ALLIANCE,
        },
    },
    completed = {
        type = "quest",
        id = 39597,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_ALLIANCE,
            x = 3,
            y = 0,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_AFTERMATH_HORDE,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38210,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38331,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39590,
            x = 3,
            y = 3,
            connections = {
                3, 4, 5
            },
        },
        {
            name = BTWQUESTS_KILL_CHAMPIONS,
            breadcrumb = true,
            aside = true,
            x = 1,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39595,
            aside = true,
            x = 1,
            y = 3,
        },


        {
            type = "quest",
            id = 39591,
            x = 1,
            y = 4,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39592,
            x = 3,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39593,
            x = 5,
            y = 4,
            connections = {
                1
            },
        },
        
        {
            type = "quest",
            id = 39594,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39597,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_WILL,
            x = 3,
            y = 7,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_WILL] = {
    name = GetAchievementCriteriaInfo(10790, 4),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_MIGHT,
        },
    },
    completed = {
        type = "quest",
        id = 38624,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_MIGHT,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38473,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38312,
            x = 3,
            y = 2,
            connections = {
                3, 4
            },
        },
        {
            name = BTWQUESTS_KILL_DRAGONS,
            breadcrumb = true,
            aside = true,
            x = 1,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38337,
            aside = true,
            x = 1,
            y = 4,
        },
        {
            type = "quest",
            id = 38405,
            x = 3,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38318,
            aside = true,
            x = 5,
            y = 3,
        },
        {
            type = "quest",
            id = 38410,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38342,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38412,
            x = 3,
            y = 6,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 38413,
            x = 1,
            y = 7,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 38414,
            x = 3,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 40568,
            x = 5,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39652,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38624,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_VALOR,
            x = 3,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_VALOR] = {
    name = GetAchievementCriteriaInfo(10790, 5),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_WILL,
        },
    },
    completed = {
        type = "quest",
        id = 38818,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_WILL,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39803,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39804,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39796,
            x = 3,
            y = 3,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 38778,
            x = 2,
            y = 4,
            connections = {
                2, 3
            },
        },
        {
            type = "quest",
            id = 39788,
            x = 4,
            y = 4,
            connections = {
                1, 2
            },
        },

        
        {
            type = "quest",
            id = 38808,
            x = 2,
            y = 5,
            connections = {
                2, 3
            },
        },
        {
            type = "quest",
            id = 38810,
            x = 4,
            y = 5,
            connections = {
                1, 2
            },
        },

        
        {
            type = "quest",
            id = 38811,
            x = 2,
            y = 6,
            connections = {
                2, 3, 4
            },
        },
        {
            type = "quest",
            id = 39791,
            x = 4,
            y = 6,
            connections = {
                1, 2, 3
            },
        },


        {
            type = "quest",
            id = 38823,
            x = 1,
            y = 7,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 38817,
            x = 3,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38816,
            x = 5,
            y = 7,
            connections = {
                1
            },
        },
        
        {
            type = "quest",
            id = 38815,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38818,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK,
            x = 3,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK] = {
    name = GetAchievementCriteriaInfo(10790, 6),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_VALOR,
        },
    },
    completed = {
        type = "quest",
        id = 39855,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_TRIAL_OF_VALOR,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39837,
            x = 3,
            y = 1,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 38339,
            x = 2,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38324,
            x = 4,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38347,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39848,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39857,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39849,
            x = 3,
            y = 6,
            connections = {
                1, 2
            },
        },


        {
            type = "quest",
            id = 39850,
            x = 2,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39851,
            x = 4,
            y = 7,
            connections = {
                1
            },
        },

        
        {
            type = "quest",
            id = 39853,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39855,
            x = 3,
            y = 9,
            connections = {
                1, 2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_SECRETS_OF_THE_SHIELDMAIDENS,
            aside = true,
            x = 2,
            y = 10,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_CHAMPION_OF_STORMHEIM,
            aside = true,
            x = 4,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_SECRETS_OF_THE_SHIELDMAIDENS] = {
    name = GetAchievementCriteriaInfo(10790, 7),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK,
        },
    },
    completed = {
        type = "quest",
        id = 39122,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39059,
            x = 3,
            y = 1,
            connections = {
                1, 2
            },
        },

        
        {
            type = "quest",
            id = 39060,
            x = 2,
            y = 2,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 39061,
            x = 4,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 39472,
            x = 6,
            y = 2,
        },

        
        {
            type = "quest",
            id = 39062,
            x = 3,
            y = 3,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 39405,
            aside = true,
            x = 2,
            y = 4,
        },
        {
            type = "quest",
            id = 39063,
            x = 4,
            y = 4,
            connections = {
                1
            },
        },

        
        {
            type = "quest",
            id = 39092,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39122,
            x = 3,
            y = 6,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_STORMHEIM_THE_CHAMPION_OF_STORMHEIM] = {
    name = GetAchievementCriteriaInfo(10790, 8),
    category = BTWQUESTS_CATEGORY_LEGION_STORMHEIM,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK,
        },
    },
    completed = {
        type = "quest",
        id = 40005,
    },
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_TO_HELHEIM_AND_BACK,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40078,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40001,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40002,
            x = 3,
            y = 3,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 40003,
            x = 2,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 40004,
            x = 4,
            y = 4,
            connections = {
                1
            },
        },


        {
            type = "quest",
            id = 40005,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40072,
            aside = true,
            x = 3,
            y = 6,
        },  
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
