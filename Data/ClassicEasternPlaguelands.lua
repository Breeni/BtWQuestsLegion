BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_PALADIN_PALS] = {
    name = GetAchievementCriteriaInfo(4892, 1),
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
    },
    completed = {
        type = "quest",
        id = 27373,
    },
    range = {40,60},
    items = {
        {
            {
                name = "Go to Fiona",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(23, 0, 0.0902, 0.6652, "Fiona")
                end,
                x = 3,
                y = 0,
                connections = {
                    1, 2,
                },
            },
        },
        {
            type = "quest",
            id = 27367,
            x = 2,
            y = 1,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27370,
            x = 4,
            y = 1,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27368,
            x = 2,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27371,
            x = 4,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27369,
            x = 2,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27372,
            x = 4,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27373,
            x = 3,
            y = 4,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_REDPATH,
            aside = true,
            x = 3,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_REDPATH] = {
    name = GetAchievementCriteriaInfo(4892, 2),
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
    },
    completed = {
        type = "quest",
        id = 27391,
    },
    range = {40,60},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_PALADIN_PALS,
            x = 1,
            y = 0,
            connections = {
                3, 4,
            },
        },
        {
            name = "Go to Carlin Redpath",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.3557, 0.6889, "Carlin Redpath")
            end,
            x = 4,
            y = 0,
            connections = {
                4,
            },
        },
        {
            name = "Go to Urk Gagbaz",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.3501, 0.6815, "Urk Gagbaz")
            end,
            x = 6,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27381,
            x = 0,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27382,
            x = 2,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27383,
            x = 4,
            y = 1,
            connections = {
                3,
                4,
            },
        },
        {
            type = "quest",
            id = 27432,
            x = 6,
            y = 1,
        },
        {
            type = "quest",
            id = 27448,
            x = 1,
            y = 2,
        },
        {
            type = "quest",
            id = 27384,
            x = 3,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27392,
            x = 5,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27385,
            x = 4,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27386,
            x = 3,
            y = 4,
            connections = {
                1,
                2,
                3,
                4,
            },
        },
        {
            type = "quest",
            id = 27544,
            x = 0,
            y = 5,
            connections = {
                4,
                5,
            },
        },
        {
            type = "quest",
            id = 27387,
            x = 2,
            y = 5,
            connections = {
                5,
            },
        },
        {
            type = "quest",
            id = 27388,
            x = 4,
            y = 5,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27389,
            x = 6,
            y = 5,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27420,
            x = 0,
            y = 6,
        },
        {
            type = "quest",
            id = 27421,
            x = 2,
            y = 6,
        },
        {
            type = "quest",
            id = 27390,
            x = 4,
            y = 6,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27391,
            x = 4,
            y = 7,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_LIGHTS_SHIELD_TOWER] = {
    name = "Light's Shield Tower",
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
    },
    completed = {
        type = "quest",
        id = 27454,
    },
    range = {40,60},
    items = {
        {
            type = "quest",
            id = 27448,
            x = 0,
            y = 0,
            connections = {
                3,
            },
        },
        {
            name = "Go to Betina Bigglezink",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.5322, 0.5459, "Betina Bigglezink")
            end,
            x = 3,
            y = 0,
            connections = {
                3, 4,
            },
        },
        {
            name = "Go to Frederick Calston",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.5379, 0.5399, "Frederick Calston")
            end,
            x = 6,
            y = 0,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27455,
            x = 0,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27451,
            x = 2,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27452,
            x = 4,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27450,
            x = 6,
            y = 1,
        },
        {
            type = "quest",
            id = 27463,
            x = 0,
            y = 2,
        },
        {
            type = "quest",
            id = 27453,
            x = 3,
            y = 2,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27449,
            x = 5,
            y = 2,
        },
        {
            type = "quest",
            id = 27454,
            x = 3,
            y = 3,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_LIGHTS_HOPE_CHAPEL] = {
    name = "Light's Hope Chapel",
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
        {
            type = "quest",
            id = 27455,
        },
    },
    completed = {
        type = "quest",
        id = 27466,
    },
    range = {40,60},
    items = {
        {
            name = "Go to Smokey LaRue",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.7491, 0.5350, "Smokey LaRue")
            end,
            x = 2,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            type = "quest",
            id = 27455,
            x = 4,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            name = "Go to Rimblat Earthshatter",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.7378, 0.5189, "Rimblat Earthshatter")
            end,
            x = 6,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_TYRS_HAND,
            x = 0,
            y = 1,
        },
        {
            type = "quest",
            id = 27458,
            x = 2,
            y = 1,
        },
        {
            type = "quest",
            id = 27463,
            x = 4,
            y = 1,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27456,
            x = 6,
            y = 1,
            connections = {
                7,
            },
        },
        {
            type = "quest",
            id = 27464,
            x = 3,
            y = 2,
            connections = {
                1,
                2,
                3,
                4,
            },
        },
        {
            type = "quest",
            id = 28756,
            x = 5,
            y = 2,
        },
        {
            type = "quest",
            id = 28755,
            x = 0,
            y = 3,
        },
        {
            type = "quest",
            id = 27467,
            x = 2,
            y = 3,
        },
        {
            type = "quest",
            id = 27465,
            x = 4,
            y = 3,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27466,
            x = 4,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27457,
            x = 6,
            y = 4,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_CRUSADE,
            x = 4,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_TYRS_HAND] = {
    name = GetAchievementCriteriaInfo(4892, 3),
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
    },
    completed = {
        type = "quest",
        id = 27620,
    },
    range = {40,60},
    items = {
        {
            name = "Go to Leonid Barthalomew the Revered",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.7561, 0.5203, "Leonid Barthalomew the Revered")
            end,
            x = 3,
            y = 0,
            connections = {
                1, 
            },
        },
        {
            type = "quest",
            id = 27459,
            x = 3,
            y = 1,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27461,
            x = 2,
            y = 3,
            connections = {
                4,
                5,
            },
        },
        {
            type = "quest",
            id = 27462,
            x = 4,
            y = 3,
            connections = {
                1,
                2,
                5,
                6,
            },
        },
        {
            type = "quest",
            id = 27614,
            x = 6,
            y = 2,
            connections = {
                7,
            },
        },
        {
            type = "quest",
            id = 27616,
            x = 6,
            y = 3,
            connections = {
                6,
            },
        },
        {
            type = "quest",
            id = 27613,
            x = 0,
            y = 4,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27612,
            x = 2,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27615,
            x = 4,
            y = 4,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27619,
            x = 6,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27617,
            x = 1,
            y = 5,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27618,
            x = 5,
            y = 5,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27620,
            x = 3,
            y = 6,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_CRUSADE] = {
    name = GetAchievementCriteriaInfo(4892, 4),
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_LIGHTS_HOPE_CHAPEL,
        },
    },
    completed = {
        type = "quest",
        id = 27489,
    },
    range = {40,60},
    items = {
        {
            name = "Go to Deacon Andaal",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.6127, 0.4289, "Deacon Andaal")
            end,
            x = 2,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_LIGHTS_HOPE_CHAPEL,
            x = 4,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            name = "Go to Gamella Cracklefizz",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.6158, 0.4312, "Gamella Cracklefizz")
            end,
            x = 6,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            type = "quest",
            id = 27481,
            x = 0,
            y = 1,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27479,
            x = 2,
            y = 1,
        },
        {
            type = "quest",
            id = 27487,
            x = 4,
            y = 1,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27477,
            x = 6,
            y = 1,
        },
        {
            type = "quest",
            id = 27482,
            x = 0,
            y = 2,
        },
        {
            type = "quest",
            id = 27488,
            x = 4,
            y = 2,
            connections = {
                1,
            },
        },
        {
            type = "quest",
            id = 27489,
            x = 4,
            y = 3,
            connections = {
                1,
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_JOURNEYS_END,
            x = 4,
            y = 4,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_JOURNEYS_END] = {
    name = GetAchievementCriteriaInfo(4892, 5),
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_CRUSADE,
        },
    },
    completed = {
        type = "quest",
        id = 27527,
    },
    range = {40,60},
    items = {
        {
            name = "Go to Kirkian Dawnshield",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.5000, 0.1952, "Kirkian Dawnshield")
            end,
            x = 0,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_CRUSADE,
            x = 2,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            name = "Go to Argent Officer Irizarry",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.5163, 0.2142, "Argent Officer Irizarry")
            end,
            x = 4,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            name = "Go to Corpseburner Tim",
            breadcrumb = true,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(23, 0, 0.4800, 0.2304, "Corpseburner Tim")
            end,
            x = 6,
            y = 0,
            connections = {
                4, 
            },
        },
        {
            type = "quest",
            id = 27521,
            x = 0,
            y = 1,
        },
        {
            type = "quest",
            id = 27522,
            x = 2,
            y = 1,
            connections = {
                3,
                6,
            },
        },
        {
            type = "quest",
            id = 27422,
            x = 4,
            y = 1,
        },
        {
            type = "quest",
            id = 27523,
            x = 6,
            y = 1,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_PLAGUEWOOD,
            x = 0,
            y = 2,
        },
        {
            type = "quest",
            id = 27528,
            x = 5,
            y = 2,
            connections = {
                6,
            },
        },
        {
            type = "quest",
            id = 27551,
            x = 0,
            y = 3,
            connections = {
                4,
            },
        },
        {
            type = "quest",
            id = 27524,
            x = 2,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27529,
            x = 4,
            y = 3,
            connections = {
                3,
            },
        },
        {
            type = "quest",
            id = 27539,
            x = 6,
            y = 3,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27526,
            x = 1,
            y = 4,
            connections = {
                2,
            },
        },
        {
            type = "quest",
            id = 27530,
            x = 5,
            y = 4,
        },
        {
            type = "quest",
            id = 27527,
            x = 1,
            y = 5,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_PLAGUEWOOD] = {
    name = "Plaguewood Tower",
    category = BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS,
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    restrictions = {
        {
            type = "faction",
            faction = "Alliance",
        },
    },
    prerequisites = {
        {
            type = "level",
            level = 40,
        },
    },
    completed = {
        type = "quest",
        id = 27489,
    },
    range = {40,60},
    items = {
        {
            {
                type = "quest",
                id = 27532,
                restrictions = {
                    {
                        type = "quest",
                        id = 27532,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    1,
                    2,
                },
            },
            {
                type = "quest",
                id = 27532,
                restrictions = {
                    {
                        type = "quest",
                        id = 27532,
                        active = true,
                    }
                },
                x = 3,
                y = 0,
                connections = {
                    1,
                    2,
                },
            },
            {
                name = "Go to Argent Apothecary Judkins",
                breadcrumb = true,
                onClick = function ()
                    BtWQuests_ShowMapWithWaypoint(23, 0, 0.1755, 0.2788, "Argent Apothecary Judkins")
                end,
                x = 3,
                y = 0,
                connections = {
                    1,
                    2,
                },
            },
        },
        {
            type = "quest",
            id = 27531,
            x = 2,
            y = 1,
        },
        {
            type = "quest",
            id = 27535,
            breadcrumb = true,
            x = 5,
            y = 1,
            connections = {
                1,
                2,
            },
        },
        {
            type = "quest",
            id = 27533,
            x = 4,
            y = 2,
        },
        {
            type = "quest",
            id = 27534,
            x = 6,
            y = 2,
        },
    },
}
BtWQuests_Categories[BTWQUESTS_CATEGORY_CLASSIC_EASTERN_PLAGUELANDS] = {
    name = GetMapNameByID(23),
    expansion = BTWQUESTS_EXPANSION_CLASSIC,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_PALADIN_PALS,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_REDPATH,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_LIGHTS_SHIELD_TOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_LIGHTS_HOPE_CHAPEL,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_TYRS_HAND,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_CRUSADE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_JOURNEYS_END,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_CLASSIC_EASTERN_PLAGUELANDS_PLAGUEWOOD,
        },
    },
}
