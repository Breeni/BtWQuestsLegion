-- AUTO GENERATED - NEEDS UPDATING
	
local MAP_ID = 42
local ACHIEVEMENT_ID = 4928

BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE = 108

BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_GREAT_ANIMAL_SPIRIT = 10801
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_SHATTERSPEAR = 10802
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_EYE_OF_ALL_STORMS = 10803
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_DEVOURER = 10804
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CONSUMED_BY_MADNESS = 10805
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_BATTLE_FOR_DARKSHORE = 10806
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN6 = 10800006
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN7 = 10800007
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN10 = 10800010
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN11 = 10800011
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN12 = 10800012
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN13 = 10800013
BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_OTHER_ALLIANCE = 10808

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_GREAT_ANIMAL_SPIRIT] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 1),
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13569,
	},
	items = {
		{
			variations = {
				{
					type = "quest",
					id = 26385,
					restrictions = {
						{
							type = "race",
							race = BTWQUESTS_RACE_ID_WORGEN,
						},
					},
				},
				{
					type = "quest",
					id = 26383,
					restrictions = {
						{
							type = "quest",
							id = 26383,
							status = {'active', 'completed'},
						}
					},
				},
				{
					type = "quest",
					id = 28490,
					restrictions = {
						{
							type = "quest",
							id = 28490,
							status = {'active', 'completed'},
						}
					},
				},
				{
					name = "Go to Dentaria Silverglade",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(42, 0, 0.5179, 0.1801, "Dentaria Silverglade")
					end,
				}
			},
			x = 2,
			y = 0,
			connections = {
				2,
			},
		},
		{
			name = "Go to Ranger Glynda Nal'Shea",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(42, 0, 0.5022, 0.1979, "Ranger Glynda Nal'Shea")
			end,
			x = 4,
			y = 0,
			connections = {
				2,
			},
		},
		{
			type = "quest",
			id = 13518,
			x = 2,
			y = 1,
			connections = {
                2, 3,
            },
		},
		{
			type = "quest",
			id = 13522,
			x = 4,
			y = 1,
			connections = {
                1, 2,
            },
		},
		{
			type = "quest",
			id = 13520,
			x = 2,
			y = 2,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13521,
			x = 4,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13527,
			x = 4,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13528,
			x = 4,
			y = 4,
			connections = {
                1, 2, 3, 4,
            },
		},


		{
			type = "quest",
			id = 13831,
			x = 0,
			y = 5,
			connections = {
                5, 6, 7,
            },
		},
		{
			type = "quest",
			id = 13557,
			x = 2,
			y = 5,
			connections = {
                4, 5, 6,
            },
		},
		{
			type = "quest",
			id = 13529,
			x = 4,
			y = 5,
			connections = {
                3, 4, 5,
            },
		},
		{
			type = "quest",
			id = 13554,
			x = 6,
			y = 5,
			connections = {
                2, 3,
            },
		},

		
		{
			type = "quest",
			id = 13561,
			x = 0,
			y = 6,
		},
		{
			type = "quest",
			id = 13562,
			x = 2,
			y = 6,
		},
		{
			type = "quest",
			id = 13564,
			x = 4,
			y = 6,
			connections = {
                2, 3, 4,
            },
		},
		{
			type = "quest",
			id = 13563,
			x = 6,
			y = 6,
		},


		{
			type = "quest",
			id = 13598,
			x = 1,
			y = 7,
			connections = {
                3,
            },
		},
		{
			type = "quest",
			id = 13566,
			x = 3,
			y = 7,
			connections = {
                2,
			},
		},
		{
			type = "quest",
			id = 13565,
			x = 5,
			y = 7,
			connections = {
                1,
            },
		},


		{
			type = "quest",
			id = 13569,
			x = 3,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13599,
			aside = true,
			x = 3,
			y = 9,
			connections = {
                1, 2,
            },
		},

		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN6,
			aside = true,
			x = 2,
			y = 10,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_SHATTERSPEAR,
			aside = true,
			x = 4,
			y = 10,
		}
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_SHATTERSPEAR] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 2),
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13515,
	},
	items = {
		{
			type = "quest",
			id = 13589,
			x = 3,
			y = 1,
			connections = {
                1, 2, 3,
            },
		},
		{
			type = "quest",
			id = 13504,
			x = 2,
			y = 2,
			connections = {
                3, 4,
            },
		},
		{
			type = "quest",
			id = 13505,
			x = 4,
			y = 2,
			connections = {
                2, 3,
            },
		},
		{
			type = "quest",
			id = 13506,
			aside = true,
			x = 6,
			y = 2,
			connections = {
                3,
            },
		},


		{
			type = "quest",
			id = 13507,
			x = 2,
			y = 3,
			connections = {
                3, 4, 5,
            },
		},
		{
			type = "quest",
			id = 13509,
			x = 4,
			y = 3,
			connections = {
                2, 3, 4,
            },
		},
		{
			type = "quest",
			id = 13508,
			aside = true,
			x = 6,
			y = 3,
			connections = {
                4,
            },
		},


		{
			type = "quest",
			id = 13844,
			aside = true,
			x = 0,
			y = 4,
		},
		{
			type = "quest",
			id = 13513,
			x = 2,
			y = 4,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 13512,
			x = 4,
			y = 4,
			connections = {
                3,
            },
		},
		{
			type = "quest",
			id = 13511,
			aside = true,
			x = 6,
			y = 4,
		},


		{
			type = "quest",
			id = 13514,
			aside = true,
			x = 1,
			y = 5,
		},
		{
			type = "quest",
			id = 13590,
			x = 3,
			y = 5,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 13510,
			aside = true,
			x = 6,
			y = 5,
		},
		{
			type = "quest",
			id = 13515,
			x = 3,
			y = 6,
			connections = {
                1,
            },
		},


		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN7,
			aside = true,
			x = 3,
			y = 7,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_EYE_OF_ALL_STORMS] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 3),
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13588,
	},
	items = {
		
		{
			type = "quest",
			id = 13573,
			x = 4,
			y = 0,
			connections = {
                1, 2, 3,
            },
		},


		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN11,
			x = 6,
			y = 1,
			connections = {
                3,
            },
		},	
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN12,
			x = 4,
			y = 1,
			connections = {
                2,
            },
		},	
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN10,
			x = 2,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13586,
			x = 4,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13587,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13940,
			x = 3,
			y = 6,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13588,
			x = 3,
			y = 7,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13902,
			aside = true,
			x = 3,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_DEVOURER,
			aside = true,
			x = 3,
			y = 9,
		}
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_DEVOURER] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 4),
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13891,
	},
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_BATTLE_FOR_DARKSHORE,
			aside = true,
			x = 1,
			y = 1,
		},
		{
			type = "quest",
			id = 13881,
			x = 3,
			y = 1,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 13525,
			aside = true,
			x = 5,
			y = 1,
			connections = {
                2,
            },
		},


		{
			type = "quest",
			id = 13882,
			x = 3,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CONSUMED_BY_MADNESS,
			aside = true,
			x = 5,
			y = 2,
		},

		{
			type = "quest",
			id = 13925,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		
		{
			type = "quest",
			id = 13885,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13891,
			x = 3,
			y = 5,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CONSUMED_BY_MADNESS] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 5),
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13546,
	},
	items = {
		{
			type = "quest",
			id = 13526,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13544,
			x = 3,
			y = 2,
			connections = {
                1, 2,
            },
		},
		{
			type = "quest",
			id = 13545,
			x = 3,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 13572,
			x = 5,
			y = 3,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13546,
			x = 3,
			y = 4,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_BATTLE_FOR_DARKSHORE] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 6),
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13897,
	},
	items = {
		{
			type = "quest",
			id = 13892,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13948,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13896,
			x = 3,
			y = 3,
			connections = {
                3,
            },
		},


		{
			type = "quest",
			id = 13912,
			x = 0,
			y = 4,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 13907,
			x = 2,
			y = 4,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 13893,
			x = 4,
			y = 4,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 13911,
			x = 6,
			y = 4,
			connections = {
                
            },
		},

		
		{
			type = "quest",
			id = 13918,
			x = 0,
			y = 5,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13909,
			x = 2,
			y = 5,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 13895,
			x = 4,
			y = 5,
			connections = {
                2,
            },
		},


		{
			type = "quest",
			id = 13910,
			x = 2,
			y = 6,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13953,
			x = 4,
			y = 6,
			connections = {
                1, 2,
            },
		},


		{
			type = "quest",
			id = 13898,
			x = 2,
			y = 7,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13899,
			x = 4,
			y = 7,
			connections = {
                1,
            },
		},


		{
			type = "quest",
			id = 13900,
			x = 4,
			y = 8,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13897,
			x = 4,
			y = 9,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN6] = {
	name = "The Last Wave of Survivors",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13518,
	},
	items = {
		{
			type = "quest",
			id = 13560,
			x = 4,
			y = 1,
			connections = {

            },
		},

	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN7] = {
	name = "One Bitter Wish",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13511,
	},
	items = {
		{
			type = "quest",
			id = 13591,
			x = 3,
			y = 0,
			connections = {
                1, 2, 3,
            },
		},

		
		{
			type = "quest",
			id = 13570,
			x = 0,
			y = 1,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13519,
			x = 2,
			y = 1,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13596,
			x = 4,
			y = 1,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 13523,
			x = 6,
			y = 1,
			connections = {
                
            },
		},

		
		{
			type = "quest",
			id = 13601,
			x = 4,
			y = 2,
			connections = {
                1,
            },
		},

		
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN13,
			x = 4,
			y = 3,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN10] = {
	name = "Sworn to Protect",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13585,
	},
	items = {
		{
			type = "quest",
			id = 13579,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13584,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13585,
			x = 3,
			y = 3,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN11] = {
	name = "The Blackwood Pledge",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13581,
	},
	items = {
		{
			type = "quest",
			id = 13575,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13576,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13580,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13581,
			x = 3,
			y = 4,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN12] = {
	name = "Elune's Fire",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13582,
	},
	items = {
		{
			type = "quest",
			id = 13577,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13578,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13582,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 13583,
			x = 3,
			y = 4,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN13] = {
	name = "Auberdine Refugee Camp",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 13582,
	},
	items = {
		{
			type = "quest",
			id = 13547,
			x = 0,
			y = 1,
			connections = {
                4,
            },
		},
		{
			type = "quest",
			id = 13542,
			x = 2,
			y = 1,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13543,
			x = 4,
			y = 1,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13605,
			x = 6,
			y = 1,
			connections = {
                
            },
		},

		
		{
			type = "quest",
			id = 13558,
			x = 0,
			y = 2,
			connections = {
                
            },
		},

		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_EYE_OF_ALL_STORMS,
			aside = true,
			x = 4,
			y = 2,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_OTHER_ALLIANCE] = {
	name = "Other Alliance",
	category = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {1, 60},
	completed = {
		type = "quest",
		id = 0,
	},
	items = {
		{
			type = "quest",
			id = 5713,
			x = 2,
			y = 1,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13537,
			x = 2,
			y = 5,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13567,
			x = 4,
			y = 7,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13568,
			x = 6,
			y = 7,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 13597,
			x = 0,
			y = 10,
			connections = {
                
            },
		},
		{
			type = "quest",
			id = 28529,
			x = 2,
			y = 11,
			connections = {
                
            },
		},
	}
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE] = {
	name = GetMapNameByID(MAP_ID),
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	buttonImage = 1498157,
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_GREAT_ANIMAL_SPIRIT,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_SHATTERSPEAR,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_EYE_OF_ALL_STORMS,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_DEVOURER,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CONSUMED_BY_MADNESS,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_THE_BATTLE_FOR_DARKSHORE,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN6,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN7,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN10,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN11,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN12,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_CHAIN13,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_DARKSHORE_OTHER_ALLIANCE,
		},
	}
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_DARKSHORE,
}