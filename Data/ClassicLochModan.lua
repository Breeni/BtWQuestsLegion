local MAP_ID = 35
local ACHIEVEMENT_ID = 4899

BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN = 109

BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_ROAD_TO_THELSAMAR = 10901
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_AXIS_OF_AWFUL = 10902
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_TWILIGHT_THREATS = 10903
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_FARSTRIDER_LODGE = 10904
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN1 = 10900001
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN2 = 10900002
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN3 = 10900003
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN4 = 10900004
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN5 = 10900005
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN6 = 10900006
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN7 = 10900007
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN8 = 10900008
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN9 = 10900009
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_OTHER_BOTH = 10900
BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_OTHER_ALLIANCE = 10908

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_ROAD_TO_THELSAMAR] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 1),
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN8,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN1,
		},
		{
			type = "quest",
			id = 25118,
		},
		{
			type = "quest",
			id = 26842,
		},
		{
			type = "quest",
			id = 26860,
		},
		{
			type = "quest",
			id = 13648,
		},
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN8,
			x = 2,
			y = 0,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN1,
			x = 4,
			y = 0,
		},
		{
			name = "Go to Dakk Blunderblast",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(35, 0, 0.3602, 0.4426, "Dakk Blunderblast")
			end,
			x = 0,
			y = 1,
			connections = {
				4,
			},
		},
		{
			variations = {
				{
					type = "quest",
					id = 26176,
					restrictions = {
						{
							type = "quest",
							id = 26176,
							status = {'active', 'completed'},
						}
					},
				},
				{
					name = "Go to Mountaineer Kadrell",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(35, 0, 0.3507, 0.4658, "Mountaineer Kadrell")
					end,
				}
			},
			x = 2,
			y = 1,
			connections = {
				4,
			},
		},
		{
			name = "Go to Vidra Hearthstove",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(35, 0, 0.3482, 0.4928, "Vidra Hearthstove")
			end,
			x = 4,
			y = 1,
			connections = {
				4,
			},
		},
		{
			name = "Go to the Wanted! sign",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(35, 0, 0.3730, 0.4651, "Wanted! sign")
			end,
			x = 6,
			y = 1,
			connections = {
				4,
			},
		},
		{
			type = "quest",
			id = 25118,
			x = 0,
			y = 2,
		},
		{
			type = "quest",
			id = 26842,
			x = 2,
			y = 2,
		},
		{
			type = "quest",
			id = 26860,
			x = 4,
			y = 2,
		},
		{
			type = "quest",
			id = 13648,
			x = 6,
			y = 2,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_AXIS_OF_AWFUL,
			x = 2,
			y = 3,
		},
		{
			type = "quest",
			id = 13656,
			x = 6,
			y = 3,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_AXIS_OF_AWFUL] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 2),
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 26868,
	},
	items = {
		{
			variations = {
				{
					type = "quest",
					id = 13636,
					restrictions = {
						type = "quest",
						id = 13636,
						status = {'active', 'completed'},
					},
				},
				{
					name = "Go to Mountaineer Stormpike",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(35, 0, 0.2545, 0.1796, "Mountaineer Stormpike")
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
			id = 26843,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26844,
			x = 3,
			y = 2,
			connections = {
                1, 2, 3,
            },
		},
		

		{
			type = "quest",
			id = 26863,
			aside = true,
			x = 1,
			y = 3,
		},
		{
			type = "quest",
			id = 26845,
			x = 3,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26846,
			aside = true,
			x = 5,
			y = 3,
		},
		{
			type = "quest",
			id = 26864,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26927,
			x = 3,
			y = 5,
			connections = {
                1, 2, 3,
            },
		},
		{
			type = "quest",
			id = 26932,
			aside = true,
			x = 1,
			y = 6,
		},
		{
			type = "quest",
			id = 26928,
			x = 3,
			y = 6,
			connections = {
                3,
            },
		},
		{
			type = "quest",
			id = 26929,
			aside = true,
			x = 5,
			y = 6,
		},
		{
			type = "quest",
			id = 13655,
			aside = true,
			x = 1,
			y = 7,
		},
		{
			type = "quest",
			id = 26868,
			x = 3,
			y = 7,
			connections = {
				1,
			},
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN6,
			aside = true,
			x = 3,
			y = 8,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_TWILIGHT_THREATS] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 3),
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 27116,
	},
	items = {
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_FARSTRIDER_LODGE] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 4),
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 27033,
	},
	items = {
		{
			variations = {
				{
					type = "quest",
					id = 13647,
					restrictions = {
						{
							type = "quest",
							id = 13647,
							status = {'active'}
						},
					},
				},
				{
					name = "Go to Marek Ironheart",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(35, 0, 0.8176, 0.6166, "Marek Ironheart")
					end,
				},
			},
			x = 0,
			y = 0,
			connections = {
                4,
            },
		},
		{
			name = "Go to Safety Warden Pipsy",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(35, 0, 0.8278, 0.6347, "Safety Warden Pipsy")
			end,
			x = 2,
			y = 0,
			connections = {
                4,
            },
		},
		{
			name = "Go to Bingles Blastenheimer",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(35, 0, 0.8165, 0.6475, "Bingles Blastenheimer")
			end,
			x = 4,
			y = 0,
			connections = {
                4,
            },
		},
		{
			name = "Go to Daryl the Younglin",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(35, 0, 0.8349, 0.6537, "Daryl the Youngling")
			end,
			x = 6,
			y = 0,
			connections = {
                4,
            },
		},

		{
			type = "quest",
			id = 27028,
			aside = true,
			x = 0,
			y = 1,
		},
		{
			type = "quest",
			id = 27025,
			aside = true,
			x = 2,
			y = 1,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 27031,
			x = 4,
			y = 1,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 27016,
			x = 6,
			y = 1,
			connections = {
                4,
            },
		},


		{
			type = "quest",
			id = 27030,
			aside = true,
			x = 0,
			y = 2,
		},
		{
			type = "quest",
			id = 27026,
			aside = true,
			x = 2,
			y = 2,
		},


		{
			type = "quest",
			id = 27032,
			x = 4,
			y = 2,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 27036,
			x = 6,
			y = 2,
			connections = {
                4,
            },
		},

		{
			type = "quest",
			id = 13659,
			aside = true,
			x = 0,
			y = 3,
		},
		{
			type = "quest",
			id = 13660,
			aside = true,
			x = 2,
			y = 3,
		},




		{
			type = "quest",
			id = 27033,
			x = 4,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 27037,
			x = 6,
			y = 3,
		},
		{
			type = "quest",
			id = 27034,
			x = 4,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 27035,
			x = 4,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 27074,
			x = 4,
			y = 6,
			connections = {
                1, 2,
            },
		},

		
		{
			type = "quest",
			id = 27075,
			x = 3,
			y = 7,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 27077,
			x = 5,
			y = 7,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 27078,
			x = 4,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 27115,
			x = 4,
			y = 9,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 27116,
			x = 4,
			y = 10,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN1] = {
	name = {
		type = "quest",
		id = 26148,
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 26148,
	},
	items = {
		{
			variations = {
				{
					type = "quest",
					id = 13635,
					restrictions = {
						type = "quest",
						id = 13635,
						status = {'active', 'completed'},
					},
				},
				{
					name = "Go to Captain Rugelfuss",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(MAP_ID, 0, 0.2338, 0.7505, "Captain Rugelfuss")
					end,
				},
			},
			x = 2,
			y = 0,
			connections = {
                2,
            },
		},
		{
			name = "Go to Mountaineer Cobbleflint",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(MAP_ID, 0, 0.2333, 0.7492, "Mountaineer Cobbleflint")
			end,
			x = 4,
			y = 0,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26145,
			x = 2,
			y = 1,
		},
		{
			type = "quest",
			id = 26146,
			x = 4,
			y = 1,
			connections = {
                1, 2,
            },
		},
		{
			type = "quest",
			id = 26148,
			x = 2,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26147,
			x = 4,
			y = 2,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_ROAD_TO_THELSAMAR,
			aside = true,
            visible = {
                {
                    type = "quest",
                    id = 26842,
                    restrictions = {
                        type = "quest",
                        id = 26176,
                        status = {'notcompleted'}
                    },
                    status = {'notactive'}
                },
                {
                    type = "quest",
                    id = 26842,
                    restrictions = {
                        type = "quest",
                        id = 26176,
                        status = {'notcompleted'}
                    },
                    status = {'notcompleted'}
                }
            },
            active = {
                type = "quest",
                id = 26176,
                status = {'active', 'completed'}
            },
			x = 3,
			y = 3,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN2] = {
	name = "After the Ambush",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 454,
	},
	items = {
		{
			type = "quest",
			id = 273,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 454,
			x = 3,
			y = 2,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN3] = {
	name = "Defcon: Bobcat",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 27026,
	},
	items = {
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN4] = {
	name = "Vyrin's Revenge",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 27037,
	},
	items = {
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN5] = {
	name = "Kobold and Kobolder",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 26844,
	},
	items = {

	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN6] = {
	name = "Keep Your Hands Off The Goods!",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		{
			type = "quest",
			id = 13650,
		},
		{
			type = "quest",
			id = 13647,
		},
	},
	items = {
		{
			type = "quest",
			id = 13639,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 309,
			x = 3,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 13658,
			aside = true,
			x = 1,
			y = 3,
		},
		{
			type = "quest",
			id = 13650,
			x = 3,
			y = 3,
		},
		{
			type = "quest",
			id = 26961,
			x = 5,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13647,
			x = 5,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_FARSTRIDER_LODGE,
			aside = true,
			x = 5,
			y = 5,
		}
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN7] = {
	name = "Joining the Hunt",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13647,
	},
	items = {
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_OTHER_BOTH] = {
	name = "Other Both",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 0,
	},
	items = {
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_OTHER_ALLIANCE] = {
	name = "Other Alliance",
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 0,
	},
	items = {
		{-- Breadcrumb
			type = "quest",
			id = 26131,
			x = 0,
			y = 0,
			connections = {
                
            },
		},
		{-- Missing
			type = "quest",
			id = 301,
			x = 4,
			y = 1,
			connections = {
                
            },
		},
		{ -- Document 3 of 6
			type = "quest",
			id = 13657,
			x = 0,
			y = 3,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13661,
			x = 6,
			y = 3,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN8] = {
	name = {
		type = "quest",
		id = 26855
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {10, 60},
	completed = {
		type = "quest",
		id = 26855,
	},
	items = {
		{
			variations = {
				{
					type = "quest",
					id = 28567,
					restrictions = {
						{
							type = "quest",
							id = 26805,
							status = {'active', 'completed'},
						}
					},
				},
				{
					name = "Go to Pilot Hammerfoot",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(35, 0, 0.1401, 0.5649, "Pilot Hammerfoot")
					end,
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
			id = 26854,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26855,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN1,
			aside = true,
            visible = {
                {
                    type = "quest",
                    id = 26145,
                    restrictions = {
                        type = "quest",
                        id = 13635,
                        status = {'notcompleted'}
                    },
                    status = {'notactive'}
                },
                {
                    type = "quest",
                    id = 26145,
                    restrictions = {
                        type = "quest",
                        id = 13635,
                        status = {'notcompleted'}
                    },
                    status = {'notcompleted'}
                }
            },
            active = {
                type = "quest",
                id = 13635,
                status = {'active', 'completed'}
            },
			x = 3,
			y = 3,
		},
	}
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN] = {
	name = GetMapNameByID(MAP_ID),
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	buttonImage = 1498157,
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN8,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN1,
		},

		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_ROAD_TO_THELSAMAR,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_AXIS_OF_AWFUL,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_TWILIGHT_THREATS,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_THE_FARSTRIDER_LODGE,
		},

		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN2,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN3,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN4,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN5,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN6,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_CHAIN7,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_OTHER_BOTH,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_LOCH_MODAN_OTHER_ALLIANCE,
		},
	}
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_LOCH_MODAN,
}