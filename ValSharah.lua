local L = BtWQuests.L;
local MAP_ID = 641
local CONTINENT_ID = 619

BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTRODUCTION, {
    name = L["BTWQUESTS_INTRODUCTION"],
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
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
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_VALE, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 1),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
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
                2
            },
        },
        {
            type = "quest",
            id = 39393,
            aside = true,
            x = 5,
            y = 2,
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
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 2),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
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
                1, 2
            },
        },
        {
            type = "quest",
            id = 38455,
            x = 1,
            y = 2.5,
            connections = {
                5
            },
        },
        {
            type = "quest",
            id = 38922,
            x = 3,
            y = 2,
            connections = {
                2
            },
        },
        {
            name = "Kill the Chieftain at the Nightmare Totem",
            breadcrumb = true,
            x = 5,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38246,
            x = 3,
            y = 3,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38146,
            x = 5,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38143,
            x = 3,
            y = 4,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 38145,
            x = 2,
            y = 5,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38144,
            x = 4,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38147,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
            x = 3,
            y = 7,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 3),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
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
                1, 2
            },
        },
        {
            type = "quest",
            id = 38235,
            x = 2,
            y = 2,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 38225,
            x = 4,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38372,
            x = 6,
            y = 2,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
            x = 3,
            y = 3,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 4),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
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
                3, 4, 5
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_THE_CLAW,
            x = 3,
            y = 0,
            connections = {
                2, 3, 4
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ARCHDRUID_OF_LORE,
            x = 5,
            y = 0,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 38148,
            visible = function ()
                return not (BtWQuests_IsQuestActive(38322) or BtWQuests_IsQuestActive(38323))
            end,
            x = 3,
            y = 1,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 38322,
            visible = {
                {
                    type = "quest",
                    id = 38322,
                    active = true,
                },
            },
            x = 3,
            y = 1,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38323,
            visible = {
                {
                    type = "quest",
                    id = 38323,
                    active = true,
                },
            },
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
                2, 3
            },
        },
        {
            type = "kill",
            id = 92802,
            -- name = "Kill Gravax the Desecrator",
            -- breadcrumb = true,
            x = 0,
            y = 4,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 38662,
            x = 2,
            y = 4,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 38655,
            x = 4,
            y = 4,
        },
        {
            type = "quest",
            id = 39029,
            aside = true,
            x = 6,
            y = 4,
        },
        {
            type = "quest",
            id = 38656,
            x = 0,
            y = 5,
        },
        {
            type = "quest",
            id = 38663,
            x = 3,
            y = 5,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38595,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38582,
            x = 3,
            y = 7,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38753,
            x = 3,
            y = 8,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG,
            x = 3,
            y = 9,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_ALL_NIGHTMARE_LONG, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 5),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_INTO_THE_NIGHTMARE,
        },
    },
    completed = {
        type = "quest",
        id = 38743,
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
            id = 41056,
            x = 3,
            y = 1,
            connections = {
                1, 2, 3
            },
        },
        {
            type = "quest",
            id = 41707,
            aside = true,
            x = 1,
            y = 2,
        },
        {
            type = "quest",
            id = 41708,
            x = 3,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38671,
            aside = true,
            x = 5,
            y = 2,
        },
        {
            type = "quest",
            id = 43576,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        { -- One is horde and other alliance but same tooltip so who cares
            type = "quest",
            ids = {38675, 41724},
            x = 3,
            y = 4,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 38684,
            x = 2,
            y = 5,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 41893,
            x = 4,
            y = 5,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 43241,
            aside = true,
            x = 6,
            y = 5,
        },
        {
            type = "quest",
            id = 43702,
            x = 3,
            y = 6,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 38687,
            x = 3,
            y = 7,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38748,
            aside = true,
            x = 5,
            y = 7,
        },
        {
            type = "quest",
            id = 38743,
            x = 3,
            y = 8,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 40567,
            aside = true,
            x = 2,
            y = 9,
        },
        {
            type = "quest",
            id = 40890,
            aside = true,
            x = 4,
            y = 9,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_BRADENSBROOK, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 6),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
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
                2
            },
        },
        {
            name = "Head to the top floor of Hearthrow Manor",
            breadcrumb = true,
            aside = true,
            x = 0,
            y = 1,
            connections = {
                3
            },
        },
        { -- @TODO Alternative? 39149
            type = "quest",
            id = 38643,
            x = 3,
            y = 1,
            connections = {
                3, 4
            },
        },
        {
            type = "kill",
            id = 94366,
            -- name = "Kill Lelyn Swiftshadow, near Hearthrow Manor",
            -- breadcrumb = true,
            aside = true,
            x = 6,
            y = 1,
            connections = {
                4
            },
        },
        {
            type = "quest",
            id = 39015,
            aside = true,
            x = 0,
            y = 2,
        },
        {
            type = "quest",
            id = 38645,
            x = 2,
            y = 2,
            connections = {
                6
            },
        },
        {
            type = "quest",
            id = 38644,
            x = 4,
            y = 2,
            connections = {
                5
            },
        },
        {
            type = "quest",
            id = 38711,
            aside = true,
            x = 6,
            y = 2,
        },
        {
            type = "quest",
            id = 38647,
            connections = {
                3
            },
            x = 0,
            y = 3,
        },
        {
            type = "quest",
            id = 38646,
            connections = {
                2
            },
            x = 6,
            y = 3,
        },
        {
            type = "quest",
            id = 39117,
            connections = {
                1
            },
            x = 0,
            y = 4,
        },
        {
            type = "quest",
            id = 38691,
            x = 3,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_BLACK_ROOK_HOLD,
            x = 3,
            y = 4,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_BLACK_ROOK_HOLD, {
    name = BtWQuests_GetAchievementCriteriaNameDelayed(10698, 7),
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    major = true,
    range = {98, 110},
    prerequisites = {
        {
            type = "chain",
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
                1, 2
            },
        },
        {
            type = "quest",
            id = 38714,
            x = 2,
            y = 2,
            connections = {
                3
            },
        },
        {
            type = "quest",
            id = 38715,
            x = 4,
            y = 2,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38716,
            aside = true,
            x = 6,
            y = 2,
        },
        {
            type = "quest",
            id = 38717,
            x = 3,
            y = 3,
            connections = {
                1, 2
            },
        },
        {
            type = "quest",
            id = 38724,
            x = 2,
            y = 4,
            connections = {
                2
            },
        },
        {
            type = "quest",
            id = 38719,
            aside = true,
            x = 4,
            y = 4,
        },
        {
            type = "quest",
            id = 38721,
            x = 3,
            y = 5,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_WILDKIN, {
    name = { -- Where the Wildkin Are
		type = "quest",
		id = 42747,
	},
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 42751,
    },
    items = {
        {
            type = "npc",
            id = 108304,
            -- name = "Go to Guviena Bladesong",
            -- breadcrumb = true,
            -- onClick = function ()
            --     BtWQuests_ShowMapWithWaypoint(MAP_ID, 0.594, 0.84, "Guviena Bladesong")
            -- end,
            x = 1,
            y = 0,
            connections = {
                3, 4,
            },
        },
        {
            type = "npc",
            id = 108358,
            -- name = "Go to Leirana",
            -- breadcrumb = true,
            -- onClick = function ()
            --     BtWQuests_ShowMapWithWaypoint(MAP_ID, 0.594, 0.82, "Leirana")
            -- end,
            x = 4,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "kill",
            id = 108327,
            -- name = "Kill Undulating Boneslime",
            -- breadcrumb = true,
            x = 6,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 42747,
            x = 0,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 42748,
            x = 2,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 42750,
            x = 4,
            y = 1,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 42786,
            x = 6,
            y = 1,
        },
        {
            type = "quest",
            id = 42751,
            x = 2,
            y = 2,
        },
        {
            type = "quest",
            id = 43324,
            x = 6,
            y = 2,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_GRIZZLEWEALD, {
    name = { -- Grell to Pay
		type = "quest",
		id = 42865,
	},
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 42865,
    },
    items = {
        {
            type = "npc",
            id = 109631,
            -- name = "Go to Old Grizzleback",
            -- breadcrumb = true,
            -- onClick = function ()
            --     BtWQuests_ShowMapWithWaypoint(MAP_ID, 0.6668, 0.7727, "Old Grizzleback")
            -- end,
            x = 2,
            y = 0,
            connections = {
                2, 3, 4,
            },
        },
        {
            name = "Go to the Moist Grizzlecomb",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(MAP_ID, 0.6682, 0.7566, "Moist Grizzlecomb")
            end,
            x = 6,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 42865,
            x = 0,
            y = 1,
        },
        {
            type = "quest",
            id = 42884,
            x = 2,
            y = 1,
        },
        {
            type = "quest",
            id = 42883,
            x = 4,
            y = 1,
        },
        {
            type = "quest",
            id = 42857,
            x = 6,
            y = 1,
        },
    }
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_VALSHARAH_LUNARWING, {
    name = { -- Spread Your Lunarwings and Fly
		type = "quest",
		id = 40221,
	},
    category = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    range = {98, 110},
    completed = {
        type = "quest",
        id = 40220,
    },
    items = {
        {
            type = "npc",
            id = 93600,
            -- name = "Go to Saylanna Riverbreeze",
            -- breadcrumb = true,
            -- onClick = function ()
            --     BtWQuests_ShowMapWithWaypoint(MAP_ID, 0.5375, 0.7983, "Saylanna Riverbreeze")
            -- end,
            x = 3,
            y = 0,
            connections = {
                3, 4,
            },
        },
        {
            name = "Kill Thistleleaf",
            breadcrumb = true,
            x = 6,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 38842,
            aside = true,
            x = 0,
            y = 1,
        },
        {
            type = "quest",
            id = 40220,
            x = 2,
            y = 1,
        },
        {
            type = "quest",
            id = 40221,
            x = 4,
            y = 1,
        },
        {
            type = "quest",
            id = 38862,
            x = 6,
            y = 1,
        },
    }
})

BtWQuestsDatabase:AddCategory(BTWQUESTS_CATEGORY_LEGION_VALSHARAH, {
    name = BtWQuests_GetMapName(641),
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
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_WILDKIN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_GRIZZLEWEALD,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_LUNARWING,
        },
    },
})

BtWQuestsDatabase:AddExpansionItem(BTWQUESTS_EXPANSION_LEGION, {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
})

BtWQuestsDatabase:AddMapRecursive(MAP_ID, {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_VALSHARAH,
})

BtWQuestsDatabase:AddContinentItems(CONTINENT_ID, {
    {
        type = "chain",
        id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_WILDKIN,
    },
    {
        type = "chain",
        id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_GRIZZLEWEALD,
    },
    {
        type = "chain",
        id = BTWQUESTS_CHAIN_LEGION_VALSHARAH_LUNARWING,
    },
})