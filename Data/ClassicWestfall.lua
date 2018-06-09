local MAP_ID = 39

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CRIMESCENEINVESTIGATION] = {
	name = GetAchievementCriteriaInfo(4903, 1),
	category = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {10, 60},
    prerequisites = {
        {
            type = "level",
            level = 10,
        },
    },
	completed = {
		type = "quest",
		id = 26270,
	},
	items = {
        {
            variations = {
				{
					type = "quest",
					id = 184,
					breadcrumb = true,
                    restrictions = {
                        type = "quest",
                        id = 184,
                        status = {'active'}
                    },
				},
				{
					type = "quest",
					id = 28562,
                    restrictions = {
                        type = "quest",
                        id = 28562,
                        status = {'active', 'completed'}
                    },
				},
				{
					type = "quest",
					id = 26378,
                    restrictions = {
                        type = "quest",
                        id = 26378,
                        status = {'active', 'completed'}
                    },
				},
				{
					type = "quest",
					id = 184,
                    restrictions = {
                        type = "quest",
                        id = 184,
                        status = {'completed'}
                    },
				},
				{
					name = "Go to Lieutenant Horatio Laine",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(39, 0, 0.6005, 0.1927, "Lieutenant Horatio Laine")
					end,
				},
			},
			x = 3,
			y = 0,
			connections = {
				1,
			},
		},


		{
			type = "quest",
			id = 26209,
			x = 3,
			y = 1,
			connections = {
                1, 2,
            },
		},

		
		{
			type = "quest",
			id = 26214,
			x = 2,
			y = 2,
			connections = {
                2
            },
		},
		{
			type = "quest",
			id = 26213,
			x = 4,
			y = 2,
			connections = {
                1
            },
		},
		{
			type = "quest",
			id = 26215,
			x = 3,
			y = 3,
			connections = {
                1, 2, 3,
            },
		},
		{
			type = "quest",
			id = 26230,
			aside = true,
			x = 1,
			y = 4,
		},
		{
			type = "quest",
			id = 26228,
			x = 3,
			y = 4,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26229,
			aside = true,
			x = 5,
			y = 4,
		},
		{
			type = "quest",
			id = 26232,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26236,
			x = 3,
			y = 6,
			connections = {
                1, 2,
            },
		},
		{
			type = "quest",
			id = 26241,
			x = 2,
			y = 7,
			connections = {
                3,
            },
		},
		{
			type = "quest",
			id = 26237,
			x = 4,
			y = 7,
			connections = {
                2,
            },
		},
		
		{
			type = "quest",
			id = 26252,
			aside = true,
			x = 6,
			y = 7,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26270,
			x = 3,
			y = 8,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26257,
			aside = true,
			x = 6,
			y = 8,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_INVESTIGATINGTHESHADOWS,
			aside = true,
			x = 3,
			y = 9,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTFALL_INVESTIGATINGTHESHADOWS] = {
	name = GetAchievementCriteriaInfo(4903, 2),
	category = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {10, 60},
    prerequisites = {
        {
            type = "level",
            level = 10,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CRIMESCENEINVESTIGATION,
		},
    },
	completed = {
		type = "quest",
		id = 26297,
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CRIMESCENEINVESTIGATION,
			x = 3,
			y = 0,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26266,
			x = 3,
			y = 1,
			connections = {
                1, 2, 3,
            },
		},
		{
			type = "quest",
			id = 26271,
			aside = true,
			x = 1,
			y = 2,
		},
		{
			type = "quest",
			id = 26286,
			x = 3,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26287,
			aside = true,
			x = 5,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26289,
			x = 3,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26288,
			aside = true,
			x = 5,
			y = 3,
		},

		{
			type = "quest",
			id = 26290,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26291,
			x = 3,
			y = 5,
			connections = {
				1,
            },
		},




		{
			type = "quest",
			id = 26292,
			x = 3,
			y = 6,
			connections = {
                2,
            },
		},
		{
			name = "Kill Defias Thugs",
			breadcrumb = true,
			aside = true,
			x = 5,
			y = 6.5,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26295,
			x = 3,
			y = 7,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26296,
			aside = true,
			x = 5,
			y = 7.5,
		},
		{
			type = "quest",
			id = 26297,
			x = 3,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_THEDEFIASBROTHERHOODREBORN,
			aside = true,
			x = 3,
			y = 9,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTFALL_THEDEFIASBROTHERHOODREBORN] = {
	name = GetAchievementCriteriaInfo(4903, 3),
	category = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {10, 60},
    prerequisites = {
        {
            type = "level",
            level = 10,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_INVESTIGATINGTHESHADOWS,
		},
    },
	completed = {
		type = "quest",
		id = 26370,
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_INVESTIGATINGTHESHADOWS,
			x = 3,
			y = 0,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26319,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26320,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26322,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26370,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{ -- Not a standard breadcrumb quest, can be completed even if the next quest has been taken or completed
			type = "quest",
			id = 26761,
            aside = true,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_THEGNOLLOFFENSIVE,
            aside = true,
            active = {
                {
                    type = "quest",
                    id = 26761,
                },
                {
                    type = "quest",
                    id = 26510,
                    status = {'active', 'completed'},
                }
            },
            x = 3,
            y = 6
        },
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CHAIN1] = {
	name = {
		type = "quest",
		id = 26371,
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {10, 60},
    prerequisites = {
        {
            type = "level",
            level = 10,
		},
    },
	completed = {
		{
			type = "quest",
			id = 26347,
		},
		{
			type = "quest",
			id = 26348,
		},
		{
			type = "quest",
			id = 26348,
		},
	},
	items = {
        {
            variations = {
				{
					type = "quest",
					id = 26371,
                    restrictions = {
                        type = "quest",
                        id = 26371,
                        status = {'active', 'completed'}
                    },
				},
				{
					name = "Go to Lieutenant Horatio Laine",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(39, 0, 0.6005, 0.1927, "Lieutenant Horatio Laine")
					end,
				},
			},
			x = 2,
			y = 0,
			connections = {
				1, 2, 3,
			},
		},
		{
			type = "quest",
			id = 26347,
			x = 0,
			y = 1,
		},
		{
			type = "quest",
			id = 26349,
			x = 2,
			y = 1,
		},
		{
			type = "quest",
			id = 26348,
			x = 4,
			y = 1,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CHAIN2,
			aside = true,
			x = 6,
			y = 1,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CHAIN2] = {
	name = {
		type = "quest",
		id = 26353
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {10, 60},
    prerequisites = {
        {
            type = "level",
            level = 10,
		},
    },
	completed = {
		type = "quest",
		id = 26356,
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CHAIN1,
			aside = true,
			x = 1,
			y = 0,
		},
        {
			name = "Kill Murlocs around Longshore",
			breadcrumb = true,
			x = 3,
			y = 0,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 26353,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26354,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26355,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26356,
			x = 3,
			y = 4,
		},
	}
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_WESTFALL] = {
	name = GetMapNameByID(MAP_ID),
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	restrictions = {
		{
			type = "faction",
			id = BTWQUESTS_FACTION_ID_ALLIANCE,
		}
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CRIMESCENEINVESTIGATION,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_INVESTIGATINGTHESHADOWS,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_THEDEFIASBROTHERHOODREBORN,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CHAIN1,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_WESTFALL_CHAIN2,
		},
	}
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_WESTFALL,
}