BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_ELEMENTAL] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(262)), "The Fist of Ra-den"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        },
    },
    completed = {
        type = "quest",
        id = 39771,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Shaman-Elemental",
    items = {
        {
            type = "quest",
            id = 43334,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43338,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39771,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_ENHANCEMENT] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(263)), "Doomhammer"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        },
    },
    completed = {
        type = "quest",
        id = 40224,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Shaman-Enhancement",
    items = {
        {
            type = "quest",
            id = 42931,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42932,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42933,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42935,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42936,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42937,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40224,
            x = 3,
            y = 6,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_RESTORATION] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(264)), "Sharas'dal, Scepter of Tides"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        },
    },
    completed = {
        type = "quest",
        id = 40341,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Shaman-Restoration",
    items = {
        {
            type = "quest",
            id = 43644,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43645,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40341,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_CAMPAIGN] = {
    name = BTWQUESTS_SHAMAN_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        },
    },
    completed = {
        type = "quest",
        id = 41888,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 39746,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41335,
            x = 3,
            y = 1,
            connections = {
                1, 2, 3,
                4, 5, 6
            },
        },
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_ELEMENTAL,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(41329) or BtWQuests_IsQuestCompleted(41328) or BtWQuests_IsQuestCompleted(41330))
            end,
            breadcrumb = true,
            x = 1,
            y = 2,
            connections = {
                6
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_ENHANCEMENT,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(41329) or BtWQuests_IsQuestCompleted(41328) or BtWQuests_IsQuestCompleted(41330))
            end,
            breadcrumb = true,
            x = 3,
            y = 2,
            connections = {
                5
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_RESTORATION,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(41329) or BtWQuests_IsQuestCompleted(41328) or BtWQuests_IsQuestCompleted(41330))
            end,
            breadcrumb = true,
            x = 5,
            y = 2,
            connections = {
                4
            },
        },
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_ELEMENTAL,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(41329)
            end,
            breadcrumb = true,
            x = 3,
            y = 2,
            connections = {
                3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_ENHANCEMENT,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(41328)
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_RESTORATION,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(41330)
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
            id = 40225,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40276,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41510,
            x = 3,
            y = 5,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 101,
            x = 5,
            y = 5.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44544,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42188,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42114,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42383,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42141,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42142,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41741,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41740,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42184,
            x = 3,
            y = 14,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 103,
            x = 5,
            y = 14.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42977,
            x = 3,
            y = 15,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43002,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41770,
            x = 3,
            y = 17,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41771,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41776,
            x = 3,
            y = 19,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41901,
            x = 3,
            y = 20,
            connections = {
                1, 2, 3, 4, 5
            },
        },
        
        
        {
            type = "quest",
            id = 41742,
            x = 1,
            y = 20,
        },
        {
            type = "quest",
            id = 41743,
            x = 5,
            y = 20,
        },
        
        
        {
            type = "quest",
            id = 44465,
            x = 1,
            y = 21,
        },
        {
            type = "quest",
            id = 42986,
            x = 5,
            y = 21,
        },
        {
            type = "quest",
            id = 42996,
            x = 3,
            y = 21,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42983,
            x = 3,
            y = 22,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42984,
            x = 3,
            y = 23,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42200,
            x = 3,
            y = 24,
            connections = {
                2
            },
        },
        
        
        
        {
            type = "level",
            level = 110,
            x = 5,
            y = 24.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41775,
            x = 3,
            y = 25,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42068,
            x = 3,
            y = 26,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 41777,
            x = 2,
            y = 27,
            connections = {
                2, 3
            },
        },
        {
            type = "quest",
            id = 41897,
            x = 4,
            y = 27,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 41898,
            x = 2,
            y = 28,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 41899,
            x = 4,
            y = 28,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 42065,
            x = 3,
            y = 29,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41900,
            x = 3,
            y = 30,
            connections = {
                1, 2, 3, 4, 5
            },
        },
        
        
        {
            type = "quest",
            id = 41746,
            x = 1,
            y = 30,
        },
        {
            type = "quest",
            id = 41747,
            x = 5,
            y = 30,
        },
        
        
        {
            type = "quest",
            id = 42988,
            x = 1,
            y = 31,
        },
        {
            type = "quest",
            id = 42997,
            x = 3,
            y = 31,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42208,
            x = 5,
            y = 31,
        },
        {
            type = "quest",
            id = 42989,
            x = 3,
            y = 32,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42995,
            x = 3,
            y = 33,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43003,
            x = 3,
            y = 34,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42990,
            x = 3,
            y = 35,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 41772,
            x = 3,
            y = 36,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41773,
            x = 3,
            y = 37,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41934,
            x = 3,
            y = 38,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41888,
            x = 3,
            y = 39,
            connections = {
                1, 2, 3
            },
        },
        
        
        {
            type = "quest",
            id = 41744,
            aside = true,
            x = 1,
            y = 40,
        },
        {
            type = "quest",
            id = 43418,
            aside = true,
            x = 3,
            y = 40,
        },
        {
            type = "quest",
            id = 41745,
            aside = true,
            x = 5,
            y = 40,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_FOLLOWER] = {
    name = BtWQuests_GetQuestName(46057),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        },
    },
    completed = {
        type = "quest",
        id = 46057,
    },
    range = {98, 110},
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
            id = 45652,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45706,
            x = 3,
            y = 2,
            connections = {
                1, 2, 3
            },
        },
        
        
        {
            type = "quest",
            id = 45723,
            x = 1,
            y = 3,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 45725,
            x = 3,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45724,
            x = 5,
            y = 3,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 44800,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45763,
            x = 3,
            y = 5,
            connections = {
                1, 2, 3
            },
        },
        
        
        {
            type = "quest",
            id = 45971,
            x = 1,
            y = 6,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 45767,
            x = 3,
            y = 6,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45765,
            x = 5,
            y = 6,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 45883,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45769,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46258,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46057,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            aside = true,
            x = 3,
            y = 11,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_MOUNT] = {
    name = BTWQUESTS_SHAMAN_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        },
    },
    completed = {
        type = "quest",
        id = 46792,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 46791,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46792,
            x = 3,
            y = 1,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN] = {
    name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_SHAMAN,
        }
    },
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_MOUNT,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN,
})