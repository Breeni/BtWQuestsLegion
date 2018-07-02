BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_BLOOD] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(250)), "Maw of the Damned"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
        },
    },
    prerequisites = {
        {
            visible = false,
            onEval = function (self)
                if BtWQuests_IsQuestCompleted(40715) and BtWQuests_IsQuestCompleted(40722) then -- First Artifact
                    return true
                elseif BtWQuests_IsQuestCompleted(43962) and BtWQuests_IsQuestCompleted(40723) then -- Second Artifact
                    return true
                elseif BtWQuests_IsQuestCompleted(44401) and BtWQuests_IsQuestCompleted(40724) then -- Third Artifact
                    return true
                end
            end
        }
    },
    completed = {
        type = "quest",
        id = 40740,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-DeathKnight-Blood",
    items = {
        {
            type = "quest",
            id = 40740,
            x = 3,
            y = 0,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_FROST] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(251)), "Blades of the Fallen Prince"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
        },
    },
    completed = {
        type = "quest",
        id = 38990,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-DeathKnight-Frost",
    items = {
        {
            type = "quest",
            id = 38990,
            x = 3,
            y = 0,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_UNHOLY] = {
    name = string.format("%s: %s", select(2, GetSpecializationInfoByID(252)), "Apocalypse"),
    category = BTWQUESTS_CATEGORY_LEGION_ARTIFACT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
        },
    },
    completed = {
        type = "quest",
        id = 40935,
    },
    range = {98, 110},
    buttonImage = "Interface\\AddOns\\BtWQuests\\UI-BtWQuests-DeathKnight-Unholy",
    items = {
        {
            type = "quest",
            id = 40930,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40931,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40932,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40933,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40934,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40935,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_CAMPAIGN] = {
    name = BTWQUESTS_DEATHKNIGHT_CAMPAIGN,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 98,
        },
    },
    completed = {
        type = "quest",
        id = 43686,
    },
    range = {98, 110},
    items = {
        {
            type = "quest",
            id = 40714,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 40715,
            x = 3,
            y = 1,
            connections = {
                1, 2, 3, 4, 5, 6
            },
        },
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_BLOOD,
            restrictions = {
                {
                    onEval = function (self)
                        return not(BtWQuests_IsQuestCompleted(40722) or BtWQuests_IsQuestCompleted(40723) or BtWQuests_IsQuestCompleted(40724))
                    end
                }
            },
            x = 1,
            y = 2,
            connections = {
                6
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_FROST,
            restrictions = {
                {
                    onEval = function (self)
                        return not(BtWQuests_IsQuestCompleted(40722) or BtWQuests_IsQuestCompleted(40723) or BtWQuests_IsQuestCompleted(40724))
                    end
                }
            },
            x = 3,
            y = 2,
            connections = {
                5
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_UNHOLY,
            restrictions = {
                {
                    onEval = function (self)
                        return not(BtWQuests_IsQuestCompleted(40722) or BtWQuests_IsQuestCompleted(40723) or BtWQuests_IsQuestCompleted(40724))
                    end
                }
            },
            x = 5,
            y = 2,
            connections = {
                4
            },
        },
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_BLOOD,
            restrictions = {
                {
                    onEval = function (self)
                        return BtWQuests_IsQuestCompleted(40722)
                    end
                }
            },
            x = 3,
            y = 2,
            connections = {
                3
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_FROST,
            restrictions = {
                {
                    onEval = function (self)
                        return BtWQuests_IsQuestCompleted(40723)
                    end
                }
            },
            x = 3,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_UNHOLY,
            restrictions = {
                {
                    onEval = function (self)
                        return BtWQuests_IsQuestCompleted(40724)
                    end
                }
            },
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        
        
        
        
        {
            type = "quest",
            id = 39757,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 39761,
            x = 3,
            y = 4,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39832,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 39799,
            x = 3,
            y = 6,
            connections = {
                1--, 2, 3, 4, 5
            },
        },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_AZSUNA_BEHINDENEMYLINES,
            -- name = GetMapNameByID(1015),
            -- aside = true,
            -- x = 1,
            -- y = 5.5,
        -- },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION,
            -- name = GetMapNameByID(1018),
            -- aside = true,
            -- x = 1,
            -- y = 6.5
        -- },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_HIGHMOUNTAIN_RIVERMANE_TRIBE,
            -- name = GetMapNameByID(1024),
            -- aside = true,
            -- x = 5,
            -- y = 5.5,
        -- },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_STORMHEIM_GREYMANES_GAMBIT,
            -- name = GetMapNameByID(1017),
            -- aside = true,
            -- x = 5,
            -- y = 6.5,
        -- },
        {
            type = "quest",
            id = 42449,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42484,
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
            id = 44550,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 44550,
            x = 3,
            y = 10,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43264,
            x = 3,
            y = 11,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 39818,
            x = 1,
            y = 12,
        },
        {
            type = "quest",
            id = 39816,
            x = 5,
            y = 12,
        },
        {
            type = "quest",
            id = 43265,
            x = 3,
            y = 12,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43266,
            x = 3,
            y = 13,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43267,
            x = 3,
            y = 14,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43539,
            x = 3,
            y = 15,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43268,
            x = 3,
            y = 16,
            connections = {
                2
            },
        },
        {
            type = "level",
            level = 103,
            x = 5,
            y = 16.5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42533,
            x = 3,
            y = 17,
            connections = {
                1
            },
        },


        {
            type = "quest",
            id = 42534,
            x = 3,
            y = 18,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42535,
            x = 3,
            y = 19,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42536,
            x = 3,
            y = 20,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42537,
            x = 3,
            y = 21,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44243,
            x = 5,
            y = 21,
        },
        {
            type = "quest",
            id = 42708,
            x = 3,
            y = 22,
            connections = {
                1, 2, 3, 4
            },
        },
        {
            type = "quest",
            id = 44244,
            x = 1,
            y = 22,
        },
        {
            type = "quest",
            id = 44082,
            x = 5,
            y = 22,
        },
        {
            type = "quest",
            id = 43899,
            x = 2,
            y = 23,
            connections = {
                5
            },
        },
        {
            type = "quest",
            id = 43571,
            x = 4,
            y = 23,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43572,
            x = 4,
            y = 24,
            connections = {
                3
            },
        },
        
        
        {
            type = "level",
            level = 110,
            x = 6,
            y = 24.5,
            connections = {
                1, 2
            },
        },
        
        {
            type = "quest",
            id = 44217,
            aside = true,
            x = 6,
            y = 25.5,
        },
        
        
        {
            type = "quest",
            id = 42818,
            x = 3,
            y = 25,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 42882,
            x = 2,
            y = 26,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 42821,
            x = 4,
            y = 26,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42823,
            x = 3,
            y = 27,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 42824,
            x = 3,
            y = 28,
            connections = {
                1, 2, 3, 4
            },
        },
        {
            type = "quest",
            id = 44245,
            x = 5,
            y = 28,
        },
        
        
        {
            type = "quest",
            id = 43573,
            x = 2,
            y = 29,
            connections = {
                6
            },
        },
        {
            type = "quest",
            id = 43928,
            x = 4,
            y = 29,
            connections = {
                3, 5
            },
        },
        
        
        {
            type = "quest",
            id = 44286,
            x = 1,
            y = 28,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44246,
            x = 0,
            y = 29,
        },
        
        
        {
            type = "quest",
            id = 44282,
            x = 6,
            y = 29,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44247,
            x = 6,
            y = 30,
        },
        
        {
            type = "quest",
            id = 44690,
            x = 3,
            y = 30,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43574,
            x = 3,
            y = 31,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 43686,
            x = 3,
            y = 32,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44248,
            x = 2,
            y = 33,
        },
        {
            type = "quest",
            id = 43407,
            x = 4,
            y = 33,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_FOLLOWER] = {
    name = BtWQuests_GetQuestName(46050),
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
        },
    },
    completed = {
        type = "quest",
        id = 46050,
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
            id = 45240,
            x = 3,
            y = 1,
            connections = {
                1, 2
            },
        },
        
        
        {
            type = "quest",
            id = 45399,
            x = 2,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 45398,
            x = 4,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 45331,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44775,
            x = 3,
            y = 4,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 44783,
            x = 2,
            y = 5,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 46305,
            x = 4,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44787,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 45243,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 45103,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        
        
        {
            type = "quest",
            id = 46050,
            x = 3,
            y = 9,
            connections = {
                1
            },
        },
        
        
        
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
            aside = true,
            x = 3,
            y = 10,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_MOUNT] = {
    name = BTWQUESTS_DEATHKNIGHT_MOUNT,
    category = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
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
        id = 46720,
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
            id = 46719,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46720,
            x = 3,
            y = 2,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46812,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 46813,
            x = 3,
            y = 4,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT] = {
    name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"],
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        {
            type = "class",
            id = BTWQUESTS_CLASS_ID_DEATHKNIGHT,
        }
    },
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_MOUNT,
        },
    },
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_LEGION], {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT,
})