-- Textures and colours used for the UI background for each expansion
local BTWQUESTS_EXPANSION_DATA = {
	[BTWQUESTS_EXPANSION_CLASSIC] = {
        backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-Classic",
        r = 1.0, g = 0.8, b = 0.0
    },
	[BTWQUESTS_EXPANSION_BURNING_CRUSADE] = {
        backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-BurningCrusade",
        r = 0.6, g = 0.8, b = 0.0
    },
	[BTWQUESTS_EXPANSION_WRATH_OF_THE_LICH_KING] = {
        backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-WrathoftheLichKing",
        r = 0.2, g = 0.8, b = 1.0
    },
	[BTWQUESTS_EXPANSION_CATACLYSM] = {
        backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-Cataclysm",
        r = 1.0, g = 0.4, b = 0.0
    },
	[BTWQUESTS_EXPANSION_MISTS_OF_PANDARIA] = {
        backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-MistsofPandaria",
        r = 0.0, g = 0.6, b = 0.2
    },
	[BTWQUESTS_EXPANSION_WARLORDS_OF_DRAENOR] = {
        backgroundTexture = "Interface\\ENCOUNTERJOURNAL\\UI-EJ-WarlordsofDraenor",
        r = 0.82, g = 0.55, b = 0.1
    },
	[BTWQUESTS_EXPANSION_LEGION] = {
        backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-Legion",
        r = 1.0, g = 0.8, b = 0.0
    },
}

-- Profession ID to Name map
local BTWQUESTS_PROFESSION_MAP = {
	[129] = BTWQUESTS_PROFESSION_FIRST_AID,
	[164] = BTWQUESTS_PROFESSION_BLACKSMITHING,
	[165] = BTWQUESTS_PROFESSION_LEATHERWORKING,
	[171] = BTWQUESTS_PROFESSION_ALCHEMY,
	[182] = BTWQUESTS_PROFESSION_HERBALISM,
	[184] = BTWQUESTS_PROFESSION_COOKING,
	[186] = BTWQUESTS_PROFESSION_MINING,
	[197] = BTWQUESTS_PROFESSION_TAILORING,
	[202] = BTWQUESTS_PROFESSION_ENGINEERING,
	[333] = BTWQUESTS_PROFESSION_ENCHANTING,
	[356] = BTWQUESTS_PROFESSION_FISHING,
	[393] = BTWQUESTS_PROFESSION_SKINNING,
	[755] = BTWQUESTS_PROFESSION_JEWELCRAFTING,
	[773] = BTWQUESTS_PROFESSION_INSCRIPTION,
	[794] = BTWQUESTS_PROFESSION_ARCHAEOLOGY,
};

local BTWQUESTS_CATEGORY_ITEM_WIDTH = 174
local BTWQUESTS_CATEGORY_ITEM_HEIGHT = 96
local BTWQUESTS_CATEGORY_ITEM_PADDING = 12
local BTWQUESTS_CATEGORY_NUM_ITEMS_PER_ROW = 4;

local BtWQuests_CharactersMap = {}
local BtWQuests_Character = nil -- Current Character
local BtWQuests_CharacterIsPlayer = false

local BtWQuests_CurrentExpansion = nil
local BtWQuests_CurrentCategory = nil
local BtWQuests_CurrentChain = nil

local function ArrayContains(a, item)
    for i=1,#a do
        if a[i] == item then
            return true
        end
    end
    
    return false
end

function BtWQuests_GetCurrentExpansion()
    return BtWQuests_CurrentExpansion
end

function BtWQuests_SetCurrentExpansion(value)
    value = tonumber(value)
    if not (value >= BTWQUESTS_EXPANSION_CLASSIC and value <= BTWQUESTS_EXPANSION_LEGION) then
        value = BTWQUESTS_EXPANSION_LEGION
    end
    
    BtWQuests_CurrentExpansion = value
    BtWQuests_CurrentCategory = nil
    BtWQuests_CurrentChain = nil
end

function BtWQuests_SelectExpansion(id)
    BtWQuestsNav_UpdateCurrentHistory()
    
    local id = tonumber(id)
    
    BtWQuests_SetCurrentExpansion(id)
    
    NavBar_Reset(BtWQuests.navBar)
    
    BtWQuests_DisplayCurrentCategory()

    BtWQuestsNav_AddCurrentToHistory()
end

function BtWQuests_GetCurrentCategory()
    return BtWQuests_CurrentCategory
end

function BtWQuests_SetCurrentCategory(categoryID)
    if categoryID == nil then
        BtWQuests_CurrentCategory = nil
        BtWQuests_CurrentChain = nil
    else
        BtWQuests_CurrentCategory = tonumber(categoryID)
        BtWQuests_CurrentChain = nil
        BtWQuests_CurrentExpansion = select(4, BtWQuests_GetCategoryByID(BtWQuests_CurrentCategory))
    end
end

function BtWQuests_SelectCategory(id)
    BtWQuestsNav_UpdateCurrentHistory()
    
    local id = tonumber(id)
    
    BtWQuests_SetCurrentCategory(id)
    
    NavBar_Reset(BtWQuests.navBar)
    BtWQuestsNav_AddCategoryButtonParents(id)
    
    BtWQuests_DisplayCurrentCategory()

    BtWQuestsNav_AddCurrentToHistory()
end

function BtWQuests_GetCurrentChain()
    return BtWQuests_CurrentChain
end

function BtWQuests_SetCurrentChain(chainID)
    BtWQuests_CurrentChain = tonumber(chainID)
    _, _, _, BtWQuests_CurrentExpansion, BtWQuests_CurrentCategory = BtWQuests_GetChainByID(BtWQuests_CurrentChain)
end

function BtWQuests_SelectChain(id, scrollTo)
    BtWQuestsNav_UpdateCurrentHistory()
    
    local id = tonumber(id)
    
    BtWQuests_SetCurrentChain(id)
    
    NavBar_Reset(BtWQuests.navBar)
    BtWQuestsNav_AddChainButtonParents(id)
    
    BtWQuests_DisplayCurrentChain(scrollTo)
    
    BtWQuestsNav_AddCurrentToHistory()
end

function BtWQuests_SelectFromLink(link, scrollTo)
    local _, _, color, type, text, name = string.find(link, "|cff(%x*)|H([^:]+):([^|]+)|h%[([^%[%]]*)%]|h|r")
    if not color then
        _, _, type, text = string.find(link, "([^:]+):(.+)")
    end
    
    assert(type == "quest" or type == "btwquests")
    
    if type == "quest" then
        local _, _, id = string.find(text, "^(%d+):")

        id = tonumber(id)
        
        local questLogIndex = GetQuestLogIndexByID(id);
        if questLogIndex > 0 then
            if ( IsQuestComplete(id) and GetQuestLogIsAutoComplete(questLogIndex) ) then
                AutoQuestPopupTracker_RemovePopUp(id);
                ShowQuestComplete(questLogIndex);
                
                return true
            else
                ShowQuestLog();
                QuestMapFrame_ShowQuestDetails(id);
                
                return true
            end
        end
    elseif type == "btwquests" then
        local _, _, subtype, id = string.find(text, "^([^:]*):(%d+)")
        
        assert(subtype == "expansion" or subtype == "category" or subtype == "chain")
        
        if subtype == "expansion" then
            BtWQuests_SelectExpansion(id, scrollTo)
            
            return true
        elseif subtype == "category" then
            BtWQuests_SelectCategory(id, scrollTo)
            
            return true
        elseif subtype == "chain" then
            BtWQuests_SelectChain(id, scrollTo)
            
            return true
        end
    end
    
    return false
end

function BtWQuests_SelectItem(item, scrollTo)
    if item.type == "expansion" then
        BtWQuests_SelectExpansion(item.id, scrollTo or item.scrollTo)
    elseif item.type == "category" then
        BtWQuests_SelectCategory(item.id, scrollTo or item.scrollTo)
    elseif item.type == "chain" then
        BtWQuests_SelectChain(item.id, scrollTo or item.scrollTo)
    end
end

local function BtWQuests_CompareItems(a, b)
    if a.type ~= b.type then
        return false
    end
    
    if a.type == "chain" or a.type == "quest" or a.type == "achievement" or a.type == "mission" or a.type == "faction" or a.type == "race" or a.type == "class" then
        return a.id == b.id
    elseif a.type == "level" then
        return a.level == b.level
    else
        return false
    end
end

function BtWQuests_GetExpansionCount()
    return EJ_GetNumTiers()
end

function BtWQuests_GetExpansionInfo(index)
    return EJ_GetTierInfo(index + 1)
end

-- Guess which expansion to show based on player level
function BtWQuests_GuessExpansion()
	local playerLevel = UnitLevel("player");
	local expansionId = LE_EXPANSION_LEVEL_CURRENT;
	local minDiff = MAX_PLAYER_LEVEL_TABLE[LE_EXPANSION_LEVEL_CURRENT];
	for tierId, tierLevel in pairs(MAX_PLAYER_LEVEL_TABLE) do
        if BtWQuests_Expansions[tierId] ~= nil then
            local diff = tierLevel - playerLevel;
            if ( diff > 0 and diff < minDiff ) then
                expansionId = tierId;
                minDiff = diff;
            end
        end
	end
	return expansionId;
end

function BtWQuests_IsFaction(faction)
    return BtWQuests_Character.faction == faction
end

function BtWQuests_IsRace(race)
    return BtWQuests_Character.race == race
end

function BtWQuests_InRaces(races)
    return ArrayContains(races, BtWQuests_Character.race)
end

function BtWQuests_IsClass(class)
    return BtWQuests_Character.class == class
end

function BtWQuests_InClasses(classes)
    return ArrayContains(classes, BtWQuests_Character.class)
end

function BtWQuests_AtleastLevel(level)
    return BtWQuests_Character.level >= level
end

function BtWQuests_GetFactionInfoByID(faction)
    local factionName = GetFactionInfoByID(faction)
    local standing, barMin, barMax, value = unpack(BtWQuests_Character.reputations[faction])

    return factionName, standing, barMin, barMax, value
end

function BtWQuests_GetSex()
    return BtWQuests_Character.sex
end

function BtWQuests_HasProfession(profession)
    return BtWQuests_Character.professions[profession] and true or false
end

function BtWQuests_IsQuestActive(questID)
    if BtWQuests_CharacterIsPlayer then
        return GetQuestLogIndexByID(questID) > 0
    else
        return BtWQuests_Character.questsActive[questID] and true or false
    end
end

function BtWQuests_IsQuestCompleted(questID)
    if BtWQuests_CharacterIsPlayer then
        return IsQuestFlaggedCompleted(questID)
    else
        return BtWQuests_Character.questsCompleted[questID] and true or false
    end
end

local BtWQuests_GetItemSkip
local BtWQuests_CheckItemRequirement
local function BtWQuests_EvalRequirement(requirement, item, one)
    if type(requirement) == "boolean" then
        return requirement
    elseif type(requirement) == "table" then
        if requirement[1] ~= nil then
            one = one and true or false -- Should we only require 1 item to be true

            local filtered = {}
            for _, v in ipairs(requirement) do
                if not BtWQuests_GetItemSkip(v) then
                    table.insert(filtered, v)
                end
            end

            for _, v in ipairs(filtered) do
                if BtWQuests_CheckItemRequirement(v) == one then
                    return one
                end
            end
            
            return not one
        else
            return BtWQuests_CheckItemRequirement(requirement)
        end
    elseif type(requirement) == "function" then
        return requirement(item)
    end
    
    assert(requirement == nil, "Invalid requirement type " .. type(requirement))
end

local BtWQuests_GetItemName
local function BtWQuests_EvalText(text, item)
    if text == nil then
        return "Unnamed"
    elseif type(text) == "function" then
        return tostring(text(item))
    elseif type(text) == "table" then
        return BtWQuests_GetItemName(text)
    end
    
    return tostring(text)
end

BtWQuests_CheckItemRequirement = function (item, skipAlternatives)
    if (item.type == "quest" or item.type == "chain") and item.alternatives ~= nil and not skipAlternatives then
        if BtWQuests_CheckItemRequirement(item, true) then
            return true
        end

        for _,alternative in ipairs(item.alternatives) do
            if type(alternative) == "table" then
                if BtWQuests_CheckItemRequirement(alternative) then
                    return true
                end
            else
                if BtWQuests_CheckItemRequirement({
                    type = item.type,
                    id = alternative,
                }) then
                    return true
                end
            end
        end
    end

    if item.type == "quest" then
        if item.status ~= nil then
            for _,status in ipairs(item.status) do
                if status == "active" and BtWQuests_IsQuestActive(item.id) then
                    return true
                elseif status == "completed" and BtWQuests_IsQuestCompleted(item.id) then
                    return true
                elseif status == "notactive" and not BtWQuests_IsQuestActive(item.id) then
                    return true
                elseif status == "notcompleted" and not BtWQuests_IsQuestCompleted(item.id) then
                    return true
                end
            end

            return false
        elseif item.active == true then
            return BtWQuests_IsQuestActive(item.id)
        elseif item.active == false then
            return not BtWQuests_IsQuestActive(item.id)
        elseif item.completed == false then
            return not BtWQuests_IsQuestCompleted(item.id)
        else
            return BtWQuests_IsQuestCompleted(item.id)
        end
    elseif item.type == "chain" then
        if item.status ~= nil then
            for _,status in ipairs(item.status) do
                if status == "active" and BtWQuests_IsChainActive(item.id) then
                    return true
                elseif status == "completed" and BtWQuests_IsChainCompleted(item.id) then
                    return true
                elseif status == "notactive" and not BtWQuests_IsChainActive(item.id) then
                    return true
                elseif status == "notcompleted" and not BtWQuests_IsChainCompleted(item.id) then
                    return true
                end
            end

            return false
        elseif item.active == true then
            return BtWQuests_IsChainActive(item.id)
        elseif item.active == false then
            return not BtWQuests_IsChainActive(item.id)
        elseif item.completed == false then
            return not BtWQuests_IsChainCompleted(item.id)
        else
            return BtWQuests_IsChainCompleted(item.id)
        end
    elseif item.type == "category" then
        if item.status ~= nil then
            for _,status in ipairs(item.status) do
                if status == "active" and BtWQuests_IsCategoryActive(item.id) then
                    return true
                elseif status == "completed" and BtWQuests_IsCategoryCompleted(item.id) then
                    return true
                elseif status == "notactive" and not BtWQuests_IsCategoryActive(item.id) then
                    return true
                elseif status == "notcompleted" and not BtWQuests_IsCategoryCompleted(item.id) then
                    return true
                end
            end

            return false
        elseif item.active == true then
            return BtWQuests_IsCategoryActive(item.id)
        elseif item.active == false then
            return not BtWQuests_IsCategoryActive(item.id)
        elseif item.completed == false then
            return not BtWQuests_IsCategoryCompleted(item.id)
        else
            return BtWQuests_IsCategoryCompleted(item.id)
        end
    elseif item.type == "faction" then
        return BtWQuests_IsFaction(item.id)
    elseif item.type == "race" then
        if item.id == nil and item.ids ~= nil then
            return BtWQuests_InRaces(item.ids)
        else
            return BtWQuests_IsRace(item.id)
        end
    elseif item.type == "class" then
        if item.id == nil and item.ids ~= nil then
            return BtWQuests_InClasses(item.ids)
        else
            return BtWQuests_IsClass(item.id)
        end
    elseif item.type == "level" then
        return BtWQuests_AtleastLevel(item.level)
    elseif item.type == "expansion" then
        return GetAccountExpansionLevel() >= item.expansion
    elseif item.type == "reputation" then
        local factionName, standing, barMin, barMax, value = BtWQuests_GetFactionInfoByID(item.faction)
        local gender = BtWQuests_GetSex()
        local standingText = getglobal("FACTION_STANDING_LABEL" .. item.standing .. (gender == 3 and "_FEMALE" or ""))
        
        if item.amount ~= nil then
            return standing > item.standing or (standing == item.standing and value - barMin >= item.amount)
        else
            return standing >= item.standing
        end
    elseif item.type == "achievement" then
        if item.criteria then
            if item.completed == false then
                return not select(3, GetAchievementCriteriaInfo(item.id, item.criteria))
            else
                return select(3, GetAchievementCriteriaInfo(item.id, item.criteria))
            end
        elseif item.anyone then
            if item.completed == false then
                return not select(4, GetAchievementInfo(item.id))
            else
                return select(4, GetAchievementInfo(item.id))
            end
        else
            if item.completed == false then
                return not select(13, GetAchievementInfo(item.id))
            else
                return select(13, GetAchievementInfo(item.id))
            end
        end
    elseif item.type == "mount" then
        return select(11, C_MountJournal.GetMountInfoByID(item.id))
    elseif item.type == "profession" then
        return BtWQuests_HasProfession(item.id)
    elseif item.type ~= nil then
        assert(false, "Invalid item type: " .. item.type)
    else
        return item.onEval(item)
    end
end

BtWQuests_GetItemName = function (item)
    if item == nil then
        return "Unnamed"
    end

    if item.name then
        return BtWQuests_EvalText(item.name, item)
    end

    if item.type == "quest" then
        return BtWQuests_GetItemName(BtWQuests_Quests[item.id])
    elseif item.type == "chain" then
        return BtWQuests_GetItemName(BtWQuests_Chains[item.id])
    elseif item.type == "category" then
        return BtWQuests_GetItemName(BtWQuests_Categories[item.id])
    elseif item.type == "mission" then
        return BtWQuests_GetItemName(BtWQuests_Missions[item.id])
    elseif item.type == "level" then
        return string.format(BTWQUESTS_LEVEL, item.level)
    elseif item.type == "expansion" then
        return _G['BTWQUESTS_EXPANSION_NAME' .. item.expansion]
    elseif item.type == "reputation" then
        local factionName, _, standing, barMin, _, value = GetFactionInfoByID(item.id)
        local gender = UnitSex("player")
        local standingText = getglobal("FACTION_STANDING_LABEL" .. item.standing .. (gender == 3 and "_FEMALE" or ""))
        
        if item.amount ~= nil then
            return string.format(name or BTWQUESTS_REPUTATION_AMOUNT_STANDING, item.amount, standingText, factionName)
        else
            return string.format(name or BTWQUESTS_REPUTATION_STANDING, standingText, factionName)
        end
    elseif item.type == "achievement" then
        if item.criteria then
            return string.format("%s: %s", select(2, GetAchievementInfo(item.id)), select(1, GetAchievementCriteriaInfo(item.id, item.criteria)))
        else
            return select(2, GetAchievementInfo(item.id))
        end
    elseif item.type == "profession" then
        if BTWQUESTS_PROFESSION_MAP[item.id] ~= nil then
            return BTWQUESTS_PROFESSION_MAP[item.id]
        end

        return item.id
    else
        assert(item.type == nil, "Invalid item type: " .. tostring(item.type))
        return "Unnamed"
    end
end

local function BtWQuests_GetItemVisible(item)
    if item == nil then
        return true
    end

    if item.visible ~= nil then
        return BtWQuests_EvalRequirement(item.visible, item)
    end

    if item.type == "quest" then
        return BtWQuests_GetItemVisible(BtWQuests_Quests[item.id])
    elseif item.type == "chain" then
        return BtWQuests_GetItemVisible(BtWQuests_Chains[item.id])
    elseif item.type == "mission" then
        return BtWQuests_GetItemVisible(BtWQuests_Missions[item.id])
    else
        return true
    end
end

BtWQuests_GetItemSkip = function (item)
    if item == nil then
        return false
    end

    if item.restrictions and not BtWQuests_EvalRequirement(item.restrictions, item) then
        return true
    end

    if item.type == "quest" and BtWQuests_Quests[item.id] ~= nil then
        return BtWQuests_GetItemSkip(BtWQuests_Quests[item.id])
    elseif item.type == "chain" and BtWQuests_Chains[item.id] ~= nil then
        return BtWQuests_GetItemSkip(BtWQuests_Chains[item.id])
    elseif item.type == "mission" and BtWQuests_Missions[item.id] ~= nil then
        return BtWQuests_GetItemSkip(BtWQuests_Missions[item.id])
    else
        return false
    end
end

local BtWQuests_GetItemCompleted = BtWQuests_CheckItemRequirement

--- Get the correct data for a Category or Chain Button
-- @param item
-- @return name
-- @return hidden
-- @return completed
local function BtWQuests_GetItem(item)
    return BtWQuests_GetItemName(item), BtWQuests_GetItemVisible(item), BtWQuests_GetItemSkip(item), BtWQuests_GetItemCompleted(item)
end

local function BtWQuests_CompareChainItemByIndex(index, b)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local a = BtWQuests_Chains[chainID].items[index]
        if not a then
            return nil
        end
        
        return BtWQuests_CompareItems(a, b)
    end
end

local function BtWQuests_CompareCategoryItemByIndex(index, b)
    local a
    local categoryID = BtWQuests_GetCurrentCategory()
    if chainID == nil then
        local expansionID = BtWQuests_GetCurrentExpansion()
        
        if BtWQuests_Expansions[expansionID] == nil then
            return false
        end

        a = BtWQuests_Expansions[expansionID][index]
    else
        a = BtWQuests_Categories[categoryID].items[index]
    end
    
    if not a then
        return nil
    end
    
    return BtWQuests_CompareItems(a, b)
end

function BtWQuests_GetCategoryName(categoryID)
    if not categoryID then
        return nil
    end
    
    local category = BtWQuests_Categories[categoryID]
    if not category then
        return nil
    end
    
    return BtWQuests_EvalText(category.name, category)
end

function BtWQuests_IsCategoryCompleted(categoryID)
    if not categoryID then
        return nil
    end

    local category = BtWQuests_Categories[categoryID]
    if not category then
        return nil
    end
    
    for _,v in ipairs(category.items) do
        if v.type == 'chain' then
            if not BtWQuests_Settings.ignoredChains[v.id] and not BtWQuests_GetItemSkip(v) and not BtWQuests_IsChainCompleted(v.id) then
                return false
            end
        elseif v.type == 'category' then
            if not BtWQuests_Settings.ignoredCategories[v.id] and not BtWQuests_IsCategoryCompleted(v.id) then
                return false
            end
        end
    end

    return true
end

--- Get the correct data for a Category or Chain Button
-- @param item A table containing an item with the type of category or chain
-- @return id
-- @return name
-- @return hidden
-- @return link
-- @return buttonImage
local function BtWQuests_GetCategoryItem(item)
    if item == nil then
        return nil
    end
    
    assert(type(item) == "table", "item is of type " .. type(item) .. ", should be a table")
    
    local hidden, name, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata = item.hidden, item.link, item.category, item.expansion, item.buttomImage, item.onClick, item.onEnter, item.onLeave, (item.userdata or {})
    if type(name) == "function" then
        name = name(item)
    end
        
    if item.type == "chain" then
        local chain = BtWQuests_Chains[item.id] or {}

        -- assert(chain ~= nil, "Could not find chain with id " .. tostring(item.id))
        
        if hidden == nil and chain.restrictions and not BtWQuests_EvalRequirement(chain.restrictions, chain) then
            hidden = true
        end
        
        name = name or chain.name
        category = category or chain.category
        expansion = expansion or chain.expansion
        buttonImage = buttonImage or chain.buttonImage
        
        onClick = onClick or function (self)
            if not ChatEdit_TryInsertChatLink(self.userdata.link) then
                BtWQuestsNav_UpdateCurrentHistory()
    
                BtWQuestsNav_AddChainButton(self.id, self.userdata.name)

                BtWQuests_SetCurrentChain(self.id)
                BtWQuests_DisplayCurrentChain()
                
                BtWQuestsNav_AddCurrentToHistory()
                
                PlaySound(SOUNDKIT.IG_SPELLBOOK_OPEN);
            end
        end
        onEnter = onEnter or function (self)
            BtWQuestsTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT")
            BtWQuestsTooltip:SetOwner(self, "ANCHOR_PRESERVE");
            BtWQuestsTooltip:SetChain(self.id)
        end
        onLeave = onLeave or function (self)
            BtWQuestsTooltip:Hide();
        end
        
        -- userdata.name = userdata.name or name
        userdata.link = userdata.link or format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", item.id, BtWQuests_EvalText(chain.name, chain))
    elseif item.type == "category" then
        local category = BtWQuests_Categories[item.id] or {}

        -- assert(category ~= nil)
        
        if hidden == nil and category.restrictions and not BtWQuests_EvalRequirement(category.restrictions, category) then
            hidden = true
        end
        
        name = name or category.name
        category = category or category.parent
        expansion = expansion or category.expansion
        buttonImage = buttonImage or category.buttonImage
        
        onClick = onClick or function (self)
            if not ChatEdit_TryInsertChatLink(self.userdata.link) then
                BtWQuestsNav_UpdateCurrentHistory()
    
                BtWQuestsNav_AddCategoryButton(self.id, self.userdata.name)
                
                BtWQuests_SetCurrentCategory(self.id)
                BtWQuests_DisplayCurrentCategory()
                
                BtWQuestsNav_AddCurrentToHistory()
                
                PlaySound(SOUNDKIT.IG_SPELLBOOK_OPEN);
            end
        end
        onEnter = onEnter or function (self)
            
        end
        onLeave = onLeave or function (self)
            
        end
        
        -- userdata.name = userdata.name or name
        userdata.link = userdata.link or format("\124cffffff00\124Hbtwquests:category:%s\124h[%s]\124h\124r", item.id, BtWQuests_EvalText(category.name, category))
    else
        assert(false, "Invalid item type: " .. item.type)
    end
        
    name = BtWQuests_EvalText(name, item)
    
    return item.type, item.id, name, hidden, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata
end

local function BtWQuests_GetCategoryItemByIndex(index, parentCategoryID)
    if parentCategoryID == true then
        parentCategoryID = BtWQuests_GetCurrentCategory()
    end
    if parentCategoryID ~= nil then
        if BtWQuests_Categories[parentCategoryID].items then
            return BtWQuests_GetCategoryItem(BtWQuests_Categories[parentCategoryID].items[index])
        end
    else
        local expansion = BtWQuests_GetCurrentExpansion()
        
        if BtWQuests_Expansions[expansion] == nil then
            return nil
        end
        
        return BtWQuests_GetCategoryItem(BtWQuests_Expansions[expansion][index])
    end
end

function BtWQuests_GetCategoryByID(categoryID)
    if not categoryID then
        return nil
    end
    
    local category = BtWQuests_Categories[categoryID]
    if not category then
        return nil
    end
    
    local link = format("\124cffffff00\124Hbtwquests:category:%s\124h[%s]\124h\124r", categoryID, BtWQuests_EvalText(category.name, category))
    return categoryID, BtWQuests_EvalText(category.name, category), link, category.expansion, category.parent, category.buttonImage, category.items and #category.items or 0
end

function BtWQuests_GetChainName(chainID)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain then
        return nil
    end
    
    return BtWQuests_EvalText(chain.name, chain)
end

function BtWQuests_IsChainActive(chainID)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain then
        return nil
    end

    if BtWQuests_Settings.ignoredChains[chainID] then
        return false
    end
    
    local active, completed = false, false
    if chain.completed then
        completed = BtWQuests_EvalRequirement(chain.completed, chain)
    end
    if not completed then
        if chain.prerequisites then
            active = BtWQuests_EvalRequirement(chain.prerequisites, chain)
        else
            active = true -- Assumed a chain with out prerequisites is active
        end
    end
    
    return active
end

function BtWQuests_IsChainCompleted(chainID)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain then
        return nil
    end
    
    local completed = false
    if chain.completed then
        completed = BtWQuests_EvalRequirement(chain.completed, chain)
    end
    
    return completed
end

function BtWQuests_GetChainPrerequisiteByID(chainID, index)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    assert(type(chain) == "table", "Error finding chain with id " .. tostring(chainID))
    
    local prerequisite
    if chain.prerequisites ~= nil then
        if chain.prerequisites[1] ~= nil then
            prerequisite = chain.prerequisites[index]
        elseif index == 1 then
            prerequisite = chain.prerequisites
        end
    end

    assert(type(prerequisite) == "table")
    
    return BtWQuests_GetItem(prerequisite)
end

-- local chainID, name, link, expansion, category, buttonImage, numPrerequisites, numItems
function BtWQuests_GetChainByID(chainID)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain then
        return nil
    end

    local numPrerequisite = 0
    if chain.prerequisites ~= nil then
        if chain.prerequisites[1] ~= nil then
            numPrerequisite = #chain.prerequisites
        else
            numPrerequisite = 1
        end
    end
    
    local link = format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", chainID, BtWQuests_EvalText(chain.name, chain))
    return chainID, BtWQuests_EvalText(chain.name, chain), link, chain.expansion, chain.category, chain.buttonImage, numPrerequisite, chain.items and #chain.items or 0
end

function BtWQuests_GetQuestName(questID)
    if not questID then
        return nil
    end
    
    local quest = BtWQuests_Quests[questID]
    if not quest then
        return nil
    end
    
    return BtWQuests_EvalText(quest.name, quest)
end

function BtWQuests_GetQuestByID(questID)
    if not questID then
        return nil
    end
    
    local quest = BtWQuests_Quests[questID]
    if not quest then
        return nil
    end
    
    local link = format("\124cffffff00\124Hquest:%d:%d:%d:255\124h[%s]\124h\124r", tonumber(questID), quest.level or -1, quest.requiredLevel or -1, BtWQuests_EvalText(quest.name, quest))
    return tonumber(questID), BtWQuests_EvalText(quest.name, quest), (quest.link or link), quest.difficulty, quest.tagID
end

function BtWQuests_EvalChainItem(item)
    if not item then
        return nil
    end
    
    assert(item.class == nil, string.format("Item %d in chain %d has a class set", index, chainID))
    assert(item.faction == nil, string.format("Item %d in chain %d has a faction set", index, chainID))
    assert(item.optional == nil, string.format("Item %d in chain %d has a optional set", index, chainID))
    
    local skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, active, completed, onClick, onEnter, onLeave, userdata = nil, item.name, item.visible or true, item.x, item.y, item.atlas, item.breadcrumb, item.aside, item.difficulty, item.tagID, item.status, item.active, item.completed, item.onClick, item.onEnter, item.onLeave, (item.userdata or {})
    
    if skip == nil and item.restrictions then
        skip = not BtWQuests_EvalRequirement(item.restrictions, item)
    end

    if skip then
        return true
    end
    
    if item.type == "quest" then
        local quest = BtWQuests_Quests[item.id] or {}
        
        -- assert(type(quest) == "table", "Error finding quest with id " .. tostring(item.id))
    
        if skip == nil and quest.restrictions then
            skip = not BtWQuests_EvalRequirement(quest.restrictions, quest)
        end

        if skip then
            return true
        end
    
        visible = visible == nil and quest.visible or visible
        
        name = name or quest.name
        difficulty = difficulty or quest.difficulty
        tagID = tagID or quest.tagID
        
        active = active == nil and function (item)
            if BtWQuests_IsQuestActive(item.id) then
                return true
            end

            if item.alternatives ~= nil then
                for _,alternative in ipairs(item.alternatives) do
                    if type(alternative) == "table" then
                        if BtWQuests_IsQuestActive(alternative.id) then
                            return true
                        end
                    else
                        if BtWQuests_IsQuestActive(alternative) then
                            return true
                        end
                    end
                end
            end

            return false
        end or active
        completed = completed == nil and function (item)
            if BtWQuests_IsQuestCompleted(item.id) then
                return true
            end

            if item.alternatives ~= nil then
                for _,alternative in ipairs(item.alternatives) do
                    if type(alternative) == "table" then
                        if BtWQuests_IsQuestCompleted(alternative.id) then
                            return true
                        end
                    else
                        if BtWQuests_IsQuestCompleted(alternative) then
                            return true
                        end
                    end
                end
            end

            return false
        end or completed
        
        if BtWQuests_Quests[item.id] ~= nil then -- For secret quests
            onClick = onClick or function (self)
                if ChatEdit_TryInsertChatLink(self.userdata.link) then
                    return
                end

                if IsModifiedClick("QUESTWATCHTOGGLE") then
                    local questLogIndex = GetQuestLogIndexByID(self.userdata.id)

                    if questLogIndex then
                        if IsQuestWatched(questLogIndex) then
                            RemoveQuestWatch(questLogIndex)
                        else
                            AddQuestWatch(questLogIndex, true)
                        end

                        return
                    end
                end

                if BtWQuests_SelectFromLink(self.userdata.link) then
                    return
                end

                BtWQuestsTooltip:Hide();
            end
            onEnter = onEnter or function (self)
                BtWQuestsTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT")
                BtWQuestsTooltip:SetOwner(self, "ANCHOR_PRESERVE");
                BtWQuestsTooltip:SetHyperlink(self.userdata.tooltipLink or self.userdata.link)
            end
            onLeave = onLeave or function (self)
                BtWQuestsTooltip:Hide()
            end
        end
        
        userdata.id = item.id
        userdata.link = format("\124cffffff00\124Hquest:%d:%d:%d:255\124h[%s]\124h\124r", tonumber(item.id), quest.level or -1, quest.requiredLevel or -1, BtWQuests_EvalText(quest.name, quest))
    elseif item.type == "mission" then
        local mission = BtWQuests_Missions[item.id] or {}
        
        -- assert(type(mission) == "table", "Error finding mission with id " .. tostring(item.id))
    
        if skip == nil and mission.restrictions then
            skip = not BtWQuests_EvalRequirement(mission.restrictions, mission)
        end

        if skip then
            return true
        end
    
        visible = visible == nil and mission.visible or visible
        
        name = name or "Mission: " .. mission.name
        difficulty = difficulty or mission.difficulty
        tagID = tagID or mission.tagID
        
        active = active == nil and function (item)
            local mission = C_Garrison.GetBasicMissionInfo(item.id)

            return mission and mission.inProgress or false
        end or active
        breadcrumb = true
    elseif item.type == "chain" then
        local chain = BtWQuests_Chains[item.id] or {}
        
        -- assert(type(chain) == "table", "Error finding chain with id " .. tostring(item.id))
    
        if skip == nil and chain.restrictions then
            skip = not BtWQuests_EvalRequirement(chain.restrictions, chain)
        end

        if skip then
            return true
        end
    
        visible = visible == nil and chain.visible or visible
        
        name = name or chain.name
        difficulty = difficulty or chain.difficulty
        tagID = tagID or chain.tagID
        
        active = active == nil and function (item)
            if chain.prerequisites ~= nil then
                return BtWQuests_EvalRequirement(chain.prerequisites, chain)
            end

            return true
        end or active
        completed = completed == nil and chain.completed or completed
        
        onClick = onClick or function (self)
            if not ChatEdit_TryInsertChatLink(self.userdata.link) and not BtWQuests_SelectFromLink(self.userdata.link, self.userdata.scrollTo) then
                BtWQuestsTooltip:Hide();
            end
        end
        onEnter = onEnter or function (self)
            BtWQuestsTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT")
            BtWQuestsTooltip:SetOwner(self, "ANCHOR_PRESERVE");
            BtWQuestsTooltip:SetHyperlink(self.userdata.tooltipLink or self.userdata.link)
        end
        onLeave = onLeave or function (self)
            BtWQuestsTooltip:Hide();
        end
        
        userdata.link = format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", item.id, BtWQuests_EvalText(chain.name, chain))
    elseif item.type == "category" then
        local category = BtWQuests_Categories[item.id] or {}
        
        if skip == nil and category.restrictions then
            skip = not BtWQuests_EvalRequirement(category.restrictions, chain)
        end

        if skip then
            return true
        end
    
        visible = visible == nil and category.visible or visible
        
        name = name or category.name
        difficulty = difficulty or category.difficulty
        tagID = tagID or category.tagID
        
        active = active == nil and function (item)
            if category.prerequisites ~= nil then
                return BtWQuests_EvalRequirement(category.prerequisites, chain)
            end

            return true
        end or active
        completed = completed == nil and category.completed or completed
        
        onClick = onClick or function (self)
            if not ChatEdit_TryInsertChatLink(self.userdata.link) and not BtWQuests_SelectFromLink(self.userdata.link, self.userdata.scrollTo) then
                BtWQuestsTooltip:Hide();
            end
        end
        onEnter = onEnter or function (self)
            BtWQuestsTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT")
            BtWQuestsTooltip:SetOwner(self, "ANCHOR_PRESERVE");
            BtWQuestsTooltip:SetHyperlink(self.userdata.tooltipLink or self.userdata.link)
        end
        onLeave = onLeave or function (self)
            BtWQuestsTooltip:Hide();
        end
        
        userdata.link = format("\124cffffff00\124Hbtwquests:category:%s\124h[%s]\124h\124r", item.id, BtWQuests_EvalText(category.name, category))
    elseif item.type == "reputation" then
        local factionName, _, standing, barMin, _, value = GetFactionInfoByID(item.id)
        local gender = UnitSex("player")
        local standingText = getglobal("FACTION_STANDING_LABEL" .. item.standing .. (gender == 3 and "_FEMALE" or ""))
        
        local completed
        if item.amount ~= nil then
            completed = standing > item.standing or (standing == item.standing and value - barMin >= item.amount)
            name = string.format(name or BTWQUESTS_REPUTATION_AMOUNT_STANDING, item.amount, standingText, factionName)
        else
            completed = standing >= item.standing
            name = string.format(name or BTWQUESTS_REPUTATION_STANDING, standingText, factionName)
        end
        
        status = completed and "complete" or "active"
    elseif item.type == "level" then
        name = string.format(name or BTWQUESTS_LEVEL, item.level)
        local completed = UnitLevel("player") >= item.level
        
        status = completed and "complete" or "active"
    elseif item.type ~= nil then
        assert(false, "Invalid item type: " .. tostring(item.type))
    end
    
    name = BtWQuests_EvalText(name, item)
    visible = BtWQuests_EvalRequirement(visible, item)
    
    if status == nil then
        completed = BtWQuests_EvalRequirement(completed, item)
        
        if completed then
            active = false
        else
            active = BtWQuests_EvalRequirement(active, item)
        end
        
        if completed then
            status = "complete"
        elseif active then
            status = "active"
        else
            status = nil
        end
    end
    
    if status ~= nil then
        status = BtWQuests_EvalText(status, item)
    end
    
    return skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata
end

-- skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata
function BtWQuests_GetChainItem(item)
    if not item then
        return nil
    end
    
    if item[1] ~= nil then -- This is a list on chain items, we want the first one that doesnt return true for skip
        for _, v in ipairs(item) do
            local result = {BtWQuests_EvalChainItem(v)}
            
            if result[1] ~= true then
                return unpack(result)
            end
        end
        
        return true -- We didnt find a valid item so skip this list
    elseif item.variations ~= nil then
        local part = {BtWQuests_GetChainItem(item.variations)}

        local skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata = BtWQuests_EvalChainItem(item)

        skip        = part[1] or skip
        name        = part[2] or name
        visible     = part[3] or visible
        x           = part[4] or x
        y           = part[5] or y
        atlas       = part[6] or atlas
        breadcrumb  = part[7] or breadcrumb
        aside       = part[8] or aside
        difficulty  = part[9] or difficulty
        tagID       = part[10] or tagID
        status      = part[11] or status
        onClick     = part[12] or onClick
        onEnter     = part[13] or onEnter
        onLeave     = part[14] or onLeave
        userdata    = part[15] or userdata

        return skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata
    else
        return BtWQuests_EvalChainItem(item)
    end
end

-- skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata
function BtWQuests_GetChainItemByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        return BtWQuests_GetChainItem(BtWQuests_Chains[chainID].items[index])
    end
end

function BtWQuests_GetChainItemConnectorsByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local item = BtWQuests_Chains[chainID].items[index]

        if not item then
            return nil
        end
        
        if item[1] ~= nil then
            for i = 1, #item do
                if not BtWQuests_GetItemSkip(item[i]) then
                    if item[i].connections then
                        return unpack(item[i].connections)
                    end
                end
            end
        elseif item.variations ~= nil then
            for i = 1, #item.variations do
                if not BtWQuests_GetItemSkip(item.variations[i]) then
                    if item.variations[i].connections then
                        return unpack(item.variations[i].connections)
                    elseif item.connections then
                        return unpack(item.connections)
                    end
                end
            end
            if item.connections then
                return unpack(item.connections)
            end
        else
            if item.connections then
                return unpack(item.connections)
            end
        end
    end
end

function BtWQuests_AddWaypoint(mapId, level, x, y, name)
    if TomTom and TomTom.AddMFWaypoint then
        TomTom:AddMFWaypoint(mapId, level, x, y, {
            title = name,
        })
    end
end

function BtWQuests_ShowMapWithWaypoint(mapId, level, x, y, name)
    if TomTom and TomTom.AddMFWaypoint then
        TomTom:AddMFWaypoint(mapId, level, x, y, {
            title = name,
        })
    end

    if not IsModifiedClick("CHATLINK") then
        if not WorldMapFrame:IsShown() then
            ToggleWorldMap();
        end
        
        SetMapByID(mapId)
        SetDungeonMapLevel(level)
    end
end

local function ChainItemPool_HideAndClearAnchors(framePool, frame)
    FramePool_HideAndClearAnchors(framePool, frame)
    
    if frame.backgroundLinePool then
        frame.backgroundLinePool:ReleaseAll();
    end
end

tinsert(UISpecialFrames, "BtWQuests") 
function BtWQuests_OnLoad(self)
    self:RegisterEvent("ADDON_LOADED")
    self:RegisterEvent("QUEST_LOG_UPDATE")

    self:RegisterEvent("ZONE_CHANGED")
    self:RegisterEvent("ZONE_CHANGED_INDOORS")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    
    self:SetAttribute("UIPanelLayout-defined", true)
    self:SetAttribute("UIPanelLayout-enabled", true)
    self:SetAttribute("UIPanelLayout-area", "left")
    self:SetAttribute("UIPanelLayout-pushable", 0)
    self:SetAttribute("UIPanelLayout-width", 830)
    self:SetAttribute("UIPanelLayout-whileDead", true)
    
	BtWQuestsTitleText:SetText(BTWQUESTS_QUEST_JOURNAL);
    SetPortraitToTexture(BtWQuestsPortrait, "Interface\\QuestFrame\\UI-QuestLog-BookIcon");
    
    BtWQuestsTopBorder:SetPoint("TOPLEFT", BtWQuests.NavBorderRight, "TOPRIGHT", 0, 0);
    BtWQuestsTopBorder:SetPoint("TOPRIGHT", BtWQuests.CharacterDropDown, "TOPLEFT", 0, 0);
    
    self.Tooltip:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
    self.Tooltip:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
    
    BtWQuests_SetCurrentExpansion(BtWQuests_GuessExpansion())
    local expansion = BtWQuests_GetCurrentExpansion()
	local tierData = BTWQUESTS_EXPANSION_DATA[expansion];
	local questSelect = BtWQuests.QuestSelect;
	questSelect.bg:SetTexture(tierData.backgroundTexture);
    UIDropDownMenu_SetText(questSelect.ExpansionDropDown, BtWQuests_GetExpansionInfo(BtWQuests_GetCurrentExpansion()));
    
    local name = UnitName("player")
    local realm = GetRealmName()
    self.CharacterDropDown.xOffset = 8
    self.CharacterDropDown.yOffset = 15
    UIDropDownMenu_SetText(self.CharacterDropDown, name .. "-" .. realm)
    
	local homeData = {
		name = HOME,
		OnClick = function()
            BtWQuestsNav_UpdateCurrentHistory()
    
			BtWQuests_SetCurrentCategory(nil)
            
            BtWQuests_DisplayCurrentCategory()

            BtWQuestsNav_AddCurrentToHistory()
		end,
	}
    NavBar_Initialize(self.navBar, "NavButtonTemplate", homeData, self.navBar.home, self.navBar.overflow);
    
    self.categoryItemPool = CreateFramePool("BUTTON", self.QuestSelect.scroll.child, "BtWQuestsCategoryButtonTemplate");
    self.chainItemPool = CreateFramePool("BUTTON", self.Chain.scroll.child, "BtWQuestsChainItemButtonTemplate", ChainItemPool_HideAndClearAnchors);
    
    self.HistoryIndex = 0
    self.History = {}
    BtWQuestsNav_AddCurrentToHistory()
    
	-- LDB launcher
	local LDB = LibStub and LibStub("LibDataBroker-1.1", true)
	if LDB then
		BtWQuestsLauncher = LDB:NewDataObject("BtWQuests", {
			type = "launcher",
            label = "BtWQuests",
			icon = "Interface\\QuestFrame\\UI-QuestLog-BookIcon",
			OnClick = function(clickedframe, button)
				ToggleFrame(BtWQuests)
			end,
		})
	end
end

function BtWQuests_OnEvent(self, event, ...)
    if event == "ADDON_LOADED" then
        if ... == "BtWQuests" then
            if BtWQuests_Settings == nil then
                BtWQuests_Settings = {
                    minimapShown = true,
                    ignoredCategories = {},
                    ignoredChains = {},
                }
            end

            if BtWQuests_Settings.ignoredCategories == nil then
                BtWQuests_Settings.ignoredCategories = {}
            end

            if BtWQuests_Settings.ignoredChains == nil then
                BtWQuests_Settings.ignoredChains = {}
            end
            
            BtWQuestsMinimapButton:SetShown(BtWQuests_Settings.minimapShown)
            if BtWQuests_Settings.minimapX ~= nil then
                BtWQuestsMinimapButton_SetCoords(BtWQuests_Settings.minimapX, BtWQuests_Settings.minimapY)
            else
                BtWQuestsMinimapButton_Reposition(BtWQuests_Settings.minimapAngle)
            end

            local name = UnitName("player")
            local realm = GetRealmName()
            if BtWQuests_Characters == nil then
                BtWQuests_Characters = {}
            end
            
            for _,character in ipairs(BtWQuests_Characters) do
                if BtWQuests_CharactersMap[character.realm] == nil then
                    BtWQuests_CharactersMap[character.realm] = {}
                end

                BtWQuests_CharactersMap[character.realm][character.name] = character

                if character.realm == realm and character.name == name then
                    BtWQuests_Character = character
                    BtWQuests_CharacterIsPlayer = true
                end
            end

            if BtWQuests_CharactersMap[realm] == nil or BtWQuests_CharactersMap[realm][name] == nil then
                local character = {
                    ["realm"] = realm,
                    ["name"] = name,
                }

                if BtWQuests_CharactersMap[character.realm] == nil then
                    BtWQuests_CharactersMap[character.realm] = {}
                end

                BtWQuests_CharactersMap[character.realm][character.name] = character
                table.insert(BtWQuests_Characters, character)
                BtWQuests_Character = character
                BtWQuests_CharacterIsPlayer = true

                table.sort(BtWQuests_Characters, function (a, b)
                    if a.name == b.name then
                        return a.realm < b.realm
                    end
    
                    return a.name < b.name
                end)
            end
        end
    elseif event == "QUEST_LOG_UPDATE" then
        -- Update quest log info for current character
        if BtWQuests_CharacterIsPlayer then
            local questLog = {}
            local numEntries = GetNumQuestLogEntries()
            for i=1,numEntries do
                local questID = select(8, GetQuestLogTitle(i));

                if questID ~= nil then
                    questLog[questID] = true
                end
            end

            local reputations = {}
            local numEntries = GetNumFactions()
            for i=1,numEntries do
                local _, _, standing, barMin, barMax, barValue, _, _, _, _, _, _, _, factionID = GetFactionInfo(i)
                if factionID ~= nil then
                    reputations[factionID] = { standing, barMin, barMax, barValue }
                end
            end

            local professions = {}
            
            local professionIndexes = {GetProfessions()}
            for _,index in ipairs(professionIndexes) do
                professions[select(7, GetProfessionInfo(index))] = true
            end


            BtWQuests_Character.questsActive = questLog
            BtWQuests_Character.questsCompleted = GetQuestsCompleted()

            BtWQuests_Character.faction = UnitFactionGroup("player")
            BtWQuests_Character.sex = UnitSex("player")
            BtWQuests_Character.class = select(3, UnitClass("player"))
            BtWQuests_Character.race = select(2, UnitRace("player"))
            BtWQuests_Character.level = UnitLevel("player")
            BtWQuests_Character.professions = professions
            BtWQuests_Character.reputations = reputations
        end
    elseif event == "ZONE_CHANGED" or event == "ZONE_CHANGED_INDOORS" or event == "ZONE_CHANGED_NEW_AREA" then
        if BtWQuests:IsShown() then
            BtWQuestsNav_UpdateHere()
        end
    end
end

function BtWQuests_OnShow(self)
    PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN);
    
    BtWQuestsNav_UpdateHere()
    
    if BtWQuests.Chain:IsShown() then
        BtWQuests_UpdateCurrentChain()
    else
        BtWQuests_DisplayCurrentCategory()
    end
end

function BtWQuests_OnHide(self)
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
end

function BtWQuestsChainFrame_OnShow(self)
    self:RegisterEvent("QUEST_ACCEPTED")
    self:RegisterEvent("QUEST_AUTOCOMPLETE")
    self:RegisterEvent("QUEST_COMPLETE")
    self:RegisterEvent("QUEST_FINISHED")
    self:RegisterEvent("QUEST_TURNED_IN")
    self:RegisterEvent("QUEST_LOG_CRITERIA_UPDATE")
    self:RegisterEvent("QUEST_WATCH_LIST_CHANGED")
    self:RegisterEvent("QUEST_WATCH_OBJECTIVES_CHANGED")
    self:RegisterEvent("QUEST_WATCH_UPDATE")
end

function BtWQuestsChainFrame_OnHide(self)
    self:UnregisterAllEvents()
end

function BtWQuestsChainFrame_OnEvent(self, ...)
    BtWQuests_UpdateCurrentChain()
end

function BtWQuestsChainFrameScrollFrame_OnUpdate(self)
    local mouseX, mouseY = GetCursorPosition()
    local scale = self:GetEffectiveScale()
    mouseX, mouseY = mouseX / scale, mouseY / scale
    
    local maxXScroll, maxYScroll = self:GetHorizontalScrollRange(), self:GetVerticalScrollRange()
    
    mouseX = min(max(mouseX - self.mouseX + self.scrollX, 0), maxXScroll)
    mouseY = min(max(mouseY - self.mouseY + self.scrollY, 0), maxYScroll)
    
    self:SetHorizontalScroll(mouseX)
    self:SetVerticalScroll(mouseY)
end

function BtWQuests_ZoomOut()
    BtWQuestsNav_Back()
    
    BtWQuestsTooltip:Hide();
end

function BtWQuests_DisplayCurrentCategory(scrollTo)
	BtWQuests.categoryItemPool:ReleaseAll();
	local questSelect = BtWQuests.QuestSelect;
    
	BtWQuests.Chain:Hide();
	questSelect:Show();
    
	local scrollFrame = questSelect.scroll.child;
    local scrollToButton
    
    local startX = 12
    local startY = -10
	local i = 1;
	local index = 1;
    local itemType, id, name, hidden, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata = BtWQuests_GetCategoryItemByIndex(i, true);
    while id do
        if not hidden then
            local categoryButton = BtWQuests.categoryItemPool:Acquire();

            local x = startX + mod(index - 1, BTWQUESTS_CATEGORY_NUM_ITEMS_PER_ROW) * (BTWQUESTS_CATEGORY_ITEM_WIDTH + BTWQUESTS_CATEGORY_ITEM_PADDING)
            local y = startY - floor((index - 1) / BTWQUESTS_CATEGORY_NUM_ITEMS_PER_ROW) * (BTWQUESTS_CATEGORY_ITEM_HEIGHT + BTWQUESTS_CATEGORY_ITEM_PADDING)
            
            categoryButton:SetPoint("TOPLEFT", x,  y);

            categoryButton.name:SetText(name);
            categoryButton.bgImage:SetTexture(buttonImage);
            categoryButton.AciveTexture:SetShown(itemType == "chain" and BtWQuests_IsChainActive(id) or false)
            if itemType == "chain" then
                categoryButton.Tick:SetShown(BtWQuests_IsChainCompleted(id))
            else
                categoryButton.Tick:SetShown(BtWQuests_IsCategoryCompleted(id))
            end
            
            categoryButton.type = itemType;
            categoryButton.id = id;
            categoryButton.userdata = userdata;
            categoryButton:SetScript("OnClick", onClick)
            categoryButton:SetScript("OnEnter", onEnter)
            categoryButton:SetScript("OnLeave", onLeave)
            
            categoryButton:Show();

            if type(scrollTo) == "number" and index == scrollTo then
                scrollToButton = categoryButton
            elseif type(scrollTo) == "table" and BtWQuests_CompareCategoryItemByIndex(index, scrollTo) then
                scrollToButton = categoryButton
            end

            index = index + 1;
        end
        
        i = i + 1;
        itemType, id, name, hidden, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata = BtWQuests_GetCategoryItemByIndex(i, true);
    end

    if type(scrollTo) == "table" and scrollTo.type == "coords" then
        questSelect.scroll:UpdateScrollChildRect()
        -- questSelect.scroll:SetHorizontalScroll(scrollTo.x)
        questSelect.scroll:SetVerticalScroll(scrollTo.y)
    elseif scrollTo ~= false then
        if scrollToButton then
            questSelect.scroll:UpdateScrollChildRect()
            questSelect.scroll:SetVerticalScroll(-select(5, scrollToButton:GetPoint("TOP")) - (chain.scroll:GetHeight()/2) + 24)
        end
    end
    
    ShowUIPanel(BtWQuests)
end

function BtWQuests_DisplayCurrentChain(scrollTo)
	BtWQuests.chainItemPool:ReleaseAll();
	local chain = BtWQuests.Chain;
    
	BtWQuests.QuestSelect:Hide();
	chain:Show();
    
    local scrollFrame = chain.scroll.child;
    local scrollToButton, scrollToButtonAside

    scrollFrame.ItemButtons = {}
    local buttons = scrollFrame.ItemButtons
    
    local _, _, _, _, _, _, _, numItems = BtWQuests_GetChainByID(BtWQuests_GetCurrentChain())
    for index = numItems, 1, -1 do
        local skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata = BtWQuests_GetChainItemByIndex(index)
        local connections = {BtWQuests_GetChainItemConnectorsByIndex(index)}
        
        local itemButton = BtWQuests.chainItemPool:Acquire();
        buttons[index] = itemButton
        
        itemButton.skip = skip
        if skip then
            itemButton:Hide()
        
            if itemButton.backgroundLinePool then
                itemButton.backgroundLinePool:ReleaseAll();
            end
        else
            -- itemButton.ForgottenAnim:Stop()
            itemButton.name:SetAlpha(1)
            itemButton.ForgottenAnim:Stop()
            
            if tagID then
                local tagCoords = QUEST_TAG_TCOORDS[tagID];
                if tagCoords then
                    itemButton.TagTexture:SetTexCoord( unpack(tagCoords) );
                    itemButton.TagTexture:Show();
            
                    if difficulty then
                        itemButton.TagTexture:SetPoint("BOTTOMRIGHT", -10, 6)
                    else
                        itemButton.TagTexture:SetPoint("BOTTOMRIGHT", -10, 16)
                    end
                else
                    itemButton.TagTexture:Hide();
                end
            else
                itemButton.TagTexture:Hide();
            end
            
            itemButton.HeroicTexture:SetShown(difficulty == "heroic" or difficulty == "normal" or difficulty == "lfr")
            itemButton.MythicTexture:SetShown(difficulty == "mythic")
            
            itemButton.name:SetText(name)
            
            itemButton.status = status
            itemButton.userdata = userdata
            itemButton:SetScript("OnClick", onClick)
            itemButton:SetScript("OnEnter", onEnter)
            itemButton:SetScript("OnLeave", onLeave)
            itemButton.aside = aside
            itemButton.breadcrumb = breadcrumb
            
            if breadcrumb and #connections > 0 and itemButton.status ~= 'complete' then
                local isCompleted = false
                for j=1,#connections do
                    local connection = index + connections[j]
                    local connectionItem = buttons[connection]
                    if connectionItem and connectionItem:IsShown() then
                        if connectionItem.status ~= nil then
                            isCompleted = true
                            break
                        end
                    end
                end
                
                if isCompleted then
                    itemButton.status = 'complete'
                end
            end
            
            if scrollTo == nil and itemButton.status ~= "complete" then
                if aside then
                    scrollToButtonAside = itemButton
                else
                    scrollToButton = itemButton
                end
            elseif type(scrollTo) == "number" and index == scrollTo then
                scrollToButton = itemButton
            elseif type(scrollTo) == "table" and BtWQuests_CompareChainItemByIndex(index, scrollTo) then
                scrollToButton = itemButton
            end
            
            
            itemButton.canBeActive = itemButton.status == nil
            itemButton.IsNextAnim:Stop()
            if not breadcrumb then
                for j=1,#connections do
                    local connection = index + connections[j]
                    local connectionItem = buttons[connection]
                    if connectionItem and connectionItem:IsShown() then
                        
                        if connectionItem.canBeActive then
                            if itemButton.status == "complete" then
                                connectionItem.ActiveTexture:Show()
                                connectionItem.IsNextAnim:Play()
                            else
                                connectionItem.canBeActive = false
                                connectionItem.ActiveTexture:Hide()
                                connectionItem.IsNextAnim:Stop()
                            end
                        end
                    end
                end
            end
        
            itemButton.Tick:SetShown(itemButton.status == "complete")
            if itemButton.status == "complete" then
                itemButton.ForgottenAnim:Play()
            end
            
            if atlas then
                itemButton.Icon:SetAtlas(atlas)
            end
            
            itemButton:SetPoint("TOP", 0, -(y * 80) - (chain.scroll:GetHeight()/2) + 24);
            itemButton:SetPoint("LEFT", 95 * x + 12, 0);
            
            
            
            
            if not itemButton.backgroundLinePool then
                itemButton.backgroundLinePool = CreateFramePool("FRAME", scrollFrame, "BtWQuestsLineTemplate");
            end
            
            itemButton.backgroundLinePool:ReleaseAll();
            
            for j=1,#connections do
                local connection = index + connections[j]
                local connectionItem = buttons[connection]
                
                if connectionItem and not connectionItem.skip then
                    local lineContainer = itemButton.backgroundLinePool:Acquire();
                    
                    lineContainer.Background:SetStartPoint("CENTER", itemButton);
                    lineContainer.Background:SetEndPoint("CENTER", connectionItem);
                    
                    lineContainer.Active:SetStartPoint("CENTER", itemButton);
                    lineContainer.Active:SetEndPoint("CENTER", connectionItem);
                    
                    lineContainer.Complete:SetStartPoint("CENTER", itemButton);
                    lineContainer.Complete:SetEndPoint("CENTER", connectionItem);
                    
                    -- lineContainer:SetAlpha(1)
                    
                    lineContainer.PulseAlpha:Stop()
                        
                    lineContainer.Active:Hide()
                    lineContainer.Complete:Hide()
                    
                    if itemButton.status == "complete" then
                        lineContainer.Complete:Show()
                    elseif itemButton.status == "active" then
                        -- lineContainer.Active:Show()
                    end
                    
                    lineContainer.connection = connectionItem
                    lineContainer:SetShown(visible and connectionItem:IsShown());
                end
            end
            
            if itemButton.status == "active" then
                itemButton.ActiveTexture:Show()
                itemButton.ActiveAnim:Play()
            else
                itemButton.ActiveTexture:Hide()
            end

            itemButton:SetShown(visible);
        end
    end
    
    local temp = numItems
    while temp > 0 and not buttons[temp]:IsShown() do
        temp = temp - 1
    end

    if temp > 0 then
        scrollFrame.Bottom:SetPoint("TOP", 0, select(5, buttons[temp]:GetPoint("TOP")) - 23 - (chain.scroll:GetHeight()/2))
    end

    if type(scrollTo) == "table" and scrollTo.type == "coords" then
        chain.scroll:UpdateScrollChildRect()
        -- chain.scroll:SetHorizontalScroll(scrollTo.x)
        chain.scroll:SetVerticalScroll(scrollTo.y)
    elseif scrollTo ~= false then
        if scrollToButton == nil then
            scrollToButton = scrollToButtonAside
        end
        
        if scrollToButton == nil then
            temp = 1
            while buttons[temp] and not buttons[temp]:IsShown() do
                temp = temp + 1
            end
            
            scrollToButton = buttons[temp]
        end
        
        if scrollToButton then
            chain.scroll:UpdateScrollChildRect()
            chain.scroll:SetVerticalScroll(-select(5, scrollToButton:GetPoint("TOP")) - (chain.scroll:GetHeight()/2) + 24)
        end
    end

    ShowUIPanel(BtWQuests)
end

function BtWQuests_UpdateCurrentChain(scroll)
    local chain = BtWQuests.Chain
    
    if chain:IsShown() then
        local scrollFrame = chain.scroll.child;
        local buttons = scrollFrame.ItemButtons
        
        local scrollToButton, scrollToButtonAside
        
        local _, _, _, _, _, _, _, numItems = BtWQuests_GetChainByID(BtWQuests_GetCurrentChain())
        for index = numItems,1,-1 do
            local skip, _, visible, _, _, _, breadcrumb, aside, _, _, status, _, _, _, _ = BtWQuests_GetChainItemByIndex(index)
            local connections = {BtWQuests_GetChainItemConnectorsByIndex(index)}
        
			local itemButton = buttons[index];
            if not skip then
                itemButton.newStatus = status
            
                if breadcrumb and #connections > 0 and itemButton.newStatus ~= 'complete' then
                    local isCompleted = false
                    for j=1,#connections do
                        local connection = index + connections[j]
                        local connectionItem = buttons[connection]
                        if connectionItem and connectionItem:IsShown() then
                            if connectionItem.status ~= nil then
                                isCompleted = true
                                break
                            end
                        end
                    end
                    
                    if isCompleted then
                        itemButton.newStatus = 'complete'
                    end
                end
                
                if itemButton.newStatus ~= "complete" then
                    if aside then
                        scrollToButtonAside = itemButton
                    else
                        scrollToButton = itemButton
                    end
                end
            
                itemButton.canBeActive = itemButton.newStatus == nil
                itemButton.IsNextAnim:Stop()
                if not breadcrumb then
                    for j=1,#connections do
                        local connection = index + connections[j]
                        local connectionItem = buttons[connection]
                        if connectionItem and connectionItem:IsShown() then
                            
                            if connectionItem.canBeActive then
                                if itemButton.newStatus == "complete" then
                                    connectionItem.ActiveTexture:Show()
                                    connectionItem.IsNextAnim:Play()
                                else
                                    connectionItem.canBeActive = false
                                    connectionItem.ActiveTexture:Hide()
                                    connectionItem.IsNextAnim:Stop()
                                end
                            end
                        end
                    end
                end
                
                itemButton.Tick:SetShown(itemButton.newStatus == "complete")
                if itemButton.newStatus == "complete" then
                    itemButton.ForgottenAnim:Play()
                end
                
                if itemButton.newStatus ~= itemButton.status then
                    if itemButton.newStatus == 'complete' then
                        itemButton.ActiveTexture:Hide()
                        
                        for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                            frame.DefaultToCompleteAnim:Play()
                        end
                    elseif itemButton.newStatus == 'active' then
                        itemButton.ActiveTexture:Show()
                    end
                end
                
                if itemButton.newStatus == 'active' then
                    itemButton.ActiveAnim:Play()
                end
                
                itemButton.status = itemButton.newStatus
                itemButton.newStatus = nil -- Dont want to confuse the code next time
                
                for lineContainer in itemButton.backgroundLinePool:EnumerateActive() do
                    lineContainer:SetShown(visible and lineContainer.connection:IsShown());
                end
                
                itemButton:SetShown(visible)
            end
        end
        
        if scroll then
            if scrollToButton == nil then
                scrollToButton = scrollToButtonAside
            end
            
            if scrollToButton == nil then
                scrollToButton = scrollFrame["item1"]
            end
            
            chain.scroll:UpdateScrollChildRect()
            chain.scroll:SetVerticalScroll(-select(5, scrollToButton:GetPoint("TOP")) - (chain.scroll:GetHeight()/2) + 24)
        end
    end
end

-- [[ Tooltip ]]
BtWQuestsTooltipMixin = {}
function BtWQuestsTooltipMixin:SetChain(chainID)
    local chainID = tonumber(chainID)
    
    local _, name, _, _, _, _, numPrerequisites = BtWQuests_GetChainByID(chainID)
    
    self:ClearLines()
    self:AddDoubleLine(name)
    
    if BtWQuests_IsChainActive(chainID) then
        self:AddLine(BTWQUESTS_QUEST_CHAIN_ACTIVE)
    end
    
    local addedPrerequisite
    local i = 1
	for index = 1, numPrerequisites do
        local name, visible, skip, completed = BtWQuests_GetChainPrerequisiteByID(chainID, index);
        if visible and not skip then
            if not addedPrerequisite then
                self:AddLine(" ")
                self:AddLine(BTWQUESTS_TOOLTIP_PREREQUISITES)
                addedPrerequisite = true
            end

            if completed then
                self:AddLine(" - " .. name, 0.5, 0.5, 0.5)
            else
                self:AddLine(" - " .. name, 1, 1, 1)
            end
        end
	end
    
    self:Show();
end

-- Custom function for displaying an active quest showing completed requirements
function BtWQuestsTooltipMixin:SetActiveQuest(questID)
    local questID = tonumber(questID)
    
    local _, name = BtWQuests_GetQuestByID(questID)
    local questLogIndex = GetQuestLogIndexByID(questID)
    local _, objectiveText = GetQuestLogQuestText(questLogIndex);
    
    self:ClearLines()
    self:AddDoubleLine(name)
    
    self:AddLine(GREEN_FONT_COLOR_CODE..QUEST_TOOLTIP_ACTIVE..FONT_COLOR_CODE_CLOSE)

    if objectiveText then
        self:AddLine(" ")
        self:AddLine(objectiveText, 1, 1, 1)
    end
    
    local requiredMoney = GetQuestLogRequiredMoney(questLogIndex);
    local numRequirements = GetNumQuestLeaderBoards(questLogIndex);

    local addedTitle
	for index = 1,numRequirements do
        local name, _, completed = GetQuestLogLeaderBoard(index, questLogIndex);
        if name then
            if not addedTitle then
                self:AddLine(" ")
                self:AddLine(QUEST_TOOLTIP_REQUIREMENTS)
                addedTitle = true
            end

            if completed then
                self:AddLine(" - " .. name, 0.5, 0.5, 0.5)
            else
                self:AddLine(" - " .. name, 1, 1, 1)
            end
        end
    end
    
    self:Show();
end

function BtWQuestsTooltipMixin:SetHyperlink(link)
    local _, _, color, type, text, name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]+):([^|]+)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
    
    if type == "quest" and BtWQuests_CharacterIsPlayer then
        local _, _, id = string.find(text, "^(%d+)")
        if GetQuestLogIndexByID(id) > 0 then
            self:SetActiveQuest(id)
        else
            GameTooltip.SetHyperlink(self, link)
        end
    elseif type == "btwquests" then
        local _, _, subtype, id = string.find(text, "^([^:]*):(%d+)")
        
        assert(subtype == "chain")
        
        self:SetChain(id)
    else
        GameTooltip.SetHyperlink(self, link)
    end
end


-- [[ Nav ]]

function BtWQuestsNav_UpdateHistoryButtons()
    BtWQuestsNavBack:SetEnabled(BtWQuests.HistoryIndex > 1)
    BtWQuestsNavForward:SetEnabled(BtWQuests.HistoryIndex < #BtWQuests.History)
end

function BtWQuestsNav_GetCurrent()
    if BtWQuests.Chain:IsShown() then
        return {
            type = "chain",
            id = BtWQuests_GetCurrentChain(),
            scrollTo = {
                type = "coords",
                x = BtWQuestsChainFrameScrollFrame:GetHorizontalScroll(),
                y = BtWQuestsChainFrameScrollFrame:GetVerticalScroll(),
            }
        };
    elseif BtWQuests_GetCurrentCategory() ~= nil then
        return {
            type = "category",
            id = BtWQuests_GetCurrentCategory(),
            scrollTo = {
                type = "coords",
                x = BtWQuestsQuestSelectScrollFrame:GetHorizontalScroll(),
                y = BtWQuestsQuestSelectScrollFrame:GetVerticalScroll(),
            }
        };
    else
        return {
            type = "expansion",
            id = BtWQuests_GetCurrentExpansion(),
            scrollTo = {
                type = "coords",
                x = BtWQuestsQuestSelectScrollFrame:GetHorizontalScroll(),
                y = BtWQuestsQuestSelectScrollFrame:GetVerticalScroll(),
            }
        };
    end
end

function BtWQuestsNav_AddCurrentToHistory()
    local last = BtWQuests.History[BtWQuests.HistoryIndex]
    local current = BtWQuestsNav_GetCurrent()
    
    if last == nil or current.type ~= last.type or current.id ~= last.id then
        BtWQuests.HistoryIndex = BtWQuests.HistoryIndex + 1

        while BtWQuests.History[BtWQuests.HistoryIndex] do
            table.remove(BtWQuests.History, BtWQuests.HistoryIndex)
        end

        table.insert(BtWQuests.History, current);
    end
    
    BtWQuestsNav_UpdateHistoryButtons()
end

function BtWQuestsNav_UpdateCurrentHistory()
    BtWQuests.History[BtWQuests.HistoryIndex] = BtWQuestsNav_GetCurrent();
end

function BtWQuestsNav_SelectFromHistory()
    local item = BtWQuests.History[BtWQuests.HistoryIndex]
    
    if item.type == "chain" then
        BtWQuests_SetCurrentChain(item.id)
        
        NavBar_Reset(BtWQuests.navBar)
        BtWQuestsNav_AddChainButtonParents(item.id)
        
        BtWQuests_DisplayCurrentChain(item.scrollTo)
    elseif item.type == "category" then
        BtWQuests_SetCurrentCategory(item.id)
        
        NavBar_Reset(BtWQuests.navBar)
        BtWQuestsNav_AddCategoryButtonParents(item.id)
        
        BtWQuests_DisplayCurrentCategory(item.scrollTo)
    elseif item.type == "expansion" then
        BtWQuests_SetCurrentExpansion(item.id)

        NavBar_Reset(BtWQuests.navBar)

        BtWQuests_DisplayCurrentCategory(item.scrollTo)
    end
end

function BtWQuestsNav_Back()
    if BtWQuests.HistoryIndex > 1 then
        BtWQuestsNav_UpdateCurrentHistory()
        
        BtWQuests.HistoryIndex = BtWQuests.HistoryIndex - 1
        
        BtWQuestsNav_SelectFromHistory()
    
        BtWQuestsNav_UpdateHistoryButtons()
    end
end

function BtWQuestsNav_Forward()
    if BtWQuests.HistoryIndex < #BtWQuests.History then
        BtWQuestsNav_UpdateCurrentHistory()
        
        BtWQuests.HistoryIndex = BtWQuests.HistoryIndex + 1
        
        BtWQuestsNav_SelectFromHistory()
    
        BtWQuestsNav_UpdateHistoryButtons()
    end
end

function BtWQuestsNav_Here()
    SetMapToCurrentZone()
    local mapID = GetCurrentMapAreaID()
    local item = BtWQuests_MapIDToItem[mapID]

    if item == nil or BtWQuests_GetItemSkip(item) then
        BtWQuestsNavHere:Disable()
        return
    end

    BtWQuests_SelectItem(item)
end

function BtWQuestsNav_UpdateHere()
    SetMapToCurrentZone()
    local mapID = GetCurrentMapAreaID()
    local item = BtWQuests_MapIDToItem[mapID]

    if BtWQuests_GetItemSkip(item) then
        item = nil
    end

    BtWQuestsNavHere:SetEnabled(item ~= nil)
end


-- [[ Navbar ]]

function BtWQuestsNav_SelectChain(self, ...)
    BtWQuestsNav_UpdateCurrentHistory()
        
    BtWQuests_SetCurrentChain(-self.id)
    
    BtWQuests_DisplayCurrentChain()
    
    BtWQuestsNav_AddCurrentToHistory()
end

function BtWQuestsNav_SelectCategory(self, ...)
    BtWQuestsNav_UpdateCurrentHistory()
        
    BtWQuests_SetCurrentCategory(self.id)

    BtWQuests_DisplayCurrentCategory()
    
    BtWQuestsNav_AddCurrentToHistory()
end

function BtWQuestsNav_SelectSister(self, index, navBar, ...)
    local buttonData = self.owner.data.sisters[index]
    buttonData.sisters = self.owner.data.sisters
    
    if self.owner.navParent.id == nil then
        NavBar_Reset(navBar)
    else
        NavBar_OpenTo(navBar, self.owner.navParent.id)
    end

    NavBar_AddButton(navBar, buttonData);
    
    buttonData.OnClick(buttonData)
end

function BtWQuestsNav_ListSisters(self, index)
	return self.data.sisters[index] and self.data.sisters[index].name or nil, BtWQuestsNav_SelectSister;
end

function BtWQuestsNav_AddCategoryButtonParents(id)
    local _, name, _, _, parent = BtWQuests_GetCategoryByID(id)
    
    if parent then
        BtWQuestsNav_AddCategoryButtonParents(parent)
    end
    
    BtWQuestsNav_AddCategoryButton(id, name, parent)
end

function BtWQuestsNav_AddChainButtonParents(id)
    local _, name, _, _, parent = BtWQuests_GetChainByID(id)
    
    if parent then
        BtWQuestsNav_AddCategoryButtonParents(parent)
    end
    
    BtWQuestsNav_AddChainButton(id, name, parent)
end

function BtWQuestsNav_AddCategoryButton(id, name, parent)
    if name == nil then
        _, name, _, _, parent = BtWQuests_GetCategoryByID(id)
    end
    
    local sisters = {}
    local index = 1
	local sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index, parnet);
    while sisterId do
        if not hidden then
            table.insert(sisters, {
                id = sisterType == "chain" and -sisterId or sisterId,
                name = sisterName,
                OnClick = sisterType == "chain" and BtWQuestsNav_SelectChain or BtWQuestsNav_SelectCategory,
                listFunc = BtWQuestsNav_ListSisters,
            })
        end
        
        index = index + 1
        sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index, parent);
    end
    
    local buttonData = {
        id = id,
        name = name,
        OnClick = BtWQuestsNav_SelectCategory,
        listFunc = BtWQuestsNav_ListSisters,
        sisters = sisters,
    }
    NavBar_AddButton(BtWQuests.navBar, buttonData);
end

function BtWQuestsNav_AddChainButton(id, name, parent)
    if name == nil then
        _, name, _, _, parent = BtWQuests_GetChainByID(id)
    end
    
    local sisters = {}
    local index = 1
	local sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index, parent);
    while sisterId do
        if not hidden then
            table.insert(sisters, {
                id = sisterType == "chain" and -sisterId or sisterId,
                name = sisterName,
                OnClick = sisterType == "chain" and BtWQuestsNav_SelectChain or BtWQuestsNav_SelectCategory,
                listFunc = BtWQuestsNav_ListSisters,
            })
        end
        
        index = index + 1
        sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index, parent);
    end
    
    local buttonData = {
        id = -id,
        name = name,
        OnClick = BtWQuestsNav_SelectChain,
        listFunc = BtWQuestsNav_ListSisters,
        sisters = sisters,
    }
    NavBar_AddButton(BtWQuests.navBar, buttonData);
end


-- [[ Character Dropdown ]]
function BtWQuestsCharacterDropDown_Initialize(self, level)
    local name = UnitName("player")
    local realm = GetRealmName()

	local info = UIDropDownMenu_CreateInfo();
    info.text = name .. "-" .. realm;
    info.func = BtWQuestsCharacterDropDown_Select
    info.checked = BtWQuests_Character.realm == realm and BtWQuests_Character.name == name;
    info.arg1 = BtWQuests_CharactersMap[realm][name];
    UIDropDownMenu_AddButton(info, level)

    for _,character in ipairs(BtWQuests_Characters) do
        if character.name ~= name or character.realm ~= realm then
            info.text = character.name .. "-" .. character.realm;
            info.func = BtWQuestsCharacterDropDown_Select
            info.checked = BtWQuests_Character.realm == character.realm and BtWQuests_Character.name == character.name;
            info.arg1 = character;
            UIDropDownMenu_AddButton(info, level)
        end
    end
end

function BtWQuestsCharacterDropDown_Select(self, character)
    local name = UnitName("player")
    local realm = GetRealmName()

    BtWQuests_Character = character
    BtWQuests_CharacterIsPlayer = (character.realm == realm and character.name == name)

    UIDropDownMenu_SetText(BtWQuests.CharacterDropDown, character.name .. "-" .. character.realm);
    
    if BtWQuests_CurrentChain ~= nil then
        BtWQuests_SelectChain(BtWQuests_CurrentChain)
    elseif BtWQuests_CurrentCategory ~= nil then
        BtWQuests_SelectCategory(BtWQuests_CurrentCategory)
    elseif BtWQuests_CurrentExpansion ~= nil then
        BtWQuests_SelectExpansion(BtWQuests_CurrentExpansion)
    end
end


-- [[ Expansion Dropdown ]]

function BtWQuestsExpansionDropDown_Initialize(self, level)
	local info = UIDropDownMenu_CreateInfo();
	local numTiers = BtWQuests_GetExpansionCount();
	local current = BtWQuests_GetCurrentExpansion();
    for i=0,numTiers - 1 do
        if (BtWQuests_Expansions[i] ~= nil and #BtWQuests_Expansions[i] > 0) or i == current then
            info.text = BtWQuests_GetExpansionInfo(i);
            info.func = BtWQuestsExpansionDropDown_Select
            info.checked = i == current;
            info.arg1 = i;
            UIDropDownMenu_AddButton(info, level)
        end
	end
end

function BtWQuestsExpansionDropDown_Select(_, expansion)
	BtWQuests_SetCurrentExpansion(expansion);

	local tierData = BTWQUESTS_EXPANSION_DATA[expansion];
	local questSelect = BtWQuests.QuestSelect;
	questSelect.bg:SetTexture(tierData.backgroundTexture);

	UIDropDownMenu_SetText(questSelect.ExpansionDropDown, BtWQuests_GetExpansionInfo(BtWQuests_GetCurrentExpansion()));

    NavBar_Reset(BtWQuests.navBar)
    
    BtWQuests_SetCurrentCategory()
    BtWQuests_DisplayCurrentCategory()
end


-- [[ Minimap Button ]]
local minimapShapes = {
	-- quadrant booleans (same order as SetTexCoord)
	-- {bottom-right, bottom-left, top-right, top-left}
	-- true = rounded, false = squared
	["ROUND"] 			= {true,  true,  true,  true },
	["SQUARE"] 			= {false, false, false, false},
	["CORNER-TOPLEFT"] 		= {false, false, false, true },
	["CORNER-TOPRIGHT"] 		= {false, false, true,  false},
	["CORNER-BOTTOMLEFT"] 		= {false, true,  false, false},
	["CORNER-BOTTOMRIGHT"]	 	= {true,  false, false, false},
	["SIDE-LEFT"] 			= {false, true,  false, true },
	["SIDE-RIGHT"] 			= {true,  false, true,  false},
	["SIDE-TOP"] 			= {false, false, true,  true },
	["SIDE-BOTTOM"] 		= {true,  true,  false, false},
	["TRICORNER-TOPLEFT"] 		= {false, true,  true,  true },
	["TRICORNER-TOPRIGHT"] 		= {true,  false, true,  true },
	["TRICORNER-BOTTOMLEFT"] 	= {true,  true,  false, true },
	["TRICORNER-BOTTOMRIGHT"] 	= {true,  true,  true,  false},
}

function BtWQuestsMinimapButton_Toggle()
    BtWQuests_Settings.minimapShown = not BtWQuests_Settings.minimapShown
    
    BtWQuestsMinimapButton:SetShown(BtWQuests_Settings.minimapShown)
end

function BtWQuestsMinimapButton_SetCoords(x, y)
    BtWQuests_Settings.minimapX = x
    BtWQuests_Settings.minimapY = y

    BtWQuestsMinimapButton:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

function BtWQuestsMinimapButton_Reposition(degrees)
    local radius = 80
	local rounding = 10
    local angle = math.rad(degrees or 200)
    local x, y
	local cos = math.cos(angle)
	local sin = math.sin(angle)
	local q = 1;
	if cos < 0 then
		q = q + 1;	-- lower
	end
	if sin > 0 then
		q = q + 2;	-- right
	end
    local minimapShape = GetMinimapShape and GetMinimapShape() or "ROUND"
    
	local quadTable = minimapShapes[minimapShape];
	if quadTable[q] then
		x = cos*radius;
		y = sin*radius;
	else
		local diagRadius = math.sqrt(2*(radius)^2)-rounding
		x = math.max(-radius, math.min(cos*diagRadius, radius))
		y = math.max(-radius, math.min(sin*diagRadius, radius))
	end
    BtWQuestsMinimapButton_SetCoords(x, y)
end

function BtWQuestsMinimapButtonDraggingFrame_OnUpdate()
	local px,py = GetCursorPosition()
    local mx,my = Minimap:GetCenter()
    
    local scale = Minimap:GetEffectiveScale()
    px, py = px / scale, py / scale
    
    BtWQuestsMinimapButton_Reposition(math.deg(math.atan2(py - my, px - mx)))
end

function BtWQuestsMinimapButton_OnClick(self, button)
	if button == "RightButton" then -- Context menu
    else
        ToggleFrame(BtWQuests)
    end
end


-- [[ Slash Command ]]

SLASH_BTWQUESTS1 = "/btwquests"
SlashCmdList["BTWQUESTS"] = function(msg)
    if msg == "minimap" then
        BtWQuestsMinimapButton_Toggle()
    else
        ToggleFrame(BtWQuests)
    end
end 


-- [[ Hyperlink Handling ]]

local function ChatFrame_Filter(self, event, msg, ...)
	msg = msg:gsub("%[btwquests:([^:]+):(%d+):([^:]+):([^%]]+)%]","|c%3|Hbtwquests:%1:%2|h[%4]|h|r");
    
	return false, msg, ...;
end

local events = {
	"CHAT_MSG_SAY",
	"CHAT_MSG_YELL",
	"CHAT_MSG_EMOTE",
	"CHAT_MSG_GUILD",
	"CHAT_MSG_OFFICER",
	"CHAT_MSG_PARTY",
	"CHAT_MSG_PARTY_LEADER",
	"CHAT_MSG_RAID",
	"CHAT_MSG_RAID_LEADER",
	"CHAT_MSG_RAID_WARNING",
	"CHAT_MSG_BATTLEGROUND",
	"CHAT_MSG_BATTLEGROUND_LEADER",
	"CHAT_MSG_WHISPER",
	"CHAT_MSG_WHISPER_INFORM",
	"CHAT_MSG_BN_WHISPER",
	"CHAT_MSG_BN_WHISPER_INFORM",
	"CHAT_MSG_BN_CONVERSATION",
	"CHAT_MSG_BN_INLINE_TOAST_BROADCAST",
	"CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM",
	"CHAT_MSG_CHANNEL",
};

for i, event in ipairs(events) do
	ChatFrame_AddMessageEventFilter(event, ChatFrame_Filter);
end

local original_InsertLink = ChatEdit_InsertLink
function ChatEdit_InsertLink(link)
	if link and link:find("^|c[^|]+|Hbtwquests") then
        local color, text, name = link:match("^|c([^|]+)|H([^|]+)|h%[([^%]]+)%]|h|r");
        link = format("[%s:%s:%s]", text, color, name)
    end
    
    return original_InsertLink(link)
end

local original_SetHyperlink = ItemRefTooltip.SetHyperlink;
function ItemRefTooltip:SetHyperlink(link)
	if link:find("^btwquests") then
		if IsModifiedClick("CHATLINK") then
			ChatEdit_InsertLink("["..link.."]")
		else
            BtWQuests_SelectFromLink(link)
		end
	else
		original_SetHyperlink(self, link);
	end
end