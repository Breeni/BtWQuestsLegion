BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_AZSUNA_BEHINDENEMYLINES] = {
    name = GetAchievementCriteriaInfo(10763, 1),
    category = BTWQUESTS_CATEGORY_LEGION_AZSUNA,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 37449,
    },
    items = {
        {
            type = "quest",
            id = 38834,
            x = 3,
            y = 0,
            connections = {
                1, 2
            }, 
        },
        {
            type = "quest",
            id = 37658,
            x = 2,
            y = 1, 
            connections = {
                2
            }, 
        },
        {
            type = "quest",
            id = 37653,
            x = 4,
            y = 1,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37660,
            x = 3,
            y = 2,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 36920,
            x = 3,
            y = 3,
            connections = {
                1, 2, 3
            }, 
        },
        {
            type = "quest",
            id = 36811,
            x = 5,
            y = 3.25,
        },
        {
            type = "quest",
            id = 37450,
            x = 2,
            y = 4,
            connections = {
                2,
            }, 
        },
        {
            type = "quest",
            id = 37656,
            x = 4,
            y = 4,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37449,
            x = 3,
            y = 5,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 38443,
            x = 3,
            y = 6,
            connections = {
                1
            }, 
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_DEFENDINGAZUREWINGREPOSE,
            x = 3,
            y = 7,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_AZSUNA_DEFENDINGAZUREWINGREPOSE] = {
    name = GetAchievementCriteriaInfo(10763, 2),
    category = BTWQUESTS_CATEGORY_LEGION_AZSUNA,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            name = string.format("%s: %s", GetMapNameByID(1015), GetAchievementCriteriaInfo(10763, 1)),
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_BEHINDENEMYLINES,
        },
    },
    completed = {
        type = "quest",
        id = 42756,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_BEHINDENEMYLINES,
            x = 3,
            y = 0,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 38443,
            x = 3,
            y = 1,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37853,
            x = 3,
            y = 2,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37991,
            x = 3,
            y = 3,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 42271,
            x = 3,
            y = 4,
            connections = {
                1, 3
            }, 
        },
        {
            type = "quest",
            id = 37690,
            x = 5,
            y = 4.25,
            connections = {
                1
            }, 
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_AZSUNAVERSUSAZSHARA,
            x = 5.25,
            y = 5, 
        },
        {
            type = "quest",
            id = 37855,
            x = 3,
            y = 5,
            connections = {
                1, 2, 3
            }, 
        },
        {
            type = "quest",
            id = 37856,
            x = 1,
            y = 6,
            connections = {
                4
            }, 
        },
        {
            type = "quest",
            id = 37858,
            x = 3,
            y = 6,
            breadcrumb = true,
            connections = {
                2
            }, 
        },
        {
            type = "quest",
            id = 37859,
            x = 5,
            y = 6,
            connections = {
                2
            }, 
        },
        {
            type = "quest",
            id = 37957,
            x = 3,
            y = 7,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37857,
            x = 3,
            y = 8,
            connections = {
                1, 2, 3
            }, 
        },
        {
            type = "quest",
            id = 37960,
            x = 2,
            y = 9,
            connections = {
                3
            }, 
        },
        {
            type = "quest",
            id = 37959,
            x = 4,
            y = 9,
            connections = {
                3
            }, 
        },
        {
            type = "quest",
            id = 37963,
            x = 5,
            y = 8.25, 
        },
        {
            type = "quest",
            id = 37861,
            x = 2,
            y = 10,
            connections = {
                2
            }, 
        },
        {
            type = "quest",
            id = 37860,
            x = 4,
            y = 10,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37862,
            x = 3,
            y = 11,
            connections = {
                1, 2
            }, 
        },
        {
            type = "quest",
            id = 38014,
            x = 2,
            y = 12,
            connections = {
                2
            }, 
        },
        {
            type = "quest",
            id = 38015,
            x = 4,
            y = 12,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 42567,
            x = 3,
            y = 13,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 42756,
            x = 3,
            y = 14,
            connections = {
                1
            }, 
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ARTIFACT_BALANCEOFPOWER,
            x = 5,
            y = 14.25,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_AZSUNA_AZSUNAVERSUSAZSHARA] = {
    name = GetAchievementCriteriaInfo(10763, 3),
    category = BTWQUESTS_CATEGORY_LEGION_AZSUNA,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    prerequisites = {
        {
            type = "quest",
            id = 42271,
        },
    },
    completed = {
        type = "quest",
        id = 37470,
    },
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_DEFENDINGAZUREWINGREPOSE,
            x = 3,
            y = 0,
            breadcrumb = true,
            connections = {
                1
            }, 
        },
        {
            type = "quest",
            id = 37690,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37256,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37733,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37257,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37497,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37486,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37467,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37468,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37736,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37678,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37518,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42370,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42371,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37729,
            x = 3,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37730,
            x = 3,
            y = 15,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37469,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37530,
            x = 3,
            y = 17,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37470,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38286,
            x = 3,
            y = 19,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42213,
            x = 3,
            y = 20,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_AZSUNA_AGAINSTTHEGIANTS] = {
    name = GetAchievementCriteriaInfo(10763, 4),
    category = BTWQUESTS_CATEGORY_LEGION_AZSUNA,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 37566,
    },
    items = {
        {
            type = "quest",
            id = 38407,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37496,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37507,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37542,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37528,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37510,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37536,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37538,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37565,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37566,
            x = 3,
            y = 9,
        },
    }
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_AZSUNA_MAKRANA] = {
    name = GetAchievementCriteriaInfo(10763, 5),
    category = BTWQUESTS_CATEGORY_LEGION_AZSUNA,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 40794,
    },
    items = {
        {
            type = "quest",
            id = 38857,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37654,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37657,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37659,
            x = 3,
            y = 3,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 40794,
            x = 3,
            y = 4
        },
        {
            type = "quest",
            id = 42244,
            x = 3,
            y = 4
        },
    }
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_AZSUNA] = {
    name = GetMapNameByID(1015),
    expansion = BTWQUESTS_EXPANSION_LEGION,
    buttonImage = 1498157,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_BEHINDENEMYLINES,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_DEFENDINGAZUREWINGREPOSE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_AZSUNAVERSUSAZSHARA,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_AGAINSTTHEGIANTS,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_AZSUNA_MAKRANA,
        },
    },
}