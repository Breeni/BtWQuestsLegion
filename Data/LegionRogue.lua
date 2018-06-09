BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_ASSASSINATION] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(259)), "The Kingslayers"), -- select(1, GetItemInfo(128870))
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
        },
    },
    completed = {
        type = "quest",
        id = 42504,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Rogue-Assassination",
    items = {
        {
            type = "quest",
            id = 42501,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42502,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42503,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42539,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42568,
            x = 3,
            y = 4,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 42504,
            x = 3,
            y = 5,
        },
        {
            type = "quest",
            id = 42627,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_OUTLAW] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(260)), "The Dreadblades"), -- select(1, GetItemInfo(134552))
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
        },
    },
    completed = {
        type = "quest",
        id = 40849,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Rogue-Outlaw",
    items = {
        {
            type = "quest",
            id = 40847,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40849,
            x = 3,
            y = 1,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_SUBTLETY] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(261)), "Fangs of the Devourer"), -- select(1, GetItemInfo(128476))
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
        },
    },
    completed = {
        type = "quest",
        id = 41924,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Rogue-Subtlety",
    items = {
        {
            type = "quest",
            id = 41919,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41920,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41921,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41922,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 41924,
            x = 3,
            y = 4,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_CAMPAIGN] = {
    name = BTWQUESTS_ROGUE_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
        },
    },
    completed = {
        type = "quest",
        id = 37689,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 40832,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40839,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40840,
            x = 3,
            y = 2,
            connections = {
                1, 2, 3, 4, 5, 6
            },
        },
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_ASSASSINATION,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40842) or BtWQuests_IsQuestCompleted(40843) or BtWQuests_IsQuestCompleted(40844))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_OUTLAW,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40842) or BtWQuests_IsQuestCompleted(40843) or BtWQuests_IsQuestCompleted(40844))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_SUBTLETY,
            visible = function (self)
                return not (BtWQuests_IsQuestCompleted(40842) or BtWQuests_IsQuestCompleted(40843) or BtWQuests_IsQuestCompleted(40844))
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
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_ASSASSINATION,
            visible = {
                {
                    type = "quest",
                    id = 40842
                }
            },
            x = 3,
            y = 3,
            connections = {
                3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_OUTLAW,
            visible = {
                {
                    type = "quest",
                    id = 40843
                }
            },
            x = 3,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_SUBTLETY,
            visible = {
                {
                    type = "quest",
                    id = 40844
                }
            },
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 40950,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40994,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40995,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40996,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40997,
            x = 3,
            y = 8,
            connections = {
                --1, 2, 3, 4, 6
                2
            },
        },
        
        
        
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_AZSUNA_BEHINDENEMYLINES,
            -- name = GetMapNameByID(1015),
            -- aside = true,
            -- x = 1,
            -- y = 7.5,
        -- },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
            -- name = GetMapNameByID(1018),
            -- aside = true,
            -- x = 1,
            -- y = 8.5
        -- },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERMANE_TRIBE,
            -- name = GetMapNameByID(1024),
            -- aside = true,
            -- x = 5,
            -- y = 7.5,
        -- },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT,
            -- name = GetMapNameByID(1017),
            -- aside = true,
            -- x = 5,
            -- y = 8.5,
        -- },
        
        
        
        
        
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
            id = 43007,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42139,
            x = 3,
            y = 11,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42140,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43013,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43014,
            x = 3,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43015,
            x = 3,
            y = 15,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43958,
            x = 3,
            y = 16,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43829,
            x = 3,
            y = 17,
            connections = {
                2
            },
        },
        
        
        {
            type = "level",
            level = 103,
            x = 5,
            y = 17.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44041,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44116,
            x = 3,
            y = 19,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44155,
            x = 2,
            y = 20,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 44117,
            x = 4,
            y = 20,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44177,
            x = 3,
            y = 21,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44183,
            x = 5,
            y = 22,
        },
        {
            type = "quest",
            id = 43841,
            x = 3,
            y = 22,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43852,
            x = 3,
            y = 23,
            connections = {
                1, 2, 5, 6
            },
        },
        {
            type = "quest",
            id = 44181,
            x = 1,
            y = 23,
        },
        
        
        {
            type = "quest",
            id = 42730,
            x = 1,
            y = 24,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44178,
            x = 1,
            y = 25,
            connections = {
                1, 5
            },
        },
        {
            type = "quest",
            id = 44180,
            x = 0,
            y = 26,
        },
        
        
        {
            type = "quest",
            id = 43468,
            x = 5,
            y = 24,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 42684,
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
            y = 25.5,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 43253,
            x = 3,
            y = 26,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 44252,
            x = 5,
            y = 26.5,
        },
        {
            type = "quest",
            id = 43249,
            x = 3,
            y = 27,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43250,
            x = 3,
            y = 28,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 43251,
            x = 2,
            y = 29,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 43252,
            x = 4,
            y = 29,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42678,
            x = 3,
            y = 30,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42680,
            x = 3,
            y = 31,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 42800,
            x = 1,
            y = 31,
        },
        {
            type = "quest",
            id = 43469,
            x = 2,
            y = 32,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 43470,
            x = 4,
            y = 32,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43479,
            x = 4,
            y = 33,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43485,
            x = 3,
            y = 34,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43508,
            x = 3,
            y = 35,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37666,
            x = 3,
            y = 36,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37448,
            x = 3,
            y = 37,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37494,
            x = 3,
            y = 38,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 37689,
            x = 3,
            y = 39,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 43723,
            x = 2,
            y = 40,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 43724,
            x = 4,
            y = 40,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44215,
            x = 3,
            y = 41,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43422,
            x = 3,
            y = 42,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_FOLLOWER] = {
    name = function (self)
        if UnitFactionGroup("player") == "Alliance" then
            return BtWQuests_GetQuestName(46059)
        elseif UnitFactionGroup("player") == "Horde" then
            return BtWQuests_GetQuestName(46058)
        end
    end,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
        },
    },
    completed = {
        type = "quest",
        id = 46059,
    },
    range = {110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            userdata = {
                scrollTo = {
                    type = "chain",
                    id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_FOLLOWER,
                },
            },
            breadcrumb = true,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 47137,
            x = 3,
            y = 1,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 45833,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 2,
            connections = {
                2, 4, 6
            },
        },
        {
            type = "quest",
            id = 46322,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 2,
            connections = {
                2, 4, 5
            },
        },
        
        
        
        {
            type = "quest",
            id = 45835,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 1,
            y = 3,
            connections = {
                5
            },
        },
        {
            type = "quest",
            id = 46324,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 1,
            y = 3,
            connections = {
                4
            },
        },
        
        {
            type = "quest",
            id = 44758,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 3,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 46323,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 3,
            connections = {
                2
            },
        },
        
        {
            type = "quest",
            id = 45073,
            x = 5,
            y = 3,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "quest",
            id = 45848,
            x = 3,
            y = 4,
            connections = {
                1, 2
            },
        },
        
        {
            type = "quest",
            id = 45836,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 5,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 46326,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        
        {
            type = "quest",
            id = 45571,
            x = 3,
            y = 6,
            connections = {
                1, 2
            },
        },
        
        
        
        
        
        {
            type = "quest",
            id = 45573,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45576,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 7,
            connections = {
                2
            },
        },
        
        {
            type = "quest",
            id = 45628,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 8,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45629,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 8,
            connections = {
                2
            },
        },
        
        {
            type = "quest",
            id = 46260,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 9,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 46827,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 9,
            connections = {
                2
            },
        },
        
        {
            type = "quest",
            id = 46059,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 10,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 46058,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            userdata = {
                scrollTo = {
                    type = "chain",
                    id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_FOLLOWER,
                },
            },
            aside = true,
            x = 3,
            y = 11,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_MOUNT] = {
    name = BTWQUESTS_ROGUE_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
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
        id = 46089,
    },
    range = {110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-Rogue-Mount",
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
            id = 46103,
            x = 3,
            y = 1,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 46089,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_ALLIANCE,
                },
            },
            x = 3,
            y = 2,
        },
        {
            type = "quest",
            id = 46178,
            restrictions = {
                {
                    type = "faction",
                    id = BTWQUESTS_FACTION_ID_HORDE,
                },
            },
            x = 3,
            y = 2,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE] = {
    name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_ROGUE,
        }
    },
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_MOUNT,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE,
})