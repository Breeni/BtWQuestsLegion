-- AUTO GENERATED - NEEDS UPDATING
	
local MAP_ID = 16
local ACHIEVEMENT_ID = 4896

BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS = 119

BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_FALDIRS_COVE = 11901
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_GALENS_FALL = 11902
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_HAMMERFALL = 11903
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_REFUGE_POINT = 11904
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_MYZRAELS_POINT = 11905
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN1 = 11906
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN3 = 11907
BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN2 = 11908

BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_FALDIRS_COVE] = {
	name = GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 1),
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		type = "quest",
		id = 26628,
	},
	items = {
		{
			name = "Go to Professor Phizzlethorpe",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.2759, 0.8300, "Professor Phizzlethorpe")
			end,
			x = 3,
			y = 0,
			connections = {
				2,
			},
		},
		{
			name = "Go to Captain Steelgut",
			breadcrumb = true,
			aside = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.2772, 0.8327, "Captain Steelgut")
			end,
			x = 5,
			y = 0,
			connections = {
				2,
			},
		},
		{
			type = "quest",
			id = 26050,
			x = 3,
			y = 1,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26055,
			aside = true,
			x = 5,
			y = 1,
		},
		{
			type = "quest",
			id = 26051,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26052,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26628,
			x = 3,
			y = 4,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_GALENS_FALL] = {
	name = function ()
		return GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 2)
	end,
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Horde",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		{
			type = "quest",
			id = 26081,
		},
		{
			type = "quest",
			id = 26029,
		},
		{
			type = "quest",
			id = 26025,
		},
		{
			type = "quest",
			id = 26428,
		},
	},
	items = {
		{
			name = "Go to Genavie Callow",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.1377, 0.3391, "Genavie Callow")
			end,
			x = 1,
			y = 0,
			connections = {
				3,
			},
		},
		{
			variations = {
				{
					type = "quest",
					id = 28619,
					restrictions = {
						type = "quest",
						id = 28619,
						status = {'active', 'completed'},
					},
				},
				{
					type = "quest",
					id = 28572,
					restrictions = {
						type = "quest",
						id = 28572,
						status = {'active', 'completed'},
					},
				},
				{
					name = "Go to Dark Ranger Alina",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(16, 0, 0.1336, 0.3596, "Dark Ranger Alina")
					end,
				}
			},
			x = 3,
			y = 0,
			connections = {
				3,
			},
		},
		{
			name = "Go to Deathstalker Maudria",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.1335, 0.3414, "Deathstalker Maudria")
			end,
			x = 5,
			y = 0,
			connections = {
				3,
			},
		},


		{
			type = "quest",
			id = 26428,
			x = 0,
			y = 1,
		},
		{
			type = "quest",
			id = 26022,
			x = 3,
			y = 1,
			connections = {
                2, 3,
            },
		},
		{
			type = "quest",
			id = 26053,
			x = 6,
			y = 1,
			connections = {
                3,
            },
		},


		{
			type = "quest",
			id = 26025,
			x = 2,
			y = 2,
		},
		{
			type = "quest",
			id = 26023,
			x = 4,
			y = 2,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26027,
			x = 6,
			y = 2,
			connections = {
                2,
            },
		},

		
		{
			type = "quest",
			id = 26030,
			x = 3,
			y = 3,
			connections = {
                2,
            },
		},
		{
			type = "quest",
			id = 26029,
			x = 6,
			y = 3,
		},


		{
			type = "quest",
			id = 26031,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26032,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26033,
			x = 3,
			y = 6,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26081,
			x = 3,
			y = 7,
			connections = {
                1, 2,
            },
		},
		{
			type = "quest",
			id = 26083,
			aside = true,
			x = 2,
			y = 8,
			connections = {
				2,
			}
		},
		{
			type = "quest",
			id = 26084,
			aside = true,
			x = 4,
			y = 8,
			connections = {
				2,
			}
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_FALDIRS_COVE,
			aside = true,
			x = 2,
			y = 9,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_HAMMERFALL,
			aside = true,
			x = 4,
			y = 9,
		}
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_HAMMERFALL] = {
	name = function ()
		return GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 3)
	end,
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Horde",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		{
			type = "quest",
			id = 26912,
		},
		{
			type = "quest",
			id = 26108,
		}
	},
	items = {
		{
			name = "Go to Gor'mul",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.6771, 0.3479, "Gor'mul")
			end,
			x = 1,
			y = 0,
			connections = {
				3,
			},
		},
		{
			name = "Go to Zaruk",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.6968, 0.3652, "Zaruk")
			end,
			x = 3,
			y = 0,
			connections = {
				3,
			},
		},
		{
			name = "Go to Drum Fel",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.6898, 0.3481, "Drum Fel")
			end,
			x = 5,
			y = 0,
			connections = {
				3,
			},
		},


		{
			type = "quest",
			id = 26107,
			x = 1,
			y = 1,
			connections = {
                3,
            },
		},
		{
			type = "quest",
			id = 26909,
			x = 3,
			y = 1,
			connections = {
                3,
            },
		},
		{
			type = "quest",
			id = 26429,
			aside = true,
			x = 5,
			y = 1,
		},


		{
			type = "quest",
			id = 26108,
			x = 1,
			y = 2,
		},
		{
			type = "quest",
			id = 26039,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26041,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26042,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26911,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26912,
			x = 3,
			y = 6,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_REFUGE_POINT] = {
	name = function ()
		return GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 2)
	end,
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Alliance",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		{
			type = "quest",
			id = 26117,
		},
		{
			type = "quest",
			id = 26024,
		},
		{
			type = "quest",
			id = 26079,
		},
		{
			type = "quest",
			id = 26095,
		},
		{
			type = "quest",
			id = 26038,
		},
	},
	items = {
		{
			name = "Go to Commander Amaren",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.3987, 0.4784, "Commander Amaren")
			end,
			x = 0,
			y = 0,
			connections = {
				3,
			},
		},
		{
			name = "Go to Wanted Board",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.4018, 0.4906, "Wanted Board")
			end,
			x = 3,
			y = 0,
			connections = {
				3, 4,
			},
		},
		{
			variations = {
				{
					type = "quest",
					id = 28573,
					restrictions = {
						type = "quest",
						id = 28573,
						status = {'active', 'completed'},
					},
				},
				{
					type = "quest",
					id = 26139,
					restrictions = {
						type = "quest",
						id = 26139,
						status = {'active', 'completed'},
					},
				},
				{
					name = "Go to Captain Nials",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(16, 0, 0.3997, 0.4887, "Captain Nials")
					end,
				}
			},
			x = 6,
			y = 0,
			connections = {
				4,
			},
		},

		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN1,
			x = 0,
			y = 1,
		},
		{
			type = "quest",
			id = 26024,
			x = 2,
			y = 1,
		},
		{
			type = "quest",
			id = 26079,
			x = 4,
			y = 1,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN2,
			x = 6,
			y = 1,
		},

		
		{
			name = "Go to Skuerto",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.4034, 0.4914, "Skuerto")
			end,
			x = 3,
			y = 2,
			connections = {
				1, 2, 3, 4,
			},
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN3,
			x = 0,
			y = 3,
		},
		{
			type = "quest",
			id = 26336,
			x = 2,
			y = 3,
			connections = {
                
            },
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_MYZRAELS_POINT,
			x = 4,
			y = 3,
		},
		{
			type = "quest",
			id = 26943,
			x = 6,
			y = 3,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_MYZRAELS_POINT] = {
	name = function ()
		return GetAchievementCriteriaInfo(ACHIEVEMENT_ID, 3)
	end,
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Alliance",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		type = "quest",
		id = 26049,
	},
	items = {
		{
			name = "Go to Skuerto",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.4034, 0.4914, "Skuerto")
			end,
			x = 3,
			y = 0,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 26341,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26039,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26041,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26042,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26346,
			x = 3,
			y = 5,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26049,
			x = 3,
			y = 6,
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN1] = {
	name = {
		type = "quest",
		id = 26113,
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Alliance",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		type = "quest",
		id = 26117,
	},
	items = {
		{
			name = "Go to Commander Amaren",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.3987, 0.4784, "Commander Amaren")
			end,
			x = 3,
			y = 0,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 26113,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26110,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26114,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26116,
			x = 3,
			y = 4,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26117,
			x = 3,
			y = 5,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN2] = {
	name = {
		type = "quest",
		id = 26095,
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Alliance",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		type = "quest",
		id = 26095,
	},
	items = {
		{
			variations = {
				{
					type = "quest",
					id = 28573,
					restrictions = {
						type = "quest",
						id = 28573,
						status = {'active', 'completed'},
					},
				},
				{
					type = "quest",
					id = 26139,
					restrictions = {
						type = "quest",
						id = 26139,
						status = {'active', 'completed'},
					},
				},
				{
					name = "Go to Captain Nials",
					breadcrumb = true,
					onClick = function ()
						BtWQuests_ShowMapWithWaypoint(16, 0, 0.3997, 0.4887, "Captain Nials")
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
			id = 26093,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26095,
			x = 3,
			y = 2,
			connections = {
                
            },
		},
	}
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN3] = {
	name = {
		type = "quest",
		id = 26038,
	},
	category = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	range = {25, 60},
	restrictions = {
		type = "faction",
		faction = "Alliance",
	},
	prerequisites = {
		{
			type = "level",
			level = 25,
		},
	},
	completed = {
		type = "quest",
		id = 26038,
	},
	items = {
		{
			name = "Go to Skuerto",
			breadcrumb = true,
			onClick = function ()
				BtWQuests_ShowMapWithWaypoint(16, 0, 0.4034, 0.4914, "Skuerto")
			end,
			x = 3,
			y = 0,
			connections = {
				1,
			},
		},
		{
			type = "quest",
			id = 26035,
			x = 3,
			y = 1,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26036,
			x = 3,
			y = 2,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26037,
			x = 3,
			y = 3,
			connections = {
                1,
            },
		},
		{
			type = "quest",
			id = 26038,
			x = 3,
			y = 4,
			connections = {
                
            },
		},
	}
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS] = {
	name = GetMapNameByID(MAP_ID),
	expansion = BTWQUESTS_EXPANSION_CLASSIC,
	items = {
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_GALENS_FALL,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_REFUGE_POINT,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN1,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN3,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_CHAIN2,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_FALDIRS_COVE,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_HAMMERFALL,
		},
		{
			type = "chain",
			id = BTWQUESTS_CHAIN_CLASSIC_ARATHI_HIGHLANDS_MYZRAELS_POINT,
		},
	}
}

table.insert(BtWQuests_Expansions[BTWQUESTS_EXPANSION_CLASSIC], {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
})

BtWQuests_MapIDToItem[MAP_ID] = {
    type = "category",
    id = BTWQUESTS_CATEGORY_CLASSIC_ARATHI_HIGHLANDS,
}