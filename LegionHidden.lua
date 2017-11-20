BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIDDEN_KOSUMOTH] = {
    name = BTWQUESTS_RARE_KOSUMOTH,
    category = BTWQUESTS_CATEGORY_LEGION_HIDDEN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 45866,
    },
    range = {110},
    items = {
        {
            type = "quest",
            id = 46744,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIDDEN_MINDWORM] = {
    name = BTWQUESTS_MOUNT_RIDDLERS,
    category = BTWQUESTS_CATEGORY_LEGION_HIDDEN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 47214,
    },
    range = {110},
    items = {
        {
            type = "quest",
            name = "Page 9 found in The Legerdemain Lounge",
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(1014, 10, 0.49, 0.42, "Step 1: Page 9")
            end,
            id = 45470,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 78 found in Duskwood",
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(34, 0, 0.49, 0.33, "Step 2: Page 78")
            end,
            id = 47207,
            x = 3,
            y = 1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 161 found in Firelands",
            onClick = function ()
                if GetRealZoneText() ~= "Firelands" then
                    BtWQuests_ShowMapWithWaypoint(606, 0, 0.4777, 0.7784, "Step 3: Firelands")
                    BtWQuests_AddWaypoint(800, 3, 0.47, 0.1658, "Step 3: Page 161")
                else
                    BtWQuests_ShowMapWithWaypoint(800, 3, 0.47, 0.1658, "Step 3: Page 161")
                end
            end,
            id = 47208,
            x = 3,
            y = 2,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 655 found in Uldum",
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(720, 0, 0.7045, 0.7808, "Step 4: Page 655")
            end,
            id = 47209,
            x = 3,
            y = 3,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 845 found in the Siege of Orgrimmar",
            onClick = function ()
                if GetRealZoneText() ~= "Siege of Orgrimmar" then
                    BtWQuests_ShowMapWithWaypoint(811, 0, 0.7393, 0.4221, "Step 5: Siege of Orgrimmar")
                    BtWQuests_AddWaypoint(953, 3, 0.1991, 0.8232, "Step 5: Page 845")
                else
                    BtWQuests_ShowMapWithWaypoint(953, 3, 0.1991, 0.8232, "Step 5: Page 845")
                end
            end,
            id = 47210,
            x = 3,
            y = 4,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 1127 found in the Well of Eternity",
            onClick = function ()
                if GetRealZoneText() ~= "Well of Eternity" then
                    BtWQuests_ShowMapWithWaypoint(161, 18, 0.2295, 0.6437, "Step 6: Well of Eternity")
                    BtWQuests_AddWaypoint(816, 0, 0.753, 0.66, "Step 6: Page 1127")
                else
                    BtWQuests_ShowMapWithWaypoint(816, 0, 0.753, 0.66, "Step 6: Page 1127")
                end
            end,
            id = 47211,
            x = 3,
            y = 5,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 2351 found in Kun-Lai Summit",
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(809, 0, 0.3463, 0.5089, "Step 7: Page 2351")
            end,
            id = 47212,
            x = 3,
            y = 6,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Page 5555 found in Uldum",
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(720, 0, 0.7644, 0.5358, "Step 8: Page 5555")
            end,
            id = 47213,
            x = 3,
            y = 7,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Riddler's Mind-Worm in Westfall",
            id = 47214,
            onClick = function ()
                BtWQuests_ShowMapWithWaypoint(39, 0, 0.3051, 0.2755, "Step 9: Riddler's Mind-Worm")
            end,
            x = 3,
            y = 8
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIDDEN_SUNDARTER] = {
    name = BTWQUESTS_PET_SUNDARTER,
    category = BTWQUESTS_CATEGORY_LEGION_HIDDEN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 45866,
    },
    range = {110},
    items = {
        {
            type = "quest",
            id = 46744,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_HIDDEN_LUCIDNIGHTMARE] = {
    name = BTWQUESTS_MOUNT_LUCID_NIGHTMARE,
    category = BTWQUESTS_CATEGORY_LEGION_HIDDEN,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = {
        type = "quest",
        id = 47885,
    },
    range = {110},
    items = {
        {
            type = "quest",
            name = "Inconspicuous Note in Curiosities & Moore",
            id = 47826,
            x = 3,
            y = 0,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Inconspicuous Note in Ulduar",
            id = 47837,
            x = 3,
            y = 1,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Inconspicuous Note in the Temple of Ahn'Qiraj",
            id = 47841,
            x = 3,
            y = 2,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Inconspicuous Note in Deepholm",
            id = 47850,
            x = 3,
            y = 3,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Inconspicuous Note in Gnomeregan",
            id = 47852,
            x = 3,
            y = 4,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Inconspicuous Note in Val'Sharah",
            id = 47863,
            x = 3,
            y = 5,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Inconspicuous Note in the Endless Halls",
            id = 47881,
            x = 3,
            y = 6,
            connections = {
                1,
            }
        },
        {
            type = "quest",
            name = "Your Lucid Nightmare below Karazhan",
            id = 47885,
            x = 3,
            y = 7,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_HIDDEN] = {
    name = BTWQUESTS_SECRET,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    items = {
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_HIDDEN_KOSUMOTH,
        -- },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIDDEN_MINDWORM,
        },
        -- {
            -- type = "chain",
            -- id = BTWQUESTS_CHAIN_LEGION_HIDDEN_SUNDARTER,
        -- },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_HIDDEN_LUCIDNIGHTMARE,
        },
    },
}
