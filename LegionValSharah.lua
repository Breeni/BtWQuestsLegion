BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION] = {
    name = BTWQUESTS_INTRODUCTION,
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 38384,
    },
    items = {
        {
            type = "quest",
            id = 39731,
            x = 3,
            y = 0,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 39861,
            x = 3,
            y = 1,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 38305,
            x = 3,
            y = 2,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 38384,
            x = 3,
            y = 3,
            connections = {
                1, 2, 3
            }, 
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_VALE,
            x = 1,
            y = 4,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW,
            x = 3,
            y = 4,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE,
            x = 5,
            y = 4,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_VALE] = {
    name = GetAchievementCriteriaInfo(10698, 1),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), BTWQUESTS_INTRODUCTION),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
        },
    },
    completed = {
        type = "quest",
        id = 40573,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38382,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39383,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39384,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40573,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
            x = 3,
            y = 5,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW] = {
    name = GetAchievementCriteriaInfo(10698, 2),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), BTWQUESTS_INTRODUCTION),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
        },
    },
    completed = {
        type = "quest",
        id = 38147,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38142,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38455,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38922,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38246,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38146,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38143,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38145,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38144,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38147,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
            x = 3,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE] = {
    name = GetAchievementCriteriaInfo(10698, 3),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), BTWQUESTS_INTRODUCTION),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
        },
    },
    completed = {
        type = "quest",
        id = 38225,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38381,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38235,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38225,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
            x = 3,
            y = 4,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE] = {
    name = GetAchievementCriteriaInfo(10698, 4),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), GetAchievementCriteriaInfo(10698, 1)),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_VALE,
        },
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), GetAchievementCriteriaInfo(10698, 2)),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW,
        },
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), GetAchievementCriteriaInfo(10698, 3)),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE,
        },
    },
    completed = {
        type = "quest",
        id = 38753,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_VALE,
            x = 1,
            y = 0,
            connections = {
                3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW,
            x = 3,
            y = 0,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE,
            x = 5,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38148,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38377,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38641,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38662,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38655,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38663,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38595,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38582,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38753,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG,
            x = 3,
            y = 10,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG] = {
    name = GetAchievementCriteriaInfo(10698, 5),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), GetAchievementCriteriaInfo(10698, 4)),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG,
        },
    },
    completed = {
        type = "quest",
        id = 38743,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41056,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41707,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38671,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41708,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43576,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41724,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38684,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41893,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43702,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38687,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38743,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40567,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40890,
            x = 3,
            y = 13,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_BRADENSBROOK] = {
    name = GetAchievementCriteriaInfo(10698, 6),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), GetAchievementCriteriaInfo(10698, 4)),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
        },
    },
    completed = {
        type = "quest",
        id = 38691,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38643,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38645,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38644,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38647,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38646,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39117,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38691,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_BLACK_ROOK_HOLD,
            x = 3,
            y = 8,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_VALSHARAH_BLACK_ROOK_HOLD] = {
    name = GetAchievementCriteriaInfo(10698, 7),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1018), GetAchievementCriteriaInfo(10698, 6)),
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_BRADENSBROOK,
        },
    },
    completed = {
        type = "quest",
        id = 38721,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_BRADENSBROOK,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38718,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38714,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38715,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38717,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38724,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38719,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38721,
            x = 3,
            y = 7,
        },
    }
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_VALSHARAH] = {
    name = GetMapNameByID(1018),
    expansion = BTWQUESTS_EXPANSION_LEGION,
    buttonImage = 1452687,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_VALE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_BRADENSBROOK,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_BLACK_ROOK_HOLD,
        },
    },
}
