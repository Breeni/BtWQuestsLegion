local MAP_ID = 36

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_THEGNOLLOFFENSIVE] = {
	name = GetAchievementCriteriaInfo(4902, 1),
	category = BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {15, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		type = "quest",
		id = 26545,
	},
	items = {
        {
            name = "Go to Martie Jainrose",
            breadcrumb = true,
            aside = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(36, 0, 0.2204, 0.4270, "Martie Jainrose")
            end,
			x = 0,
			y = 0,
			connections = {
				4,
			},
        },
        {
            name = "Go to Bailiff Conacher",
            breadcrumb = true,
            aside = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(36, 0, 0.2868, 0.4096, "Bailiff Conacher")
            end,
			x = 2,
			y = 0,
			connections = {
				4,
			},
        },
        {
            variations = {
				{
                    type = "quest",
                    id = 26505,
                    restrictions = {
                        type = "quest",
                        id = 26505,
                        status = {'active'}
                    },
				},
				{
					type = "quest",
					id = 28563,
                    restrictions = {
                        type = "quest",
                        id = 28563,
                        status = {'active'}
                    },
				},
				{
					name = "Go to Magistrate Solomon",
                    breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(36, 0, 0.2891, 0.4110, "Magistrate Solomon")
					end,
				},
			},
			x = 4,
			y = 0,
			connections = {
				4,
			},
        },
        {
            name = "Go to Shawn",
            breadcrumb = true,
            aside = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(36, 0, 0.2835, 0.4888, "Shawn")
            end,
			x = 6,
			y = 0,
			connections = {
				4,
			},
        },
		{
			type = "quest",
			id = 26509,
            aside = true,
			x = 0,
			y = 1,
		},
		{
			type = "quest",
			id = 26511,
            aside = true,
			x = 2,
			y = 1,
		},
		{
			type = "quest",
			id = 26510,
			x = 4,
			y = 1,
			connections = {
                2, 3,
            },
		},
		{
			type = "quest",
			id = 26508,
            aside = true,
			x = 6,
			y = 1,
		},
		{
			type = "quest",
			id = 26512,
			x = 3,
			y = 2,
			connections = {
                3,
            },
		},
		{
			type = "quest",
            id = 26513,
            aside = true,
			x = 5,
			y = 2,
		},
		{
            name = "Kill Gnolls",
            breadcrumb = true,
            aside = true,
			x = 1,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26514,
			x = 3,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26519,
            aside = true,
			x = 1,
			y = 4,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26544,
			x = 3,
			y = 4,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26520,
            aside = true,
			x = 1,
			y = 5,
		},
		{
			type = "quest",
			id = 26545,
			x = 3,
			y = 5,
			connections = {
                1,
            },
        },
		{
			type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_KEESHANSRAIDERS,
            aside = true,
			x = 3,
			y = 6,
        },
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_KEESHANSRAIDERS] = {
	name = GetAchievementCriteriaInfo(4902, 2),
	category = BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {15, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_THEGNOLLOFFENSIVE,
        },
    },
	completed = {
		type = "quest",
		id = 26607,
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_THEGNOLLOFFENSIVE,
			x = 3,
			y = 0,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26567,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26568,
			x = 3,
			y = 2,
			connections = {
                2, 3, 4, 5,
            },
        },

		{
			type = "quest",
            id = 26520,
            aside = true,
			x = 6,
			y = 2,
			connections = {
                4,
            },
        },
        
		{
			type = "quest",
			id = 26570,
            aside = true,
			x = 0,
			y = 3,
		},
		{
			type = "quest",
			id = 26571,
			x = 2,
			y = 3,
			connections = {
                7,
            },
		},
		{
			type = "quest",
			id = 26586,
			x = 4,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26569,
            aside = true,
			x = 6,
			y = 3,
		},
		{
			type = "quest",
			id = 26587,
			x = 4,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26560,
			x = 4,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26561,
			x = 4,
			y = 6,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26562,
			x = 4,
			y = 7,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26573,
			x = 2,
			y = 8,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26563,
			x = 4,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26607,
			x = 3,
			y = 9,
			connections = {
                1,
            },
        },
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_FIRSTBLOOD,
			x = 3,
			y = 10,
        },
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_FIRSTBLOOD] = {
	name = GetAchievementCriteriaInfo(4902, 3),
	category = BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {15, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_KEESHANSRAIDERS,
        },
    },
	completed = {
		type = "quest",
		id = 26726,
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_KEESHANSRAIDERS,
			x = 3,
			y = 0,
			connections = {
                1,
            },
        },
		{
			type = "quest",
			id = 26616,
			x = 3,
			y = 1,
			connections = {
                1, 2, 3, 4,
            },
		},
		{
			type = "quest",
			id = 26637,
			x = 0,
			y = 2,
			connections = {
                5,
            },
		},
		{
			type = "quest",
			id = 26638,
			x = 2,
			y = 2,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 26639,
			x = 4,
			y = 2,
			connections = {
                2,
            },
        },
		{
			type = "quest",
			id = 26636,
			x = 6,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26640,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26646,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26651,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26668,
			x = 3,
			y = 6,
			connections = {
                1, 2,
            },
		},
		{
			type = "quest",
			id = 26693,
			x = 2,
			y = 7,
			connections = {
                2,
            },
		},
		{
			type = "quest",
            id = 26692,
            aside = true,
			x = 4,
			y = 7,
		},
		{
			type = "quest",
			id = 26694,
			x = 3,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26708,
			x = 3,
			y = 9,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26713,
			x = 3,
			y = 10,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26714,
			x = 3,
			y = 11,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26726,
			x = 3,
			y = 12,
			connections = {
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_CHAIN1] = {
	name = "Tower Watch",
	category = BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {15, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		type = "quest",
		id = 26505,
	},
	items = {
        {
            variations = {
				{
                    type = "quest",
                    id = 26365,
                    restrictions = {
                        type = "quest",
                        id = 26365,
                        status = {'active', 'completed'}
                    },
				},
				{
					type = "quest",
					id = 28563,
                    restrictions = {
                        type = "quest",
                        id = 28563,
                        status = {'active', 'completed'}
                    },
				},
				{
					name = "Go to Watch Captain Parker",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(36, 0, 0.1532, 0.6459, "Watch Captain Parker")
					end,
				},
			},
			x = 3,
			y = 0,
			connections = {
				2,
			},
        },
		{
			type = "quest",
			id = 26504,
			x = 1,
			y = 1,
		},
		{
			type = "quest",
			id = 26503,
			x = 3,
			y = 1,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26506,
			x = 5,
			y = 1,
        },
		{ -- Not a standard breadcrumb quest, can be completed even if the next quest has been taken or completed
			type = "quest",
			id = 26505,
            x = 3,
            y = 2,
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
                    id = 26505,
                },
                {
                    type = "quest",
                    id = 26510,
                    status = {'active', 'completed'},
                }
            },
            x = 3,
            y = 3
        },
	}
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS] = {
	name = GetMapNameByID(MAP_ID),
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	restrictions = {
		type = "faction",
		faction = "Alliance",
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_CHAIN1,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_THEGNOLLOFFENSIVE,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_KEESHANSRAIDERS,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_REDRIDGE_MOUNTAINS_FIRSTBLOOD,
		},
	}
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_REDRIDGE_MOUNTAINS,
}