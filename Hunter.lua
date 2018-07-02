BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_BEASTMASTERY] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(253)), "Titanstrike"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 42158,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Hunter-BeastMastery",
    items = {
        {
            type = "quest",
            id = 41541,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41574,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42158,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_MARKSMANSHIP] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(254)), "Thas'dorah, Legacy of the Windrunners"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 40419,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Hunter-Marksmanship",
    items = {
        {
            type = "quest",
            id = 42185,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41540,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40392,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40419,
            x = 3,
            y = 3,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_SURVIVAL] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(255)), "Talonclaw"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 40385,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Hunter-Survival",
    items = {
        {
            type = "quest",
            id = 41542,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39427,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40385,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_CAMPAIGN] = {
    name = BTWQUESTS_HUNTER_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 42659,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 40384,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41415,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40618,
            x = 3,
            y = 2,
            connections = {
                1, 2, 3,
                7, 8, 9
            },
        },
        
        
        
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_BEASTMASTERY,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40621) or BtWQuests_IsQuestCompleted(40620) or BtWQuests_IsQuestCompleted(40619))
            end,
            breadcrumb = true,
            x = 1,
            y = 3,
            connections = {
                3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_MARKSMANSHIP,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40621) or BtWQuests_IsQuestCompleted(40620) or BtWQuests_IsQuestCompleted(40619))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_SURVIVAL,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40621) or BtWQuests_IsQuestCompleted(40620) or BtWQuests_IsQuestCompleted(40619))
            end,
            breadcrumb = true,
            x = 5,
            y = 3,
            connections = {
                3
            },
        },
        
        {
            type = "quest",
            id = 41009,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40621) or BtWQuests_IsQuestCompleted(40620) or BtWQuests_IsQuestCompleted(40619))
            end,
            x = 1,
            y = 4,
            connections = {
                9
            },
        },
        {
            type = "quest",
            id = 40952,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40621) or BtWQuests_IsQuestCompleted(40620) or BtWQuests_IsQuestCompleted(40619))
            end,
            x = 3,
            y = 4,
            connections = {
                8
            },
        },
        {
            type = "quest",
            id = 41008,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40621) or BtWQuests_IsQuestCompleted(40620) or BtWQuests_IsQuestCompleted(40619))
            end,
            x = 5,
            y = 4,
            connections = {
                7
            },
        },
        
        
        
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_BEASTMASTERY,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40621)
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_MARKSMANSHIP,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40620)
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_SURVIVAL,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40619)
            end,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                3
            },
        },
        
        {
            type = "quest",
            id = 41009,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40621)
            end,
            x = 3,
            y = 4,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 40952,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40620)
            end,
            x = 3,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 41008,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40619)
            end,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        
        
        
        
        
        {
            type = "quest",
            id = 40953,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40954,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40955,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 41053,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41047,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40958,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40959,
            x = 3,
            y = 11,
            connections = {
                2
            },
        },
        
        
        
        {
            type = "level",
            level = 101,
            x = 5,
            y = 11.5,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 44090,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42519,
            x = 3,
            y = 13,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 40957,
            x = 2,
            y = 14,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42409,
            x = 4,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42523,
            x = 3,
            y = 15,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42524,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42525,
            x = 3,
            y = 17,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42526,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42384,
            x = 3,
            y = 19,
            connections = {
                2
            },
        },
        
        
        
        {
            type = "level",
            level = 103,
            x = 5,
            y = 19.5,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 42134,
            x = 3,
            y = 20,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42385,
            x = 3,
            y = 21,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 42386,
            x = 2,
            y = 22,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42387,
            x = 4,
            y = 22,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42388,
            x = 3,
            y = 23,
            connections = {
                1, 5
            },
        },
        
        
        {
            type = "quest",
            id = 42389,
            x = 3,
            y = 24,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42391,
            x = 3,
            y = 25,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42411,
            x = 3,
            y = 26,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42393,
            x = 3,
            y = 27,
            connections = {
                5
            },
        },
        
        
        {
            type = "quest",
            id = 42390,
            x = 5,
            y = 24,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43335,
            x = 5,
            y = 25,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42392,
            x = 5,
            y = 26,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42410,
            x = 5,
            y = 27,
        },
        
        
        {
            type = "quest",
            id = 42395,
            x = 3,
            y = 28,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 42394,
            x = 2,
            y = 29,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 42436,
            x = 4,
            y = 29,
            connections = {
                2
            },
        },
        
        
        
        {
            type = "level",
            level = 110,
            x = 6,
            y = 29.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42403,
            x = 3,
            y = 30,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 42413,
            x = 2,
            y = 31,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42414,
            x = 4,
            y = 31,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42397,
            x = 3,
            y = 32,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42398,
            x = 3,
            y = 33,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42412,
            x = 3,
            y = 34,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42399,
            x = 3,
            y = 35,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42400,
            x = 3,
            y = 36,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42401,
            x = 3,
            y = 37,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42404,
            x = 3,
            y = 38,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42689,
            x = 3,
            y = 39,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42691,
            x = 3,
            y = 40,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42406,
            x = 3,
            y = 41,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42407,
            x = 3,
            y = 42,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42402,
            x = 3,
            y = 43,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42405,
            x = 3,
            y = 44,
            connections = {
                1, 2, 3, 4
            },
        },
        
        
        {
            type = "quest",
            id = 42408,
            x = 0,
            y = 45,
        },
        {
            type = "quest",
            id = 43182,
            x = 2,
            y = 45,
        },
        {
            type = "quest",
            id = 42654,
            x = 4,
            y = 45,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42655,
            x = 6,
            y = 45,
        },
        
        
        {
            type = "quest",
            id = 42656,
            x = 3,
            y = 46,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42657,
            x = 3,
            y = 47,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42658,
            x = 3,
            y = 48,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42133,
            x = 3,
            y = 49,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 44680,
            x = 3,
            y = 50,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42659,
            x = 3,
            y = 51,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42415,
            x = 3,
            y = 52,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43423,
            x = 3,
            y = 53,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_FOLLOWER] = {
    name = BtWQuests_GetQuestName(46048),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 46048,
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
            id = 45551,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45552,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45553,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45554,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45555,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45556,
            x = 3,
            y = 6,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 45557,
            x = 2,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 46060,
            x = 4,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46235,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46048,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            breadcrumb = true,
            x = 3,
            y = 10,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_MOUNT] = {
    name = BTWQUESTS_HUNTER_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
        },
    },
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        },
    },
    completed = {
        type = "quest",
        id = 46337,
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
            id = 46336,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46337,
            x = 3,
            y = 2,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER] = {
    name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_HUNTER,
        }
    },
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_MOUNT,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER,
})