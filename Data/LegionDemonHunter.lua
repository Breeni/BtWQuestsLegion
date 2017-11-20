BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_HAVOC] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(577)), "Twinblades of the Deceiver"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 41119,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-DemonHunter-Havoc",
    items = {
        {
            type = "quest",
            id = 41120,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41121,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41119,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_VENGEANCE] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(581)), "Aldrachi Warblades"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 40249,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-DemonHunter-Vengeance",
    items = {
        {
            type = "quest",
            id = 40247,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41804,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41806,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41807,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40249,
            x = 3,
            y = 4,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_CAMPAIGN] = {
    name = BTWQUESTS_DEMONHUNTER_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEMONHUNTER,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 40740,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39261,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40814,
            x = 3,
            y = 1,
            connections = {
                1, 2,
                3, 4
            },
        },
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_HAVOC,
            visible = function (self)
                return not (IsQuestFlaggedCompleted(40817) or IsQuestFlaggedCompleted(40818))
            end,
            breadcrumb = true,
            x = 2,
            y = 2,
            connections = {
                4
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_VENGEANCE,
            visible = function (self)
                return not (IsQuestFlaggedCompleted(40817) or IsQuestFlaggedCompleted(40818))
            end,
            breadcrumb = true,
            x = 4,
            y = 2,
            connections = {
                3
            },
        },
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_HAVOC,
            visible = function (self)
                return IsQuestFlaggedCompleted(40817)
            end,
            breadcrumb = true,
            x = 3,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_VENGEANCE,
            visible = function (self)
                return IsQuestFlaggedCompleted(40818)
            end,
            breadcrumb = true,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42869,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42872,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41033,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41037,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41062,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41064,
            x = 3,
            y = 8,
            connections = {
                2
            },
        },
        {
            type = "level",
            level = 101,
            x = 5,
            y = 8.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44087,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42671,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42677,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42679,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42681,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42683,
            x = 3,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42682,
            x = 3,
            y = 15,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 103,
            x = 5,
            y = 15.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37447,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42510,
            x = 3,
            y = 17,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42522,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42593,
            x = 3,
            y = 19,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42594,
            x = 3,
            y = 20,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42921,
            x = 3,
            y = 21,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42665,
            x = 3,
            y = 22,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42131,
            x = 3,
            y = 23,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42731,
            x = 3,
            y = 24,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42801,
            x = 3,
            y = 25,
            connections = {
                2
            },
        },
        
        
        
        {
            type = "level",
            level = 110,
            x = 5,
            y = 25.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42787,
            x = 3,
            y = 26,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42735,
            x = 3,
            y = 27,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42736,
            x = 3,
            y = 28,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 42737,
            x = 1,
            y = 29,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 42739,
            x = 3,
            y = 29,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42738,
            x = 5,
            y = 29,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42749,
            x = 3,
            y = 30,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42752,
            x = 3,
            y = 31,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42775,
            x = 3,
            y = 32,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42776,
            x = 3,
            y = 33,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42669,
            x = 3,
            y = 34,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42802,
            x = 3,
            y = 35,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42808,
            x = 3,
            y = 36,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44213,
            x = 3,
            y = 38,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44694,
            x = 3,
            y = 39,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42733,
            x = 3,
            y = 40,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44616,
            x = 3,
            y = 41,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42732,
            x = 3,
            y = 42,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42754,
            x = 3,
            y = 43,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42810,
            x = 3,
            y = 44,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42920,
            x = 3,
            y = 45,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42132,
            x = 3,
            y = 46,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43186,
            x = 3,
            y = 47,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44214,
            x = 2,
            y = 48,
        },
        {
            type = "quest",
            id = 43412,
            x = 4,
            y = 48,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_FOLLOWER] = {
    name = BtWQuests_GetQuestName(45391),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEMONHUNTER,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 45391,
    },
    range = {110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            breadcrumb = true,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46159,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45301,
            x = 3,
            y = 2,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 45330,
            x = 2,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45329,
            x = 4,
            y = 3,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 45339,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45385,
            x = 3,
            y = 5,
            connections = {
                1, 2, 3
            },
        },
        
        
        {
            type = "quest",
            id = 45764,
            x = 1,
            y = 6,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 46725,
            x = 3,
            y = 6,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45798,
            x = 5,
            y = 6,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 46266,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45391,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            aside = true,
            x = 3,
            y = 9,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_MOUNT] = {
    name = BTWQUESTS_DEMONHUNTER_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEMONHUNTER,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
        },
    },
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
        },
    },
    completed = {
        type = "quest",
        id = 46334,
    },
    range = {110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46334,
            x = 3,
            y = 1,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_DEMONHUNTER] = {
    name = LOCALIZED_CLASS_NAMES_MALE["DEMONHUNTER"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
        }
    },
    -- buttonImage = 1041999,
    items = {
        -- BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_HAVOC,
        -- BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_VENGEANCE,
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_MOUNT,
        },
    },
}
