BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_ALLIED_RACES_LIGHTFORGED_DRAENEI] = {
    name = "Lightforged Draenei",
    category = BTWQUESTS_CATEGORY_LEGION_ALLIED_RACES,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "expansion",
            expansion = 7,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ARGUS_WAR_OF_LIGHT_AND_SHADOW,
        },
        {
            type = "reputation",
            id = 2165,
            standing = 8,
        },
    },
    completed = {
        type = "quest",
        id = 50071,
    },
    range = {110},
    items = {
        {
            type = "quest",
            id = 49698,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 49266,
            x = 3,
            y = 1,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 50071,
            x = 3,
            y = 2,
        },
    },
}
BtWQuests_Chains[BTWQUESTS_CHAIN_LEGION_ALLIED_RACES_VOID_ELF] = {
    name = "Void Elf",
    category = BTWQUESTS_CATEGORY_LEGION_ALLIED_RACES,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "expansion",
            expansion = 7,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ARGUS_WAR_OF_LIGHT_AND_SHADOW,
        },
        {
            type = "reputation",
            id = 2170,
            standing = 8,
        },
    },
    completed = {
        type = "quest",
        id = 50071,
    },
    range = {110},
    items = {
        {
            type = "quest",
            id = 49787,
            x = 3,
            y = 0,
            connections = {
                1
            },
        },
        {
            type = "quest",
            id = 48962,
            x = 3,
            y = 1,
        },
    },
}

BtWQuests_Categories[BTWQUESTS_CATEGORY_LEGION_ALLIED_RACES] = {
    name = "Allied Races",
    expansion = BTWQUESTS_EXPANSION_LEGION,
    buttonImage = 1718211,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ALLIED_RACES_LIGHTFORGED_DRAENEI,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_ALLIED_RACES_VOID_ELF,
        },
    },
}
