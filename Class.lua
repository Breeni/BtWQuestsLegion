BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN, {
    name = BtWQuestsItem_GetItems,
    category = BTWQUESTS_CATEGORY_LEGION_CLASS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "level",
            level = 98,
        },
    },
    completed = BtWQuestsItem_GetItems,
    major = true,
    range = {98, 110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DRUID_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PALADIN_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PRIEST_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_WARLOCK_CAMPAIGN,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_WARRIOR_CAMPAIGN,
            embed = true,
        },
    },
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_CLASS_MOUNT, {
    name = BtWQuestsItem_GetItems,
    category = BTWQUESTS_CATEGORY_LEGION_CLASS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    prerequisites = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_BROKENSHORE_BREACHING_THE_TOMB,
        },
    },
    completed = BtWQuestsItem_GetItems,
    range = {110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DRUID_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PALADIN_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PRIEST_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_WARLOCK_MOUNT,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_WARRIOR_MOUNT,
            embed = true,
        },
    },
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_CLASS_FOLLOWER, {
    name = BtWQuestsItem_GetItems,
    category = BTWQUESTS_CATEGORY_LEGION_CLASS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    completed = BtWQuestsItem_GetItems,
    range = {110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEATHKNIGHT_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DRUID_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_HUNTER_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MONK_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PALADIN_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PRIEST_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_ROGUE_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_SHAMAN_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_WARLOCK_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_WARRIOR_FOLLOWER,
            embed = true,
        },
    },
})
BtWQuestsDatabase:AddChain(BTWQUESTS_CHAIN_LEGION_CLASS_FOLLOWER2, {
    name = BtWQuestsItem_GetItems,
    category = BTWQUESTS_CATEGORY_LEGION_CLASS,
    expansion = BTWQUESTS_EXPANSION_LEGION,
    restrictions = {
        type = "class",
        ids = {
            BTWQUESTS_CLASS_ID_PALADIN,
            BTWQUESTS_CLASS_ID_MAGE,
        }
    },
    completed = BtWQuestsItem_GetItems,
    range = {110},
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_PALADIN_OTHER_FOLLOWER,
            embed = true,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_MAGE_ANNOYING_FOLLOWER,
            embed = true,
        },
    },
})

BtWQuestsDatabase:AddCategory(BTWQUESTS_CATEGORY_LEGION_CLASS, {
    name = {
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEATHKNIGHT,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DEMONHUNTER,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_DRUID,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_HUNTER,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_MAGE,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_MONK,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_PALADIN,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_PRIEST,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_ROGUE,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_SHAMAN,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_WARLOCK,
        },
        {
            type = "category",
            id = BTWQUESTS_CATEGORY_LEGION_CLASSES_WARRIOR,
        },
    },
    expansion = BTWQUESTS_EXPANSION_LEGION,
    -- buttonImage = 1041999,
    items = {
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASSES_DEMONHUNTER_STARTING_ZONE,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASS_FOLLOWER,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASS_FOLLOWER2,
        },
        {
            type = "chain",
            id = BTWQUESTS_CHAIN_LEGION_CLASS_MOUNT,
        },
    },
})

BtWQuestsDatabase:AddExpansionItem(BTWQUESTS_EXPANSION_LEGION, {
    type = "category",
    id = BTWQUESTS_CATEGORY_LEGION_CLASS,
})

-- Death Knight
BtWQuestsDatabase:AddMapRecursive(647, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
BtWQuestsDatabase:AddMapRecursive(648, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Demon Hunter Zone
BtWQuestsDatabase:AddMapRecursive(719, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Druid Dreamgrove
BtWQuestsDatabase:AddMapRecursive(747, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Hunter Lodge
BtWQuestsDatabase:AddMapRecursive(739, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Mage
BtWQuestsDatabase:AddMapRecursive(734, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
}, false, true)
BtWQuestsDatabase:AddMapRecursive(735, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
}, false, true)
-- Monk
BtWQuestsDatabase:AddMapRecursive(709, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Paladin
BtWQuestsDatabase:AddMapRecursive(24, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Priest
BtWQuestsDatabase:AddMapRecursive(702, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Rogue
BtWQuestsDatabase:AddMapRecursive(626, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Shaman
BtWQuestsDatabase:AddMapRecursive(726, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Warlock
BtWQuestsDatabase:AddMapRecursive(717, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})
-- Warrior
BtWQuestsDatabase:AddMapRecursive(695, {
    type = "chain",
    id = BTWQUESTS_CHAIN_LEGION_CLASS_CAMPAIGN,
})