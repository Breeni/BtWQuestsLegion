BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_BREWMASTER] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(268)), "Fu Zan, the Wanderer's Companion"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
        },
    },
    completed = {
        type = "quest",
        id = 42765,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Monk-Brewmaster",
    items = {
        {
            type = "quest",
            id = 42762,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42766,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42767,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42957,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42868,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42765,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_WINDWALKER] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(269)), "Fists of the Heavens"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
        },
    },
    completed = {
        type = "quest",
        id = 40570,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Monk-Windwalker",
    items = {
        {
            type = "quest",
            id = 40569,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40633,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40634,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40570,
            x = 3,
            y = 3,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_MISTWEAVER] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(270)), "Sheilun, Staff of the Mists"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
        },
    },
    completed = {
        type = "quest",
        id = 41003,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Monk-Mistweaver",
    items = {
        {
            type = "quest",
            id = 41003,
            x = 3,
            y = 0,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_CAMPAIGN] = {
    name = BTWQUESTS_MONK_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
        },
    },
    completed = {
        type = "quest",
        id = 41087,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 12103,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40236,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40636,
            x = 3,
            y = 2,
            connections = {
                1, 2, 3,
                4, 5, 6
            },
        },
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_BREWMASTER,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40640) or BtWQuests_IsQuestCompleted(40639) or BtWQuests_IsQuestCompleted(40638))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_MISTWEAVER,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40640) or BtWQuests_IsQuestCompleted(40639) or BtWQuests_IsQuestCompleted(40638))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_WINDWALKER,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40640) or BtWQuests_IsQuestCompleted(40639) or BtWQuests_IsQuestCompleted(40638))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_BREWMASTER,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40640)
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_MISTWEAVER,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40639)
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_WINDWALKER,
            visible = function (self)
                return BtWQuests_IsQuestCompleted(40638)
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
            id = 40698,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40793,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40795,
            x = 3,
            y = 6,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 101,
            x = 5,
            y = 6.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42186,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42187,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41945,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41946,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42210,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42191,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41905,
            x = 3,
            y = 13,
            connections = {
                2
            },
        },
        {
            type = "level",
            level = 103,
            x = 5,
            y = 13.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41728,
            x = 3,
            y = 14,
            connections = {
                1, 2, 3
            },
        },
        
        
        {
            type = "quest",
            id = 41729,
            x = 1,
            y = 15,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 41730,
            x = 3,
            y = 15,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 41731,
            x = 5,
            y = 15,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 41732,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41733,
            x = 3,
            y = 17,
            connections = {
                1, 2, 3
            },
        },
        
        
        {
            type = "quest",
            id = 41907,
            x = 1,
            y = 18,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 43062,
            x = 3,
            y = 18,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 41909,
            x = 5,
            y = 18,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 110,
            x = 5,
            y = 19.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41849,
            x = 3,
            y = 20,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41850,
            x = 3,
            y = 21,
            connections = {
                1, 2, 3
            },
        },
        
        
        
        {
            type = "quest",
            id = 41852,
            x = 1,
            y = 22,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 41853,
            x = 3,
            y = 22,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 41851,
            x = 5,
            y = 22,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 41854,
            x = 3,
            y = 23,
            connections = {
                1, 2, 3
            },
        },
        
        
        
        {
            type = "quest",
            id = 41737,
            x = 1,
            y = 24,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 41738,
            x = 3,
            y = 24,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 41736,
            x = 5,
            y = 24,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 41038,
            x = 3,
            y = 25,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41039,
            x = 3,
            y = 26,
            connections = {
                1, 2, 3, 4
            },
        },
        
        
        {
            type = "quest",
            id = 41040,
            x = 0,
            y = 27,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 41910,
            x = 2,
            y = 27,
            connections = {
                5
            },
        },
        {
            type = "quest",
            id = 41086,
            x = 4,
            y = 27,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 41911,
            x = 6,
            y = 27,
            connections = {
                2
            },
        },
        
        
        {
            type = "quest",
            id = 41059,
            x = 0,
            y = 28,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 43151,
            x = 6,
            y = 28,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 32442,
            x = 3,
            y = 29,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41087,
            x = 3,
            y = 30,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 41739,
            x = 2,
            y = 31,
        },
        {
            type = "quest",
            id = 43359,
            x = 4,
            y = 31,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_FOLLOWER] = {
    name = BtWQuests_GetQuestName(45790),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
        },
    },
    completed = {
        type = "quest",
        id = 45790,
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
            id = 45440,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45404,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45459,
            x = 3,
            y = 3,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 45574,
            x = 1,
            y = 4,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 45449,
            x = 3,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45545,
            x = 5,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46320,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45442,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45771,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45790,
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
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_MOUNT] = {
    name = BTWQUESTS_MONK_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
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
        id = 46350,
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
            id = 46353,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46341,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46342,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46343,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46344,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46346,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46347,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46348,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46349,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46350,
            x = 3,
            y = 10,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK] = {
    name = LOCALIZED_CLASS_NAMES_MALE["MONK"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_MONK,
        }
    },
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_MOUNT,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK,
})