BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_PROFESSIONS_UNDERLIGHT_ANGLER] = {
    name = BTWQUESTS_THE_UNDERLIGHT_ANGLER,
    category = BTWQUESTS_CATEGORY_LEGION_PROFESSIONS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "level",
            level = 110,
        },
        {
            type = "achievement",
            id = 10596,
        },
    },
    completed = {
        type = "quest",
        id = 41010,
    },
    range = {98, 110},
    items = {
        {
            name = BTWQUESTS_FISH_LUMINOUS_PEARL,
            breadcrumb = true,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 40960,
            x = 3,
            y = 1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 40961,
            x = 3,
            y = 2,
            connections = {
                1,
            }
        },
        {
            name = BTWQUESTS_WAIT_NAT_PAGLE,
            breadcrumb = true,
            x = 3,
            y = 3,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 41010,
            x = 3,
            y = 4,
        },
    },
}

BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_PROFESSIONS_INSCRIPTION] = {
    name = BTWQUESTS_INSCRIPTION,
    category = BTWQUESTS_CATEGORY_LEGION_PROFESSIONS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "level",
            level = 98,
        },
    },
    completed = {
        type = "quest",
        id = 39954,
    },
    range = {98, 110},
    items = {
        {
			{
				["y"] = 0,
				["x"] = 3,
				["id"] = 39847,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [1]
			{
				["y"] = 1,
				["x"] = 3,
				["id"] = 39931,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [2]
			{
				["y"] = 2,
				["x"] = 3,
				["id"] = 39932,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [3]
			{
				["id"] = 39933,
				["type"] = "quest",
				["y"] = 3,
				["x"] = 3,
			}, -- [4]
			{
				["y"] = 4,
				["x"] = 2,
				["id"] = 40056,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [5]
			{
				["y"] = 5,
				["x"] = 2,
				["id"] = 40057,
				["type"] = "quest",
				["connections"] = {
					3, -- [1]
					4, -- [2]
				},
			}, -- [6]
			{
				["y"] = 4,
				["x"] = 4,
				["id"] = 39934,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [7]
			{
				["y"] = 5,
				["x"] = 4,
				["id"] = 39935,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
					2, -- [2]
				},
			}, -- [8]
			{
				["y"] = 6,
				["x"] = 2,
				["id"] = 40061,
				["type"] = "quest",
				["connections"] = {
					5, -- [1]
					4, -- [2]
				},
			}, -- [9]
			{
				["y"] = 6,
				["x"] = 4,
				["id"] = 40058,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [10]
			{
				["y"] = 7,
				["x"] = 5,
				["id"] = 40059,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [11]
			{
				["id"] = 40060,
				["type"] = "quest",
				["x"] = 5,
				["y"] = 8,
			}, -- [12]
			{
				["y"] = 7,
				["x"] = 1,
				["id"] = 39940,
				["type"] = "quest",
				["connections"] = {
					2, -- [1]
				},
			}, -- [13]
			{
				["y"] = 7,
				["x"] = 3,
				["id"] = 40063,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [14]
			{
				["id"] = 39943,
				["type"] = "quest",
				["x"] = 2,
				["y"] = 8,
			}, -- [15]
			{
				["y"] = 9,
				["x"] = 3,
				["id"] = 39944,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
					2, -- [2]
				},
			}, -- [16]
			{
				["y"] = 10,
				["x"] = 2,
				["id"] = 39945,
				["type"] = "quest",
				["connections"] = {
					2, -- [1]
				},
			}, -- [17]
			{
				["y"] = 10,
				["x"] = 4,
				["id"] = 39946,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [18]
			{
				["y"] = 11,
				["x"] = 3,
				["id"] = 39947,
				["type"] = "quest",
				["connections"] = {
					1, -- [1]
				},
			}, -- [19]
			{
				["id"] = 40052,
				["type"] = "quest",
				["x"] = 3,
				["y"] = 12,
			}, -- [20]
			{
				["y"] = 13,
				["x"] = 3,
				["id"] = 39948,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [21]
			{
				["y"] = 14,
				["x"] = 3,
				["id"] = 39949,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [22]
			{
				["y"] = 15,
				["x"] = 3,
				["id"] = 39950,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [23]
			{
				["y"] = 16,
				["x"] = 3,
				["id"] = 39953,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [24]
			{
				["id"] = 39957,
				["type"] = "quest",
				["y"] = 17,
				["x"] = 3,
			}, -- [29]
			{
				["y"] = 18,
				["x"] = 3,
				["id"] = 39961,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [25]
			{
				["y"] = 19,
				["x"] = 3,
				["id"] = 39955,
				["connections"] = {
					1, -- [1]
				},
				["type"] = "quest",
			}, -- [26]
			{
				["id"] = 39956,
				["type"] = "quest",
				["y"] = 20,
				["x"] = 3,
			}, -- [27]
			{
				["id"] = 39954,
				["type"] = "quest",
				["y"] = 21,
				["x"] = 3,
			}, -- [28]
        },
    },
}



BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_PROFESSIONS] = {
    name = BTWQUESTS_PROFESSIONS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_PROFESSIONS_INSCRIPTION,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_PROFESSIONS_UNDERLIGHT_ANGLER,
        },
    },
}

