local EJ_TIER_DATA =
{
	[1] = { backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-Classic", r = 1.0, g = 0.8, b = 0.0 },
	[2] = { backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-BurningCrusade", r = 0.6, g = 0.8, b = 0.0 },
	[3] = { backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-WrathoftheLichKing", r = 0.2, g = 0.8, b = 1.0 },
	[4] = { backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-Cataclysm", r = 1.0, g = 0.4, b = 0.0 },
	[5] = { backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-MistsofPandaria", r = 0.0, g = 0.6, b = 0.2 },
	[6] = { backgroundTexture = "Interface\\ENCOUNTERJOURNAL\\UI-EJ-WarlordsofDraenor", r = 0.82, g = 0.55, b = 0.1 },
	[7] = { backgroundTexture = "Interface\\EncounterJournal\\UI-EJ-Legion", r = 1.0, g = 0.8, b = 0.0 },
}

local function ArrayContains(a, item)
    for i=1,#a do
        if a[i] == item then
            return true
        end
    end
    
    return false
end

local EJ_NUM_INSTANCE_PER_ROW = 4;

local BtWQuests_CurrentExpansion = 7
local BtWQuests_CurrentCategory = nil
local BtWQuests_CurrentChain = nil

function BtWQuests_GetCurrentExpansion()
    return BtWQuests_CurrentExpansion
end

function BtWQuests_SetCurrentExpansion(value)
    if not (value >= 1 and value <= 7) then
        value = 7
    end
    
    BtWQuests_CurrentExpansion = value
end

function BtWQuests_GetCurrentCategory()
    return BtWQuests_CurrentCategory
end

function BtWQuests_SetCurrentCategory(categoryID)
    BtWQuests_CurrentCategory = tonumber(categoryID)
    BtWQuests_CurrentChain = nil
end

function BtWQuests_SelectCategory(id)
    local id = tonumber(id)
    
    BtWQuests_SetCurrentCategory(id)
    
    NavBar_Reset(BtWQuests.navBar)
    BtWQuestsNav_AddCategoryButtonParents(id)
    
    BtWQuests:Show()
    BtWQuests_ListCategories()
end

function BtWQuests_GetCurrentChain()
    return BtWQuests_CurrentChain
end

function BtWQuests_SetCurrentChain(chainID)
    BtWQuests_CurrentChain = tonumber(chainID)
    BtWQuests_CurrentCategory = select(5, BtWQuests_GetChainByID(BtWQuests_CurrentChain))
end

function BtWQuests_SelectChain(id, scrollTo)
    local id = tonumber(id)
    
    BtWQuests_SetCurrentChain(id)
    
    NavBar_Reset(BtWQuests.navBar)
    BtWQuestsNav_AddChainButtonParents(id)
    
    BtWQuests:Show()
    BtWQuests_DisplayChain(scrollTo)
end

function BtWQuests_SelectFromLink(link, scrollTo)
    local _, _, color, type, text, name = string.find(link, "|cff(%x*)|H([^:]+):([^|]+)|h%[([^%[%]]*)%]|h|r")
    if not color then
        _, _, type, text = string.find(link, "([^:]+):(.+)")
    end
    
    assert(type == "quest" or type == "btwquests")
    
    if type == "quest" then
        local _, _, id = string.find(text, "^(%d+):")
        
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
        
        assert(subtype == "category" or subtype == "chain")
        
        if subtype == "category" then
            BtWQuests_SelectCategory(id)
            
            return true
        elseif subtype == "chain" then
            BtWQuests_SelectChain(id, scrollTo)
            
            return true
        end
    end
    
    return false
end

local function BtWQuests_CheckRequirement(item)
    if item.type == "quest" then
        if item.active == true then
            return BtWQuests_IsQuestActive(item.id)
        elseif item.active == false then
            return not BtWQuests_IsQuestActive(item.id)
        else
            return BtWQuests_IsQuestCompleted(item.id)
        end
    elseif item.type == "chain" then
        if BtWQuests_Chains[item.id].completed == nil then
            return false
        end
        
        if BtWQuests_Chains[item.id].completed[1] ~= nil then
            return BtWQuests_CheckRequirements(BtWQuests_Chains[item.id].completed)
        else
            return BtWQuests_CheckRequirement(BtWQuests_Chains[item.id].completed)
        end
    elseif item.type == "faction" then
        return item.faction == UnitFactionGroup("player")
    elseif item.type == "class" then
        return item.class == select(3, UnitClass("player"))
    elseif item.type == "classes" then
        return ArrayContains(item.classes, select(3, UnitClass("player")))
    elseif item.type == "level" then
        return UnitLevel("player") >= item.level
    elseif item.type == "achievement" then
        if item.completed == false then
            return not select(13, GetAchievementInfo(item.id))
        else
            return select(13, GetAchievementInfo(item.id))
        end
    elseif item.type ~= nil then
        assert(false, "Invalid item type: " .. item.type)
    else
        return item.onEval(item)
    end
end

local function BtWQuests_CheckRequirements(list)
    for i=1, #list do
        if (list[i].restrictions == nil or BtWQuests_CheckRequirements(list[i].restrictions)) and not BtWQuests_CheckRequirement(list[i]) then
            return false
        end
    end
    
    return true
end

local function BtWQuests_FindValidItem(list)
    for i=1, #list do
        if not list[i].restrictions or BtWQuests_CheckRequirements(list[i].restrictions) then
            return list[i]
        end
    end
    
    return nil
end

local function BtWQuests_GetItemName(item)
    if item.name then
        if type(item.name) == "function" then
            return item.name()
        end
        
        return item.name
    end

    if item.type == "quest" then
        return BtWQuests_GetItemName(BtWQuests_Quests[item.id])
    elseif item.type == "chain" then
        return BtWQuests_GetItemName(BtWQuests_Chains[item.id])
    elseif item.type == "level" then
        return string.format(BTWQUESTS_LEVEL_TO, item.level)
    elseif item.type == "achievement" then
        return select(2, GetAchievementInfo(item.id))
    elseif item.type ~= nil then
        assert(false, "Invalid item type: " .. item.type)
    end
end

local function BtWQuests_GetItemVisible(item)
    if item.visible ~= nil then
        if type(item.visible) == "table" then
            return BtWQuests_CheckRequirements(item.visible)
        elseif type(item.visible) == "function" then
            return item:visible()
        else
            return item.visible
        end
    end

    if item.type == "quest" then
        return BtWQuests_GetItemVisible(BtWQuests_Quests[item.id])
    elseif item.type == "chain" then
        return BtWQuests_GetItemVisible(BtWQuests_Chains[item.id])
    else
        return true
    end
end

local function BtWQuests_GetItemSkip(item)
    if item.restrictions and not BtWQuests_CheckRequirements(item.restrictions) then
        return true
    end

    if item.type == "quest" and BtWQuests_Quests[item.id] ~= nil then
        return BtWQuests_GetItemSkip(BtWQuests_Quests[item.id])
    elseif item.type == "chain" and BtWQuests_Chains[item.id] ~= nil then
        return BtWQuests_GetItemSkip(BtWQuests_Chains[item.id])
    else
        return false
    end
end

local BtWQuests_GetItemCompleted = BtWQuests_CheckRequirement

--- Get the correct data for a Category or Chain Button
-- @param item
-- @return name
-- @return hidden
-- @return completed
local function BtWQuests_GetItem(item)
    return BtWQuests_GetItemName(item), BtWQuests_GetItemVisible(item), BtWQuests_GetItemSkip(item), BtWQuests_GetItemCompleted(item)
end


local function BtWQuests_CompareItems(a, b)
    if a.type ~= b.type then
        return false
    end
    
    if a.type == "chain" or a.type == "quest" or a.type == "achievement" then
        return a.id == b.id
    elseif a.type == "faction" then
        return a.faction == b.faction
    elseif a.type == "class" then
        return a.class == b.class
    elseif a.type == "level" then
        return a.level == b.level
    else
        return false
    end
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
        local chain = BtWQuests_Chains[item.id]
        assert(chain ~= nil, "Could not find chain with id " .. tostring(item.id))
        
        local chainName = chain.name
        if type(chainName) == "function" then
            chainName = chainName(chain)
        end
        
        if hidden == nil and chain.restrictions and not BtWQuests_CheckRequirements(chain.restrictions) then
            hidden = true
        end
        
        name = name or chainName
        category = category or chain.category
        expansion = expansion or chain.expansion
        buttonImage = buttonImage or chain.buttonImage
        
        onClick = onClick or function (self)
            if not ChatEdit_TryInsertChatLink(self.userdata.link) then
                BtWQuestsNav_AddChainButton(self.id, self.userdata.name)
                
                BtWQuests_SetCurrentChain(self.id)
                BtWQuests_DisplayChain()
                
                PlaySound(SOUNDKIT.IG_SPELLBOOK_OPEN);
            end
        end
        onEnter = onEnter or function (self)
            BtWQuestsTooltip_AnchorTo(self)
            BtWQuestsTooltip_SetChain(self.id)
        end
        onLeave = onLeave or function (self)
            BtWQuestsTooltip:Hide();
        end
        
        userdata.name = userdata.name or name
        userdata.link = userdata.link or format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", item.id, chainName)
    elseif item.type == "category" then
        local chain = BtWQuests_Categories[item.id]
        assert(chain ~= nil)
        
        if hidden == nil and chain.restrictions and not BtWQuests_CheckRequirements(chain.restrictions) then
            hidden = true
        end
        
        name = name or chain.name
        category = category or chain.parent
        expansion = expansion or chain.expansion
        buttonImage = buttonImage or chain.buttonImage
        
        onClick = onClick or function (self)
            if not ChatEdit_TryInsertChatLink(self.userdata.link) then
                BtWQuestsNav_AddCategoryButton(self.id, self.userdata.name)
                
                BtWQuests_SetCurrentCategory(self.id)
                BtWQuests_ListCategories()
                
                PlaySound(SOUNDKIT.IG_SPELLBOOK_OPEN);
            end
        end
        onEnter = onEnter or function (self)
            
        end
        onLeave = onLeave or function (self)
            
        end
        
        userdata.name = userdata.name or name
        userdata.link = userdata.link or format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", item.id, chain.name)
    else
        assert(false, "Invalid item type: " .. item.type)
    end
    
    return item.type, item.id, name, hidden, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata
end

local function BtWQuests_GetCategoryItemByIndex(index, parentCategoryID)
    local parentCategoryID = parentCategoryID or BtWQuests_GetCurrentCategory()
    if parentCategoryID ~= nil then
        if BtWQuests_Categories[parentCategoryID].items then
            return BtWQuests_GetCategoryItem(BtWQuests_Categories[parentCategoryID].items[index])
        end
    else
        expansion = BtWQuests_GetCurrentExpansion()
        
        if BtWQuests_Expansions[expansion] == nil then
            return nil
        end
        
        return BtWQuests_GetCategoryItem(BtWQuests_Expansions[expansion][index])
    end
end

local categoryID, name, link, expansion, parent, buttonImage, numItems
function BtWQuests_GetCategoryByID(categoryID)
    if not categoryID then
        return nil
    end
    
    local category = BtWQuests_Categories[categoryID]
    if not category then
        return nil
    end
    
    local link = format("\124cffffff00\124Hbtwquests:category:%s\124h[%s]\124h\124r", categoryID, category.name)
    return categoryID, category.name, link, category.expansion, category.parent, category.buttonImage, category.items and #category.items or 0
end

function BtWQuests_IsChainActive(chainID)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain then
        return nil
    end
    
    local active, completed = false, false
    if chain.completed then
        if chain.completed[1] ~= nil then
            completed = BtWQuests_CheckRequirements(chain.completed)
        else
            completed = BtWQuests_CheckRequirement(chain.completed)
        end
    end
    if not completed then
        if chain.prerequisites then
            active = BtWQuests_CheckRequirements(chain.prerequisites)
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
        if chain.completed[1] ~= nil then
            completed = BtWQuests_CheckRequirements(chain.completed)
        else
            completed = BtWQuests_CheckRequirement(chain.completed)
        end
    end
    
    return completed
end

function BtWQuests_GetChainPrerequisiteByID(chainID, index)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    assert(type(chain) == "table", "Error finding chain with id " .. tostring(chainID))
    
    local prerequisite = chain.prerequisites[index]
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

    name = chain.name
    if type(name) == "function" then
        name = name(item)
    end
    
    local link = format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", chainID, name)
    return chainID, name, link, chain.expansion, chain.category, chain.buttonImage, chain.prerequisites and #chain.prerequisites or 0, chain.items and #chain.items or 0
end -- , active, completed

function BtWQuests_IsQuestActive(questID)
    return GetQuestLogIndexByID(questID) > 0
end

function BtWQuests_IsQuestCompleted(questID)
    return IsQuestFlaggedCompleted(questID)
end

function BtWQuests_GetQuestName(questID)
    if not questID then
        return nil
    end
    
    local quest = BtWQuests_Quests[questID]
    if not quest then
        quest = {name = 'Unnamed'}
    end
        
    local questName = quest.name
    if type(questName) == "function" then
        questName = questName(quest)
    end
    
    return questName
end

function BtWQuests_GetQuestByID(questID)
    if not questID then
        return nil
    end
    
    local quest = BtWQuests_Quests[questID]
    if not quest then
        quest = {name = 'Unnamed'}
    end
        
    local questName = quest.name
    if type(questName) == "function" then
        questName = questName(quest)
    end
    
    local link = format("\124cffffff00\124Hquest:%d:%d\124h[%s]\124h\124r", tonumber(questID), quest.level or -1, questName)
    return tonumber(questID), questName, (quest.link or link), quest.difficulty, quest.tagID
end

function BtWQuests_EvalText(text, item)
    if type(text) == "function" then
        return tostring(text(item))
    end
    
    return tostring(text)
end

function BtWQuests_EvalRequirement(requirement, item)
    if type(requirement) == "boolean" then
        return requirement
    elseif type(requirement) == "table" then
        if requirement[1] ~= nil then
            for _, v in ipairs(requirement) do
                if BtWQuests_CheckRequirement(v) then
                    return true
                end
            end
            
            return false
        else
            return BtWQuests_CheckRequirement(requirement)
        end
    elseif type(requirement) == "function" then
        return requirement(item)
    end
    
    assert(requirement == nil, "Invalid requirement type " .. type(requirement))
end

-- skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata
function BtWQuests_EvalChainItem(item)
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
    else
        assert(item.class == nil, string.format("Item %d in chain %d has a class set", index, chainID))
        assert(item.faction == nil, string.format("Item %d in chain %d has a faction set", index, chainID))
        assert(item.optional == nil, string.format("Item %d in chain %d has a optional set", index, chainID))
        
        local skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, active, completed, onClick, onEnter, onLeave, userdata = nil, item.name, item.visible or true, item.x, item.y, item.atlas, item.breadcrumb, item.aside, item.difficulty, item.tagID, item.status, item.active, item.completed, item.onClick, item.onEnter, item.onLeave, (item.userdata or {})
        
        if skip == nil and item.restrictions then
            skip = not BtWQuests_CheckRequirements(item.restrictions)
        end

        if skip then
            return true
        end
        
        if item.type == "quest" then
            local quest = BtWQuests_Quests[item.id]
            
            if not quest then
                quest = {name = 'Unnamed'}
            end
            
            assert(type(quest) == "table", "Error finding quest with id " .. tostring(item.id))
        
            if skip == nil and quest.restrictions then
                skip = not BtWQuests_CheckRequirements(quest.restrictions)
            end

            if skip then
                return true
            end
        
            visible = visible == nil and quest.visible or visible
            
            name = name or quest.name
            difficulty = difficulty or quest.difficulty
            tagID = tagID or quest.tagID
            
            active = active == nil and function (item)
                return BtWQuests_IsQuestActive(item.id)
            end or active
            completed = completed == nil and function (item)
                return BtWQuests_IsQuestCompleted(item.id)
            end or completed
            
            onClick = onClick or function (self)
                if not ChatEdit_TryInsertChatLink(self.userdata.link) and not BtWQuests_SelectFromLink(self.userdata.link) then
                    BtWQuestsTooltip:Hide();
                end
            end
            onEnter = onEnter or function (self)
                BtWQuestsTooltip_AnchorTo(self)
                BtWQuestsTooltip_SetHyperlink(self.userdata.tooltipLink or self.userdata.link)
            end
            onLeave = onLeave or function (self)
                BtWQuestsTooltip:Hide();
                GameTooltip:Hide()
            end
            
            userdata.link = format("\124cffffff00\124Hquest:%d:%d\124h[%s]\124h\124r", tonumber(item.id), quest.level or -1, BtWQuests_EvalText(quest.name, quest))
        elseif item.type == "chain" then
            local chain = BtWQuests_Chains[item.id]
            
            assert(type(chain) == "table", "Error finding chain with id " .. tostring(item.id))
        
            if skip == nil and chain.restrictions then
                skip = not BtWQuests_CheckRequirements(chain.restrictions)
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
                    return BtWQuests_CheckRequirements(chain.prerequisites)
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
                BtWQuestsTooltip_AnchorTo(self)
                BtWQuestsTooltip_SetHyperlink(self.userdata.tooltipLink or self.userdata.link)
            end
            onLeave = onLeave or function (self)
                BtWQuestsTooltip:Hide();
                GameTooltip:Hide()
            end
            
            userdata.link = format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", item.id, BtWQuests_EvalText(chain.name, chain))
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
            name = string.format(name or BTWQUESTS_LEVEL_TO, item.level)
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
end

-- skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata
function BtWQuests_GetChainItemByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        return BtWQuests_EvalChainItem(BtWQuests_Chains[chainID].items[index])
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

tinsert(UISpecialFrames, "BtWQuests") 
function BtWQuests_OnLoad(self)
    self:RegisterEvent("ADDON_LOADED")
    -- self:RegisterEvent("VARIABLES_LOADED")
    
    self:SetAttribute("UIPanelLayout-defined", true)
    self:SetAttribute("UIPanelLayout-enabled", true)
    self:SetAttribute("UIPanelLayout-area", "left")
    self:SetAttribute("UIPanelLayout-pushable", 0)
    self:SetAttribute("UIPanelLayout-width", 830)
    self:SetAttribute("UIPanelLayout-whileDead", true)
    
	BtWQuestsTitleText:SetText(BTWQUESTS_QUEST_JOURNAL);
	SetPortraitToTexture(BtWQuestsPortrait, "Interface\\QuestFrame\\UI-QuestLog-BookIcon");
    
    self.Tooltip:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
    self.Tooltip:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
    
    local expansion = BtWQuests_GetCurrentExpansion()
	local tierData = EJ_TIER_DATA[expansion];
	local questSelect = BtWQuests.QuestSelect;
	questSelect.bg:SetTexture(tierData.backgroundTexture);
	UIDropDownMenu_SetText(questSelect.ExpansionDropDown, EJ_GetTierInfo(BtWQuests_GetCurrentExpansion()));
    
	local homeData = {
		name = HOME,
		OnClick = function()
			BtWQuests_SetCurrentCategory(nil)
            
            BtWQuests_ListCategories()
		end,
	}
	NavBar_Initialize(self.navBar, "NavButtonTemplate", homeData, self.navBar.home, self.navBar.overflow);
    
    -- BtWQuests_ListCategories()
    
    
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
                    minimapShown = true
                }
            end
            
            BtWQuestsMinimapButton:SetShown(BtWQuests_Settings.minimapShown)
            BtWQuestsMinimapButton_Reposition()
        end
    else
        -- print("TEST2")
    end
end

function BtWQuests_OnShow(self)
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN);
    
    if BtWQuests.Chain:IsShown() then
        BtWQuests_UpdateChain()
    else
        BtWQuests_ListCategories()
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
    BtWQuests_UpdateChain()
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
    if #BtWQuests.navBar.navList == 1 then
        return
    end
    
    local parent = BtWQuests.navBar.navList[#BtWQuests.navBar.navList-1].data.id
    if parent then
        NavBar_OpenTo(BtWQuests.navBar, parent)
        BtWQuests_SetCurrentCategory(parent)
    else
        NavBar_Reset(BtWQuests.navBar)
        BtWQuests_SetCurrentCategory(nil)
    end
    
    BtWQuests_ListCategories()
end

function BtWQuests_ListCategories()
	local questSelect = BtWQuests.QuestSelect;
    
	BtWQuests.Chain:Hide();
	questSelect:Show();
    
	local scrollFrame = questSelect.scroll.child;
    
	local i = 1;
	local index = 1;
	local itemType, id, name, hidden, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata = BtWQuests_GetCategoryItemByIndex(i);
	while id do
        if not hidden then
            local categoryButton = scrollFrame["category"..index];
            if not categoryButton then -- create button
                categoryButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."category"..index, scrollFrame, "BtWQuestsCategoryButtonTemplate");
                scrollFrame["category"..index] = categoryButton;
                if mod(index-1, EJ_NUM_INSTANCE_PER_ROW) == 0 then
                    categoryButton:SetPoint("TOP", scrollFrame["category"..(index-EJ_NUM_INSTANCE_PER_ROW)], "BOTTOM", 0, -15);
                else
                    categoryButton:SetPoint("LEFT", scrollFrame["category"..(index-1)], "RIGHT", 15, 0);
                end
            end

            categoryButton.name:SetText(name);
            categoryButton.bgImage:SetTexture(buttonImage);
            categoryButton.AciveTexture:SetShown(itemType == "chain" and BtWQuests_IsChainActive(id) or false)
            
            categoryButton.id = id;
            categoryButton.userdata = userdata;
            categoryButton:SetScript("OnClick", onClick)
            categoryButton:SetScript("OnEnter", onEnter)
            categoryButton:SetScript("OnLeave", onLeave)
            
            categoryButton:Show();

            index = index + 1;
        end
        
        i = i + 1;
        itemType, id, name, hidden, category, expansion, buttonImage, onClick, onEnter, onLeave, userdata = BtWQuests_GetCategoryItemByIndex(i);
    end
    
    categoryButton = scrollFrame["category"..index];
    while categoryButton do
        categoryButton:Hide()
        
        index = index + 1;
        categoryButton = scrollFrame["category"..index];
    end
end

function BtWQuests_DisplayChain(scrollTo)
	local chain = BtWQuests.Chain;
    
	BtWQuests.QuestSelect:Hide();
	chain:Show();
    
    local scrollFrame = chain.scroll.child;
    local scrollToButton, scrollToButtonAside
    
    local _, _, _, _, _, _, _, numItems = BtWQuests_GetChainByID(BtWQuests_GetCurrentChain())
    for index = numItems, 1, -1 do
        local skip, name, visible, x, y, atlas, breadcrumb, aside, difficulty, tagID, status, onClick, onEnter, onLeave, userdata = BtWQuests_GetChainItemByIndex(index)
        local connections = {BtWQuests_GetChainItemConnectorsByIndex(index)}
        
        local itemButton = scrollFrame["item"..index];
        if not itemButton then -- create button
            itemButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."Item"..index, scrollFrame, "BtWQuestsChainItemButtonTemplate");

            scrollFrame["item"..index] = itemButton;
        end
        
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
            
            if ( tagID ) then
                local tagCoords = QUEST_TAG_TCOORDS[tagID];
                if( tagCoords ) then
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
                    local connectionItem = scrollFrame["item"..connection]
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
                    local connectionItem = scrollFrame["item"..connection]
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
        
            if itemButton.status == "complete" then
                itemButton.ForgottenAnim:Play()
            end
            
            if atlas then
                itemButton.Icon:SetAtlas(atlas)
            end
            
            itemButton:SetPoint("TOP", 0, -(y * 80) - (chain.scroll:GetHeight()/2) + 24);
            itemButton:SetPoint("LEFT", 95 * x + 12, 0);
            
            
            
            
            if not itemButton.backgroundLinePool then
                itemButton.backgroundLinePool = CreateFramePool("FRAME", scrollFrame, "BtWQuestsLineTemplate", OnRelease);
            end
            
            itemButton.backgroundLinePool:ReleaseAll();
            
            for j=1,#connections do
                local connection = index + connections[j]
                local connectionItem = scrollFrame["item"..connection]
                
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
    
    local index = numItems + 1
    itemButton = scrollFrame["item"..index];
    while itemButton do
        itemButton:Hide()
        
        if itemButton.backgroundLinePool then
            itemButton.backgroundLinePool:ReleaseAll();
        end
        
		index = index + 1;
        itemButton = scrollFrame["item"..index];
    end
    
    local temp = numItems
    while temp > 0 and not scrollFrame["item"..temp]:IsShown() do
        temp = temp - 1
    end
    
    scrollFrame.Bottom:SetPoint("TOP", 0, select(5, scrollFrame["item"..temp]:GetPoint("TOP")) - 23 - (chain.scroll:GetHeight()/2))
    
    if scrollTo ~= false then
        if scrollToButton == nil then
            scrollToButton = scrollToButtonAside
        end
        
        if scrollToButton == nil then
            temp = 1
            while scrollFrame["item"..temp] and not scrollFrame["item"..temp]:IsShown() do
                temp = temp + 1
            end
            
            scrollToButton = scrollFrame["item"..temp]
        end
        
        chain.scroll:UpdateScrollChildRect()
        chain.scroll:SetVerticalScroll(-select(5, scrollToButton:GetPoint("TOP")) - (chain.scroll:GetHeight()/2) + 24)
    end
end


function BtWQuests_UpdateChain(scroll)
    local chain = BtWQuests.Chain
    
    if chain:IsShown() then
        local scrollFrame = chain.scroll.child;
        local scrollToButton, scrollToButtonAside
        
        local _, _, _, _, _, _, _, numItems = BtWQuests_GetChainByID(BtWQuests_GetCurrentChain())
        for index = numItems,1,-1 do
            local skip, _, visible, _, _, _, breadcrumb, aside, _, _, status, _, _, _, _ = BtWQuests_GetChainItemByIndex(index)
            local connections = {BtWQuests_GetChainItemConnectorsByIndex(index)}
        
			local itemButton = scrollFrame["item"..index];
            if not skip then
                itemButton.newStatus = status
            
                if breadcrumb and #connections > 0 and itemButton.newStatus ~= 'complete' then
                    local isCompleted = false
                    for j=1,#connections do
                        local connection = index + connections[j]
                        local connectionItem = scrollFrame["item"..connection]
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
                        local connectionItem = scrollFrame["item"..connection]
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
function BtWQuestsTooltip_SetHyperlink(link)
    local self = BtWQuestsTooltip
    
    local _, _, color, type, text, name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]+):([^|]+)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
    
    -- assert(type == "quest" or type == "btwquests")
    
    if type == "quest" then
        local _, _, id = string.find(text, "^(%d+):")
        
       BtWQuestsTooltip_SetQuest(id)
    elseif type == "btwquests" then
        local _, _, subtype, id = string.find(text, "^([^:]*):(%d+)")
        
        assert(subtype == "chain")
        
        BtWQuestsTooltip_SetChain(id) 
    else
        GameTooltip:ClearAllPoints();
        
        local point, relativeTo, relativePoint, x, y = BtWQuestsTooltip:GetPoint()
        GameTooltip:SetPoint(point, relativeTo, relativePoint, x, y);
        
        GameTooltip:SetOwner(relativeTo, "ANCHOR_PRESERVE");
        GameTooltip:SetHyperlink(link)
    end
end

function BtWQuestsTooltip_AnchorTo(anchorTo)
    local self = BtWQuestsTooltip
    
	self:ClearAllPoints();
	local tooltipWidth = self:GetWidth();
	if ( tooltipWidth > UIParent:GetRight() - anchorTo:GetRight() ) then
		self:SetPoint("TOPRIGHT", anchorTo, "TOPLEFT", -5, 0);
	else
		self:SetPoint("TOPLEFT", anchorTo, "TOPRIGHT", 0, 0);
	end
end

function BtWQuestsTooltip_SetQuest(questID)
    local questID = tonumber(questID)
    
    local tooltip = BtWQuestsTooltip
    
    local _, name, link = BtWQuests_GetQuestByID(questID)
    local questLogIndex = GetQuestLogIndexByID(questID)
    if questLogIndex > 0 then
        local name, level = GetQuestLogTitle(questLogIndex);
        
        local maxWidth = 0;
        local totalHeight = 0;
        
        tooltip.Title:SetText(name);
        totalHeight = totalHeight + tooltip.Title:GetHeight();
        maxWidth = tooltip.Title:GetWidth();
        
        -- Clear out old criteria
        for i = 1, #tooltip.Lines do
            tooltip.Lines[i]:Hide();
        end
        for _, checkMark in pairs(tooltip.CheckMarks) do
            checkMark:Hide();
        end
        
        local _, objectiveText = GetQuestLogQuestText(questLogIndex);

        tooltip.CompletedLabel:Hide();
        
		tooltip.ProgressLabel:SetPoint("TOPLEFT", tooltip.Description, "BOTTOMLEFT", 0, -11)
        
		local requiredMoney = GetQuestLogRequiredMoney(questLogIndex);
		local numRequirements = GetNumQuestLeaderBoards(questLogIndex);
        local actualNumRequirements = numRequirements
		for i = 1, numRequirements do
			local name, _, completed = GetQuestLogLeaderBoard(i, questLogIndex);
			if ( name ) then
                if ( not tooltip.Lines[i] ) then
                    local fontString = tooltip:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
                    fontString:SetPoint("TOP", tooltip.Lines[i-1], "BOTTOM", 0, -6);
                    tooltip.Lines[i] = fontString;
                end
                if ( completed ) then
                    tooltip.Lines[i]:SetText(GREEN_FONT_COLOR_CODE..name..FONT_COLOR_CODE_CLOSE);
                    tooltip.Lines[i]:SetPoint("LEFT", 30, 0);
                    if ( not tooltip.CheckMarks[i] ) then
                        local texture = tooltip:CreateTexture(nil, "ARTWORK", "GreenCheckMarkTemplate");
                        texture:ClearAllPoints();
                        texture:SetPoint("RIGHT", tooltip.Lines[i], "LEFT", -4, -1);
                        tooltip.CheckMarks[i] = texture;
                    end
                    tooltip.CheckMarks[i]:Show();
                    maxWidth = max(maxWidth, tooltip.Lines[i]:GetWidth() + 20);
                else
                    tooltip.Lines[i]:SetText(name);
                    tooltip.Lines[i]:SetPoint("LEFT", 10, 0);
                    if ( tooltip.CheckMarks[i] ) then
                        tooltip.CheckMarks[i]:Hide();
                    end
                    maxWidth = max(maxWidth, tooltip.Lines[i]:GetWidth());
                end
                tooltip.Lines[i]:Show();
                totalHeight = totalHeight + tooltip.Lines[i]:GetHeight() + 6;
			end
		end
		-- if ( requiredMoney > 0 ) then
            -- actualNumRequirements = actualNumRequirements + 1
            
			-- local playerMoney = GetMoney();
			-- local color = HIGHLIGHT_FONT_COLOR;
			-- if ( requiredMoney <= playerMoney ) then
				-- playerMoney = requiredMoney;
				-- color = GRAY_FONT_COLOR;
			-- end
			-- GameTooltip:AddLine(QUEST_DASH..GetMoneyString(playerMoney).." / "..GetMoneyString(requiredMoney), color.r, color.g, color.b);
			-- needsSeparator = true;
		-- end
    
        if actualNumRequirements > 0 then
            tooltip.ProgressLabel:Show()
            maxWidth = max(maxWidth, tooltip.ProgressLabel:GetWidth());
            totalHeight = totalHeight + tooltip.ProgressLabel:GetHeight() + 10;
        else
            tooltip.ProgressLabel:Hide()
        end
    
        local tooltipWidth = max(240, maxWidth + 20);
        
        
		tooltip.Description:SetPoint("TOPLEFT", tooltip.Title, "BOTTOMLEFT", 0, -11)
		tooltip.Description:SetWidth(tooltipWidth - 20)
        tooltip.Description:SetText(objectiveText)
        tooltip.Description:Show();
        totalHeight = totalHeight + tooltip.Description:GetHeight() + 11;
        
        tooltip:SetSize(tooltipWidth, totalHeight + 20);
        tooltip:Show();
    
    else
        GameTooltip:ClearAllPoints();
        
        local point, relativeTo, relativePoint, x, y = tooltip:GetPoint()
        GameTooltip:SetPoint(point, relativeTo, relativePoint, x, y);
        
        GameTooltip:SetOwner(relativeTo, "ANCHOR_PRESERVE");
        
        GameTooltip:SetHyperlink(link)
    end
end

function BtWQuestsTooltip_SetChain(chainID)
    local chainID = tonumber(chainID)
    
    local tooltip = BtWQuestsTooltip
    local _, name, _, _, _, _, numPrerequisites = BtWQuests_GetChainByID(chainID)
    local completed = BtWQuests_IsChainCompleted(chainID)
    
	local maxWidth = 0;
	local totalHeight = 0;
    
	tooltip.Title:SetText(name);
	totalHeight = totalHeight + tooltip.Title:GetHeight();
	maxWidth = tooltip.Title:GetWidth();
    
	-- Clear out old criteria
	for i = 1, #tooltip.Lines do
		tooltip.Lines[i]:Hide();
	end
	for _, checkMark in pairs(tooltip.CheckMarks) do
		checkMark:Hide();
	end
    
    if completed then
        tooltip.ProgressLabel:SetPoint("TOPLEFT", tooltip.CompletedLabel, "BOTTOMLEFT", 0, -11)
        tooltip.CompletedLabel:Show();
        totalHeight = totalHeight + tooltip.CompletedLabel:GetHeight() + 11;
        maxWidth = max(maxWidth, tooltip.CompletedLabel:GetWidth() + 20);
    else
		tooltip.ProgressLabel:SetPoint("TOPLEFT", tooltip.Title, "BOTTOMLEFT", 0, -11)
        tooltip.CompletedLabel:Hide();
    end
        
    tooltip.Description:Hide();
    
    local actualNumPrerequisites = numPrerequisites
    local i = 1
	for index = 1, numPrerequisites do
		local name, visible, skip, completed = BtWQuests_GetChainPrerequisiteByID(chainID, index);
        if not visible or skip then
            actualNumPrerequisites = actualNumPrerequisites - 1
        else
            if ( not tooltip.Lines[i] ) then
                local fontString = tooltip:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
                fontString:SetPoint("TOP", tooltip.Lines[i-1], "BOTTOM", 0, -6);
                tooltip.Lines[i] = fontString;
            end
            if ( completed ) then
                tooltip.Lines[i]:SetText(GREEN_FONT_COLOR_CODE..name..FONT_COLOR_CODE_CLOSE);
                tooltip.Lines[i]:SetPoint("LEFT", 30, 0);
                if ( not tooltip.CheckMarks[i] ) then
                    local texture = tooltip:CreateTexture(nil, "ARTWORK", "GreenCheckMarkTemplate");
                    texture:ClearAllPoints();
                    texture:SetPoint("RIGHT", tooltip.Lines[i], "LEFT", -4, -1);
                    tooltip.CheckMarks[i] = texture;
                end
                tooltip.CheckMarks[i]:Show();
                maxWidth = max(maxWidth, tooltip.Lines[i]:GetWidth() + 20);
            else
                tooltip.Lines[i]:SetText(name);
                tooltip.Lines[i]:SetPoint("LEFT", 10, 0);
                if ( tooltip.CheckMarks[i] ) then
                    tooltip.CheckMarks[i]:Hide();
                end
                maxWidth = max(maxWidth, tooltip.Lines[i]:GetWidth());
            end
            tooltip.Lines[i]:Show();
            totalHeight = totalHeight + tooltip.Lines[i]:GetHeight() + 6;

            i = i + 1
        end
	end
    
    if actualNumPrerequisites > 0 then
        tooltip.ProgressLabel:Show()
        maxWidth = max(maxWidth, tooltip.ProgressLabel:GetWidth());
        totalHeight = totalHeight + tooltip.ProgressLabel:GetHeight() + 10;
    else
        tooltip.ProgressLabel:Hide()
    end
    
	-- tooltip.ProgressCount:SetFormattedText(BTWQUESTS_REQUIREMENTS, completedRequirements, actualNumRequirements);
	-- maxWidth = max(maxWidth, tooltip.ProgressLabel:GetWidth(), tooltip.ProgressCount:GetWidth());
	-- totalHeight = totalHeight + tooltip.ProgressLabel:GetHeight() + tooltip.ProgressCount:GetHeight();
    
	local tooltipWidth = max(240, maxWidth + 20);
	tooltip:SetSize(tooltipWidth, totalHeight + 20);
    tooltip:Show();
end


-- [[ Navbar ]]

function BtWQuestsNav_SelectChain(self, ...)
    BtWQuests_SetCurrentChain(-self.id)
    
    BtWQuests_DisplayChain()
end

function BtWQuestsNav_SelectCategory(self, ...)
    BtWQuests_SetCurrentCategory(self.id)

    BtWQuests_ListCategories()
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
    
    BtWQuestsNav_AddCategoryButton(id, name)
end

function BtWQuestsNav_AddChainButtonParents(id)
    local _, name, _, _, parent = BtWQuests_GetChainByID(id)
    
    if parent then
        BtWQuestsNav_AddCategoryButtonParents(parent)
    end
    
    BtWQuestsNav_AddChainButton(id, name)
end

function BtWQuestsNav_AddCategoryButton(id, name)
    if name == nil then
        _, name = BtWQuests_GetCategoryByID(id)
    end
    
    local sisters = {}
    local index = 1
	local sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index);
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
        sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index);
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

function BtWQuestsNav_AddChainButton(id, name)
    if name == nil then
        _, name = BtWQuests_GetChainByID(id)
    end
    
    local sisters = {}
    local index = 1
	local sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index);
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
        sisterType, sisterId, sisterName, hidden = BtWQuests_GetCategoryItemByIndex(index);
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


-- [[ Expansion Dropdown ]]

function BtWQuestsExpansionDropDown_Initialize(self, level)
	local info = UIDropDownMenu_CreateInfo();
	local numTiers = EJ_GetNumTiers();
	local currTier = BtWQuests_GetCurrentExpansion();
	for i=1,numTiers do
		info.text = EJ_GetTierInfo(i);
		info.func = BtWQuestsExpansionDropDown_Select
		info.checked = i == currTier;
		info.arg1 = i;
		UIDropDownMenu_AddButton(info, level)
	end
end

function BtWQuestsExpansionDropDown_Select(_, expansion)
	BtWQuests_SetCurrentExpansion(expansion);

	local tierData = EJ_TIER_DATA[expansion];
	local questSelect = BtWQuests.QuestSelect;
	questSelect.bg:SetTexture(tierData.backgroundTexture);

	UIDropDownMenu_SetText(questSelect.ExpansionDropDown, EJ_GetTierInfo(BtWQuests_GetCurrentExpansion()));

    NavBar_Reset(BtWQuests.navBar)
    
    BtWQuests_SetCurrentCategory()
    BtWQuests_ListCategories()
end


-- [[ Minimap Button ]]

function BtWQuestsMinimapButton_Toggle()
    BtWQuests_Settings.minimapShown = not BtWQuests_Settings.minimapShown
    
    BtWQuestsMinimapButton:SetShown(BtWQuests_Settings.minimapShown)
end

function BtWQuestsMinimapButton_Reposition()
    -- local angle = 180 -- 172
    local angle = BtWQuests_Settings.minimapAngle or 200
	BtWQuestsMinimapButton:SetPoint("CENTER","Minimap","CENTER",(80*cos(angle)),(80*sin(angle)))
end

function BtWQuestsMinimapButtonDraggingFrame_OnUpdate()
	local px,py = GetCursorPosition()
    local mx,my = Minimap:GetCenter()
    
    local scale = Minimap:GetEffectiveScale()
    px, py = px / scale, py / scale
    
    BtWQuests_Settings.minimapAngle = math.deg(math.atan2(py - my, px - mx))
    BtWQuestsMinimapButton_Reposition()
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