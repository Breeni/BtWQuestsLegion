BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_ORDERHALL_LIGHTSHEART] = {
    name = BTWQUESTS_LIGHTS_HEART,
    category = BTWQUESTS_CATEGORY_LEGION_ORDERHALL,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "level",
            level = 102,
        },
    },
    completed = {
        type = "quest",
        id = 45177,
    },
    range = {100, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PALADIN_CAMPAIGN,
            breadcrumb = true,
            restrictions = {
                {
                    type = "class",
                    class = BTWQUESTS_CLASS_ID_PALADIN,
                },
            },
            userdata = {
                scrollTo = {
                    type = "chain",
                    id = BTWQUESTS_CHAIN_LEGION_ORDERHALL_LIGHTSHEART,
                },
            },
            x = 3,
            y = -1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 42866,
            restrictions = {
                {
                    type = "class",
                    class = BTWQUESTS_CLASS_ID_PALADIN,
                },
            },
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44257,
            restrictions = {
                {
                    type = "class",
                    class = BTWQUESTS_CLASS_ID_PALADIN,
                },
            },
            x = 3,
            y = 1,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 44009,
            restrictions = {
                {
                    type = "classes",
                    classes = {
                        BTWQUESTS_CLASS_ID_WARRIOR,
                        BTWQUESTS_CLASS_ID_HUNTER,
                        BTWQUESTS_CLASS_ID_ROGUE,
                        BTWQUESTS_CLASS_ID_PRIEST,
                        BTWQUESTS_CLASS_ID_DEATHKNIGHT,
                        BTWQUESTS_CLASS_ID_SHAMAN,
                        BTWQUESTS_CLASS_ID_MAGE,
                        BTWQUESTS_CLASS_ID_WARLOCK,
                        BTWQUESTS_CLASS_ID_MONK,
                        BTWQUESTS_CLASS_ID_DRUID,
                        BTWQUESTS_CLASS_ID_DEMONHUNTER,
                    },
                },
            },
            x = 3,
            y = 1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44004,
            x = 3,
            y = 2,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 43705,
            aside = true,
            x = 1,
            y = 2,
        },
        {
            type = "quest",
            id = 44153,
            x = 3,
            y = 3,
            connections = {
                1, 3,
            }
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PALADIN_CAMPAIGN,
            aside = true,
            restrictions = {
                {
                    type = "class",
                    class = BTWQUESTS_CLASS_ID_PALADIN,
                },
            },
            userdata = {
                scrollTo = {
                    type = "chain",
                    id = BTWQUESTS_CHAIN_LEGION_ORDERHALL_LIGHTSHEART,
                },
            },
            x = 1,
            y = 4,
        },
        
        
        {
            type = "level",
            level = 110,
            x = 5,
            y = 3,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 44337,
            x = 3,
            y = 4,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44448,
            x = 3,
            y = 5,
            connections = {
                1,
            }
        },
        {
            name = "Return to your Order Hall",
            breadcrumb = true,
            x = 3,
            y = 6,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44464,
            x = 3,
            y = 7,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44466,
            x = 3,
            y = 8,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44479,
            x = 3,
            y = 9,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 44480,
            x = 3,
            y = 10,
            connections = {
                1, 2, 3,
            }
        },
        {
            type = "quest",
            id = 44481,
            restrictions = {
                {
                    type = "classes",
                    classes = {
                        BTWQUESTS_CLASS_ID_WARRIOR,
                        BTWQUESTS_CLASS_ID_PALADIN,
                        BTWQUESTS_CLASS_ID_HUNTER,
                        BTWQUESTS_CLASS_ID_ROGUE,
                        BTWQUESTS_CLASS_ID_PRIEST,
                        BTWQUESTS_CLASS_ID_DEATHKNIGHT,
                        BTWQUESTS_CLASS_ID_SHAMAN,
                        BTWQUESTS_CLASS_ID_MAGE,
                        BTWQUESTS_CLASS_ID_WARLOCK,
                        BTWQUESTS_CLASS_ID_MONK,
                        BTWQUESTS_CLASS_ID_DRUID,
                    },
                },
                {
                    type = "achievement",
                    id = 697,
                    completed = true,
                },
                {
                    type = "quest",
                    id = 44496,
                    active = false,
                },
            },
            x = 3,
            y = 11,
            connections = {
                3,
            }
        },
        {
            type = "quest",
            id = 44496,
            restrictions = {
                {
                    type = "classes",
                    classes = {
                        BTWQUESTS_CLASS_ID_WARRIOR,
                        BTWQUESTS_CLASS_ID_PALADIN,
                        BTWQUESTS_CLASS_ID_HUNTER,
                        BTWQUESTS_CLASS_ID_ROGUE,
                        BTWQUESTS_CLASS_ID_PRIEST,
                        BTWQUESTS_CLASS_ID_DEATHKNIGHT,
                        BTWQUESTS_CLASS_ID_SHAMAN,
                        BTWQUESTS_CLASS_ID_MAGE,
                        BTWQUESTS_CLASS_ID_WARLOCK,
                        BTWQUESTS_CLASS_ID_MONK,
                        BTWQUESTS_CLASS_ID_DRUID,
                    },
                },
                {
                    type = "achievement",
                    id = 697,
                    completed = false,
                },
                {
                    type = "quest",
                    id = 44481,
                    active = false,
                },
            },
            x = 3,
            y = 11,
            connections = {
                2,
            }
        },
        {
            type = "quest",
            id = 44497,
            restrictions = {
                {
                    type = "class",
                    class = BTWQUESTS_CLASS_ID_DEMONHUNTER,
                },
            },
            x = 3,
            y = 11,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 45174,
            x = 3,
            y = 12,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 45175,
            x = 3,
            y = 13,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 45176,
            x = 3,
            y = 14,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            id = 45177,
            x = 3,
            y = 15,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_ORDERHALL] = {
    name = BTWQUESTS_ORDERHALL,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ORDERHALL_LIGHTSHEART,
        },
    },
}
