BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_AZURELODEMINE] = {
	name = GetAchievementCriteriaInfo(4895, 4),
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		{
			type = "quest",
			id = 28096,
		},
		{
			type = "quest",
			id = 28144,
		},
		{
			type = "quest",
			id = 28146,
		},
	},
	items = {
		-- Lead-ins
		{
			{
				type = "quest",
				id = 27746,
                restrictions = {
                    {
                        type = "quest",
                        id = 27746,
                        active = true,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
			{
				type = "quest",
				id = 27746,
                restrictions = {
                    {
                        type = "quest",
                        id = 27746,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},


			{
				type = "quest",
				id = 28089,
                restrictions = {
                    {
                        type = "quest",
                        id = 28089,
                        active = true,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
			{
				type = "quest",
				id = 28089,
                restrictions = {
                    {
                        type = "quest",
                        id = 28089,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},


			{
				type = "quest",
				id = 28571,
                restrictions = {
                    {
                        type = "quest",
                        id = 28571,
                        active = true,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
			{
				type = "quest",
				id = 28571,
                restrictions = {
                    {
                        type = "quest",
                        id = 28571,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},


            {
                name = "Go to High Executor Darthalia",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(24, 0, 0.2924, 0.6334, "High Executor Darthalia")
                end,
                x = 3,
                y = 0,
				connections = {
					1,
				},
            },
		},
		--
		{
			type = "quest",
			id = 28096,
			x = 3,
			y = 1,
			connections = {
				1, 2, 4, 5,
			},
		},
		{
			type = "quest",
			id = 28114,
			x = 0,
			y = 2,
		},
		{
			{
				type = "quest",
				id = 28111,
                restrictions = {
                    {
                        type = "quest",
                        id = 28111,
                        active = true,
                    }
                },
				x = 2,
				y = 2,
				connections = {
					4,
				},
			},
			{
				type = "quest",
				id = 28111,
                visible = {
                    {
                        type = "quest",
                        id = 28111,
                    }
                },
				x = 2,
				y = 2,
				connections = {
					4,
				},
			},
		},
		{
			name = "Go to Captain Keyton",
			breadcrumb = true,
			visible = {
				{
					type = "quest",
					id = 28111,
					active = false,
				},
				{
					type = "quest",
					id = 28111,
					completed = false,
				}
			},
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(24, 0, 0.3330, 0.7355, "Captain Keyton")
			end,
			x = 2,
			y = 2,
			connections = {
				3,
			},
		},
		{
			name = "Find Dumass in the Mines",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(24, 0, 0.3663, 0.7019, "Dumass")
			end,
			x = 4,
			y = 2,
			connections = {
				3,
			},
		},
		{
			type = "quest",
			id = 28115,
			x = 6,
			y = 2,
		},
		{
			type = "quest",
			id = 28138,
			x = 2,
			y = 3,
			connections = {},
		},
		{
			type = "quest",
			id = 28156,
			x = 4,
			y = 3,
			connections = {},
		},
		{
			type = "quest",
			id = 28144,
			x = 2,
			y = 4,
			connections = { 3 },
		},
		{
			type = "quest",
			id = 28146,
			x = 4,
			y = 4,
			connections = { 2 },
		},
		{
			name = "Kill Muckgill at the beach",
			breadcrumb = true,
			x = 6,
			y = 4,
			connections = {
				2,
			},
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_SLUDGEFIELDS,
			aside = true,
			x = 3,
			y = 5,
			connections = {},
		},
		{
			type = "quest",
			id = 28154,
			x = 6,
			y = 5,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_SLUDGEFIELDS] = {
	name = GetAchievementCriteriaInfo(4895, 1),
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		type = "quest",
		id = 28237,
	},
	items = {
		{
			{
				type = "quest",
				id = 28168,
                restrictions = {
                    {
                        type = "quest",
						id = 28168,
						active = true,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
			{
				type = "quest",
				id = 28168,
                restrictions = {
                    {
                        type = "quest",
                        id = 28168,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
            {
				name = "Go to Warden Stillwater",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(24, 0, 0.3618, 0.6114, "Warden Stillwater")
                end,
                x = 3,
                y = 0,
				connections = {
					1,
				},
            },
		},
		{
			type = "quest",
			id = 28192,
			x = 3,
			y = 1,
			connections = { 2, 3, 4 },
		},
		{
			type = "quest",
			id = 28196,
			x = 0,
			y = 2,
			connections = { 4 },
		},
		{
			type = "quest",
			id = 28197,
			x = 2,
			y = 2,
			connections = { 3 },
		},
		{
			type = "quest",
			id = 28189,
			x = 4,
			y = 2,
			connections = { 2 },
		},
		{
			type = "quest",
			id = 28199,
			x = 6,
			y = 2,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28206,
			x = 3,
			y = 3,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28209,
			x = 3,
			y = 4,
			connections = { 1, 2 },
		},
		{
			type = "quest",
			id = 28230,
			x = 2,
			y = 5,
			connections = { 2 },
		},
		{
			type = "quest",
			id = 28231,
			x = 4,
			y = 5,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28235,
			x = 3,
			y = 6,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28237,
			x = 3,
			y = 7,
			connections = { 1 },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_STORMPIKE,
			aside = true,
			x = 3,
			y = 8,
			connections = {},
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_STORMPIKE] = {
	name = GetAchievementCriteriaInfo(4895, 2),
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		type = "quest",
		id = 28616,
	},
	items = {
		{
			{
				type = "quest",
				id = 28344,
                restrictions = {
                    {
                        type = "quest",
						id = 28344,
						active = true,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
			{
				type = "quest",
				id = 28344,
                restrictions = {
                    {
                        type = "quest",
                        id = 28344,
                    }
                },
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
			{
				name = "Go to Kingslayer Orkus",
				breadcrumb = true,
				onClick = function ()
					BtWQuests_ShowMapWithWaypoint(24, 0, 0.4957, 0.7440, "Kingslayer Orkus")
				end,
				x = 3,
				y = 0,
				connections = {
					1,
				},
			},
		},
		{
			type = "quest",
			id = 28345,
			x = 3,
			y = 1,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28348,
			x = 3,
			y = 2,
			connections = {
				2,
			},
		},
		{
			name = "Kill Gnolls at Nethander Stead",
			breadcrumb = true,
			x = 5,
			y = 2,
			connections = {
				2,
			},
		},
		{
			type = "quest",
			id = 28354,
			x = 3,
			y = 3,
			connections = {
				2,
			},
		},
		{
			type = "quest",
			id = 28355,
			x = 5,
			y = 3,
		},
		{
			type = "quest",
			id = 28375,
			x = 3,
			y = 4,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28397,
			x = 3,
			y = 5,
			connections = { 2 },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_EASTPOINTTOWER,
			aside = true,
			x = 1,
			y = 6,
		},
		{
			type = "quest",
			id = 28400,
			x = 3,
			y = 6,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28587,
			x = 3,
			y = 7,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28600,
			x = 3,
			y = 8,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28506,
			x = 3,
			y = 9,
			connections = { 1, 2 },
		},
		{
			type = "quest",
			id = 28556,
			x = 2,
			y = 10,
		},
		{
			type = "quest",
			id = 28538,
			x = 4,
			y = 10,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28566,
			x = 3,
			y = 11,
			connections = { 1, 2 },
		},
		{
			type = "quest",
			id = 28603,
			x = 2,
			y = 12,
			connections = { 2 },
		},
		{
			type = "quest",
			id = 28604,
			x = 4,
			y = 12,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28605,
			x = 3,
			y = 13,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28616,
			x = 3,
			y = 14,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_EASTPOINTTOWER] = {
	name = GetAchievementCriteriaInfo(4895, 3),
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		type = "quest",
		id = 28647,
	},
	items = {
		{
			{
				type = "quest",
				id = 28620,
                restrictions = {
                    {
                        type = "quest",
						id = 28620,
						active = true,
                    }
                },
				x = 1,
				y = 0,
				connections = {
					2,
				},
			},
			{
				type = "quest",
				id = 28620,
                restrictions = {
                    {
                        type = "quest",
                        id = 28620,
                    }
                },
				x = 1,
				y = 0,
				connections = {
					2,
				},
			},
			{
				name = "Go to Nils Beerot",
				breadcrumb = true,
				onClick = function ()
					BtWQuests_ShowMapWithWaypoint(24, 0, 0.6000, 0.6374, "Nils Beerot")
				end,
				x = 1,
				y = 0,
				connections = {
					2,
				},
			},
		},
		{
			name = "Go to Captain Jekyll",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(24, 0, 0.5990, 0.6333, "Captain Jekyll")
			end,
			x = 4,
			y = 0,
			connections = {
				2, 3,
			},
		},
		{
			type = "quest",
			id = 28634,
			x = 1,
			y = 1,
		},
		{
			type = "quest",
			id = 28643,
			x = 3,
			y = 1,
			connections = { 2 },
		},
		{
			type = "quest",
			id = 28635,
			x = 5,
			y = 1,
			connections = { 2 },
		},
		{
			type = "quest",
			id = 28644,
			x = 3,
			y = 2,
			connections = { 2 },
		},
		{
			type = "quest",
			id = 28636,
			x = 5,
			y = 2,
		},
		{
			type = "quest",
			id = 28645,
			x = 3,
			y = 3,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28646,
			x = 3,
			y = 4,
			connections = { 1 },
		},
		{
			type = "quest",
			id = 28647,
			x = 3,
			y = 5,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_SOUTHSHORE] = {
	name = BtWQuests_GetQuestName(28251),
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		{
			type = "quest",
			id = 28331,
		},
		{
			type = "quest",
			id = 28332,
		}
	},
	items = {
		{
			{
				type = "quest",
				id = 28251,
                restrictions = {
                    {
                        type = "quest",
                        id = 28251,
                        active = true,
                    }
                },
				x = 1,
				y = 0,
				connections = {
					2, 3,
				},
			},
			{
				type = "quest",
				id = 28251,
                restrictions = {
                    {
                        type = "quest",
                        id = 28251,
                    }
                },
				x = 1,
				y = 0,
				connections = {
					2, 3,
				},
			},
			{
				name = "Go to Serge Hinott",
				breadcrumb = true,
				onClick = function ()
					BtWQuests_ShowMapWithWaypoint(24, 0, 0.4910, 0.6635, "Serge Hinott")
				end,
				x = 1,
				y = 0,
				connections = {
					2, 3,
				},
			},
		},
		{
			name = "Go to Helcular",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(24, 0, 0.4915, 0.6634, "Helcular")
			end,
			x = 5,
			y = 0,
			connections = {
				3, 4,
			},
		},

		{
			type = "quest",
			id = 28324,
			x = 0,
			y = 1,
		},
		{
			type = "quest",
			id = 28325,
			x = 2,
			y = 1,
		},

		
		{
			type = "quest",
			id = 28331,
			x = 4,
			y = 1,
			connections = {
				3,
			},
		},
		{
			type = "quest",
			id = 28332,
			x = 6,
			y = 1,
			connections = {
				2,
			},
		},

		
		{
			type = "quest",
			id = 28329,
			x = 1,
			y = 2,
			connections = {
				2,
			},
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_STORMPIKE,
			x = 5,
			y = 2,
		},
		{
			type = "quest",
			id = 28330,
			x = 1,
			y = 3,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_TARREN_MILL] = {
	name = "Tarren Mill",
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		{
			type = "quest",
			id = 28495,
		},
		{
			type = "quest",
			id = 28484,
		},
		{
			type = "quest",
			id = 28485,
		},
		{
			type = "quest",
			id = 28487,
		},
		{
			type = "quest",
			id = 28489,
		},
	},
	items = {
		{
			type = "quest",
			id = 28495,
			x = 0,
			y = 0,
			connections = {},
		},
		{
			type = "quest",
			id = 28484,
			x = 2,
			y = 0,
			connections = {},
		},
		{
			type = "quest",
			id = 28485,
			x = 4,
			y = 0,
			connections = {},
		},
		{
			type = "quest",
			id = 28487,
			x = 6,
			y = 0,
			connections = {},
		},
		{
			type = "quest",
			id = 28489,
			x = 0,
			y = 1,
			connections = {},
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_BRAZIE_FARMSTEAD] = {
	name = "Brazie Farmstead",
	category = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
    prerequisites = {
        {
            type = "level",
            level = 15,
        },
    },
	completed = {
		type = "quest",
		id = 28748,
	},
	items = {
		{
			name = "Go to Brazie the Botanist",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(24, 0, 0.3353, 0.4934, "Brazie the Botanist")
			end,
			x = 3,
			y = 0,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 28733,
			x = 3,
			y = 1,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 28617,
			x = 3,
			y = 2,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 28744,
			x = 3,
			y = 3,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 28747,
			x = 3,
			y = 4,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 28748,
			x = 3,
			y = 5,
		},
	}
}

-- {
-- 	type = "quest",
-- 	id = 28356,
-- 	x = 0,
-- 	y = 2,
-- 	connections = {},
-- },

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS] = {
	name = GetMapNameByID(24),
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	restrictions = {
		type = "faction",
		faction = "Horde"
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_AZURELODEMINE,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_SLUDGEFIELDS,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_SOUTHSHORE,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_STORMPIKE,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_EASTPOINTTOWER,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_TARREN_MILL,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_HILLSBRAD_FOOTHILLS_BRAZIE_FARMSTEAD,
		},
	},
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_HILLSBRAD_FOOTHILLS,
})