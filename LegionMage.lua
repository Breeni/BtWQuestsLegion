BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_ARCANE] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(62)), "Aluneth"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        },
    },
    completed = {
        type = "quest",
        id = 42011,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Mage-Arcane",
    items = {
        {
            type = "quest",
            id = 42001,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42006,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42007,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42008,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42009,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42010,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42011,
            x = 3,
            y = 6,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FIRE] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(63)), "Felo'melorn"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        },
    },
    completed = {
        type = "quest",
        id = 11997,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Mage-Fire",
    items = {
        {
            type = "quest",
            id = 40267,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40270,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 11997,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FROST] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(64)), "Ebonchill"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        },
    },
    completed = {
        type = "quest",
        id = 42479,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Mage-Frost",
    items = {
        {
            type = "quest",
            id = 42452,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42455,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42476,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42477,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42479,
            x = 3,
            y = 4,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_CAMPAIGN] = {
    name = BTWQUESTS_MAGE_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        },
    },
    completed = {
        type = "quest",
        id = 42734,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 41035,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41036,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41085,
            x = 3,
            y = 2,
            connections = {
                1, 2, 3,
                4, 5, 6
            },
        },
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_ARCANE,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(41079) or BtWQuests_IsQuestCompleted(41080) or BtWQuests_IsQuestCompleted(41081))
            end,
            breadcrumb = true,
            x = 1,
            y = 3,
            connections = {
                6
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FIRE,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(41079) or BtWQuests_IsQuestCompleted(41080) or BtWQuests_IsQuestCompleted(41081))
            end,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                5
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FROST,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(41079) or BtWQuests_IsQuestCompleted(41080) or BtWQuests_IsQuestCompleted(41081))
            end,
            breadcrumb = true,
            x = 5,
            y = 3,
            connections = {
                4
            },
        },
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_ARCANE,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(41079)
            end,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FIRE,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(41080)
            end,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FROST,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(41081)
            end,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 41114,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41125,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41112,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41113,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41124,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41141,
            x = 3,
            y = 9,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 101,
            x = 5,
            y = 9.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42663,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42703,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42126,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42127,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42696,
            x = 3,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42433,
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
            id = 42418,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42434,
            x = 3,
            y = 17,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42435,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42166,
            x = 3,
            y = 19,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 42206,
            x = 2,
            y = 20,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42149,
            x = 4,
            y = 20,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42171,
            x = 3,
            y = 21,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42222,
            x = 3,
            y = 22,
            connections = {
                1, 2, 3, 4
            },
        },
        
        
        {
            type = "quest",
            id = 42706,
            x = 0,
            y = 23,
        },
        {
            type = "quest",
            id = 44098,
            x = 2,
            y = 23,
        },
        {
            type = "quest",
            id = 42416,
            x = 4,
            y = 23,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42705,
            x = 6,
            y = 23,
        },
        
        {
            type = "quest",
            id = 42423,
            x = 3,
            y = 24,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42424,
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
                1, 2
            },
        },
        {
            type = "quest",
            id = 42451,
            x = 3,
            y = 26,
            connections = {
                6
            },
        },
        
        
        {
            type = "quest",
            id = 42954,
            aside = true,
            x = 5,
            y = 27,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42955,
            aside = true,
            x = 5,
            y = 28,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42956,
            aside = true,
            x = 5,
            y = 29,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42959,
            aside = true,
            x = 5,
            y = 30,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42704,
            aside = true,
            x = 5,
            y = 31,
        },
        
        
        
        {
            type = "quest",
            id = 42508,
            x = 3,
            y = 27,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 42494,
            aside = true,
            x = 1,
            y = 28,
        },
        {
            type = "quest",
            id = 42521,
            x = 3,
            y = 28,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42493,
            x = 3,
            y = 29,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42520,
            x = 3,
            y = 30,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 42702,
            aside = true,
            x = 1,
            y = 30,
        },
        {
            type = "quest",
            id = 42707,
            x = 1,
            y = 31,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42940,
            x = 3,
            y = 31,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44689,
            x = 3,
            y = 32,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42734,
            x = 3,
            y = 33,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 42917,
            aside = true,
            x = 1,
            y = 34,
        },
        {
            type = "quest",
            id = 42914,
            x = 5,
            y = 34,
        },
        {
            type = "quest",
            id = 43415,
            aside = true,
            x = 3,
            y = 34,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FOLLOWER] = {
    name = BtWQuests_GetQuestName(46043),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        },
    },
    completed = {
        type = "quest",
        id = 46043,
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
            id = 45437,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44766,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46335,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46338,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45207,
            x = 3,
            y = 5,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 46705,
            x = 2,
            y = 6,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 46339,
            x = 4,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46345,
            x = 3,
            y = 7,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44768,
            x = 2,
            y = 8,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 44770,
            x = 4,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46351,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45251,
            x = 3,
            y = 10,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 45614,
            x = 2,
            y = 11,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45586,
            x = 4,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46000,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46290,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46043,
            x = 3,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            aside = true,
            x = 3,
            y = 15,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_ANNOYING_FOLLOWER] = {
    name = BtWQuests_GetQuestName(46724),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        },
    },
    completed = {
        type = "quest",
        id = 46724,
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
            id = 45615,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45630,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46722,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46723,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46724,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_MOUNT] = {
    name = BTWQUESTS_MAGE_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
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
        id = 45354,
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
            id = 45844,
            x = 3,
            y = 1,
            connections = {
                1, 2, 3
            },
        },
        
        {
            type = "quest",
            id = 45845,
            x = 1,
            y = 2,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 45846,
            x = 3,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45847,
            x = 5,
            y = 2,
            connections = {
                1
            },
        },
        
        {
            type = "quest",
            id = 45354,
            x = 3,
            y = 3,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE] = {
    name = LOCALIZED_CLASS_NAMES_MALE["MAGE"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MAGE,
        }
    },
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_ANNOYING_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_MOUNT,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
})