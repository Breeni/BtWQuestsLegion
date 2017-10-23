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

function BtWQuests_SelectChain(id)
    local id = tonumber(id)
    
    BtWQuests_SetCurrentChain(id)
    
    NavBar_Reset(BtWQuests.navBar)
    BtWQuestsNav_AddChainButtonParents(id)
    
    BtWQuests:Show()
    BtWQuests_DisplayChain()
end

function BtWQuests_SelectFromLink(link)
    local _, _, color, type, text, name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]+):([^|]+)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
    
    assert(type == "quest" or type == "btwquests")
    
    if type == "quest" then
        local _, _, id = string.find(text, "^(%d+):")
        
        local questLogIndex = GetQuestLogIndexByID(id);
        if questLogIndex > 0 then
            if ( IsQuestComplete(id) and GetQuestLogIsAutoComplete(questLogIndex) ) then
                AutoQuestPopupTracker_RemovePopUp(id);
                ShowQuestComplete(questLogIndex);
            else
                ShowQuestLog();
                QuestMapFrame_ShowQuestDetails(id);
            end
        end
    elseif type == "btwquests" then
        local _, _, subtype, id = string.find(text, "^([^:]*):(%d+)")
        
        assert(subtype == "category" or subtype == "chain")
        
        if subtype == "category" then
            BtWQuests_SelectCategory(id)
        elseif subtype == "chain" then
            BtWQuests_SelectChain(id)
        end
    end
end

function BtWQuests_GetCategoryByIndexForCategory(index, parentCategoryID)
    local categoryID = nil
    if BtWQuests_Categories[parentCategoryID].categories then
        categoryID = BtWQuests_Categories[parentCategoryID].categories[index]
    end
    
    return BtWQuests_GetCategoryByID(categoryID)
end

function BtWQuests_GetCategoryByIndexForExpansion(index, expansion)
    return BtWQuests_GetCategoryByID(BtWQuests_Expansions[expansion][index])
end

-- id, name, expansion, parent, buttonImage, categoryCount, chainCount
function BtWQuests_GetCategoryByID(categoryID)
    if not categoryID then
        return nil
    end
    
    local category = BtWQuests_Categories[categoryID]
    if not category then
        return nil
    end
    
    local link = format("\124cffffff00\124Hbtwquests:category:%s\124h[%s]\124h\124r", categoryID, category.name)
    return categoryID, category.name, link, category.expansion, category.parent, category.buttonImage, category.categories and #category.categories or 0, category.chains and #category.chains or 0
end

function BtWQuests_GetCategoryByIndex(index)
    local categoryID = nil
        
    local parentCategoryID = BtWQuests_GetCurrentCategory()
    if parentCategoryID ~= nil then
        if BtWQuests_Categories[parentCategoryID].categories then
            categoryID = BtWQuests_Categories[parentCategoryID].categories[index]
        end
    else
        expansion = BtWQuests_GetCurrentExpansion()
        
        if BtWQuests_Expansions[expansion] == nil then
            return nil
        end
        
        categoryID = BtWQuests_Expansions[expansion][index]
    end
    
    return BtWQuests_GetCategoryByID(categoryID)
end

function BtWQuests_GetChainByIndexForCategory(index, categoryID)
    local chainID = nil
    if BtWQuests_Categories[categoryID].chains then
        chainID = BtWQuests_Categories[categoryID].chains[index]
    end
    
    return BtWQuests_GetChainByID(chainID)
end

function BtWQuests_RequirementDetails(requirement)
    local text = nil
    local completed = false
    if requirement.type == "level" then
        text = string.format(BTWQUESTS_LEVEL_TO, requirement.level)
        completed = UnitLevel("player") >= requirement.level
    elseif requirement.type == "chain" then
        _, text, _, _, _, _, _, completed = BtWQuests_GetChainByID(requirement.id)
    elseif requirement.type == "quest" then
        _, text = BtWQuests_GetQuestByID(requirement.id)
        completed = IsQuestFlaggedCompleted(requirement.id)
    elseif requirement.type == "achievement" then
        _, text, _, _, _, _, _, _, _, _, _, _, completed = GetAchievementInfo(requirement.id)
    else
        return nil
    end
    
    if requirement.text then
        text = requirement.text
    end
    
    return text, completed, requirement.class
end

function BtWQuests_GetChainRequirementByID(chainID, index)
    if not chainID or not index then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain or not chain.requirements then
        return nil
    end
    
    local requirement = chain.requirements[index]
    if not chain then
        return nil
    end
    
    return BtWQuests_RequirementDetails(requirement)
end

function BtWQuests_GetChainByID(chainID)
    if not chainID then
        return nil
    end
    
    local chain = BtWQuests_Chains[chainID]
    if not chain then
        return nil
    end
    
    local completed = false
    if chain.completed then
        if chain.completed[UnitFactionGroup("player")] ~= nil then
            _, completed = BtWQuests_RequirementDetails(chain.completed[UnitFactionGroup("player")])
        else
            _, completed = BtWQuests_RequirementDetails(chain.completed)
        end
    end
    
    local link = format("\124cffffff00\124Hbtwquests:chain:%s\124h[%s]\124h\124r", chainID, chain.name)
    return chainID, chain.name, link, chain.expansion, chain.category, chain.buttonImage, chain.requirements and #chain.requirements or 0, completed, chain.items and #chain.items or 0
end

function BtWQuests_GetChainByIndex(index)
    local chainID = nil
        
    local categoryID = BtWQuests_GetCurrentCategory()
    if categoryID == nil then
        return nil
    end
    
    if BtWQuests_Categories[categoryID].chains then
        chainID = BtWQuests_Categories[categoryID].chains[index]
    end
    
    return BtWQuests_GetChainByID(chainID)
end

function BtWQuests_GetQuestByID(questID)
    if not questID then
        return nil
    end
    
    local quest = BtWQuests_Quests[questID]
    if not quest then
        -- print("[BtWQuests] Missing quest " .. questID)
        --return nil
        --@TODO Remove temp
        -- return questID, 'Unnamed', "|cffffff00|Hquest:"..questID..":-1|h[Unnamed]|h|r", nil, nil
        quest = {name = 'Unnamed'}
    end
    local link = format("\124cffffff00\124Hquest:%d:%d\124h[%s]\124h\124r", tonumber(questID), quest.level or -1, quest.name)
    return tonumber(questID), quest.name, (quest.link or link), quest.difficulty, quest.tagID
end

function BtWQuests_GetChainQuestByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local item = BtWQuests_Chains[chainID].items[index]
        
        if item then
            return BtWQuests_GetQuestByID(item.id)
        end
    end
end

function BtWQuests_GetChainChainByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local item = BtWQuests_Chains[chainID].items[index]
        
        if item then
            return BtWQuests_GetChainByID(item.id)
        end
    end
end

function BtWQuests_GetChainReputationByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local item = BtWQuests_Chains[chainID].items[index]
        
        if item then
            local name, _, standing, barMin, _, value = GetFactionInfoByID(item.id)
            local gender = UnitSex("player")
            local standingText = getglobal("FACTION_STANDING_LABEL" .. item.standing .. (gender == 3 and "_FEMALE" or ""))
            
            local text, completed
            if item.amount ~= nil then
                completed = standing > item.standing or (standing == item.standing and value - barMin >= item.amount)
                text = string.format(BTWQUESTS_REPUTATION_AMOUNT_STANDING, item.amount, standingText, name)
            else
                completed = standing >= item.standing
                text = string.format(BTWQUESTS_REPUTATION_STANDING, standingText, name)
            end
        
            return item.id, text, item.standing, item.amount, completed
        end
    end
end

function BtWQuests_GetChainDummyByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local item = BtWQuests_Chains[chainID].items[index]
        
        if item then
            return item.name
        end
    end
end

function BtWQuests_GetChainItemByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local item = BtWQuests_Chains[chainID].items[index]
        
        if item then
            return item.type, item.x, item.y, item.atlas, item.optional, item.faction, item.class and {item.class} or item.classes
        end
    end
end

function BtWQuests_GetChainItemConnectorsByIndex(index)
    local chainID = BtWQuests_GetCurrentChain()
    if chainID == nil then
        return nil
    end
    
    if BtWQuests_Chains[chainID].items then
        local items = BtWQuests_Chains[chainID].items[index]

        if items and items.connections then
            return unpack(items.connections)
        end
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
    
    BtWQuests_ListCategories()
    
    
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
    
    BtWQuests_UpdateChain(true)
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
    if BtWQuests.Chain:IsShown() then
        NavBar_OpenTo(BtWQuests.navBar, BtWQuests_GetCurrentCategory())
    else
        if BtWQuests_GetCurrentCategory() == nil then
            return
        end
        
        local _, _, _, _, parent = BtWQuests_GetCategoryByID(BtWQuests_GetCurrentCategory())
        
        if parent then
            NavBar_OpenTo(BtWQuests.navBar, parent)
            BtWQuests_SetCurrentCategory(parent)
        else
            NavBar_Reset(BtWQuests.navBar)
            BtWQuests_SetCurrentCategory(nil)
        end
    end
    BtWQuests_ListCategories()
end

function BtWQuests_ListCategories()
	local questSelect = BtWQuests.QuestSelect;
    
	BtWQuests.Chain:Hide();
	questSelect:Show();
    
	local scrollFrame = questSelect.scroll.child;
    
	local index = 1;
	local categoryID, name, link, _, _, buttonImage = BtWQuests_GetCategoryByIndex(index);
	while categoryID do
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
		categoryButton.categoryID = categoryID;
		categoryButton.nameText = name;
		categoryButton.link = link;
		categoryButton:Show();

		index = index + 1;
		categoryID, name, link, _, _, buttonImage = BtWQuests_GetCategoryByIndex(index);
	end
    
    local lastLeftCategory = index ~= 1 and scrollFrame["category"..((math.floor((index - 1) / EJ_NUM_INSTANCE_PER_ROW)*EJ_NUM_INSTANCE_PER_ROW)+1) ] or nil
    
    categoryButton = scrollFrame["category"..index];
    while categoryButton do
        categoryButton:Hide()
        
		index = index + 1;
        categoryButton = scrollFrame["category"..index];
    end
    
    index = 1;
	local chainID, name, link, _, _, buttonImage = BtWQuests_GetChainByIndex(index);
	while chainID do
		local chainButton = scrollFrame["chain"..index];
		if not chainButton then -- create button
			chainButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."chain"..index, scrollFrame, "BtWQuestsChainButtonTemplate");

			scrollFrame["chain"..index] = chainButton;
            if mod(index-1, EJ_NUM_INSTANCE_PER_ROW) == 0 then
				chainButton:SetPoint("TOP", scrollFrame["chain"..(index-EJ_NUM_INSTANCE_PER_ROW)], "BOTTOM", 0, -15);
			else
				chainButton:SetPoint("LEFT", scrollFrame["chain"..(index-1)], "RIGHT", 15, 0);
			end
		end
        
        if index == 1 then
            if lastLeftCategory then
                chainButton:SetPoint("TOP", lastLeftCategory, "BOTTOM", 0, -15);
            else
                chainButton:SetPoint("TOP", 0, -10);
            end
        end

		chainButton.name:SetText(name);
		chainButton.bgImage:SetTexture(buttonImage);
		chainButton.chainID = chainID;
		chainButton.nameText = name;
		chainButton.link = link;
		chainButton:Show();

		index = index + 1;
		chainID, name, link, _, _, buttonImage = BtWQuests_GetChainByIndex(index);
	end
    
    chainButton = scrollFrame["chain"..index];
    while chainButton do
        chainButton:Hide()
        
		index = index + 1;
        chainButton = scrollFrame["chain"..index];
    end
end

function BtWQuests_DisplayChain()
	local chain = BtWQuests.Chain;
    
	BtWQuests.QuestSelect:Hide();
	chain:Show();
    
    local playerFaction, playerClass = UnitFactionGroup("player"), select(3, UnitClass("player"))
    
	local scrollFrame = chain.scroll.child;
    local scrollToButton, scrollToButtonOptional--scrollFrame["item1"]
    
    local _, _, _, _, _, _, _, _, numItems = BtWQuests_GetChainByID(BtWQuests_GetCurrentChain())
    for index = numItems,1,-1 do
        local type, x, y, atlas, optional, faction, classes = BtWQuests_GetChainItemByIndex(index)
        local connections = {BtWQuests_GetChainItemConnectorsByIndex(index)}
        
        local itemButton = scrollFrame["item"..index];
        if not itemButton then -- create button
            itemButton = CreateFrame("BUTTON", scrollFrame:GetParent():GetName().."Item"..index, scrollFrame, "BtWQuestsChainItemButtonTemplate");

            scrollFrame["item"..index] = itemButton;
        end
        
        local skip = (faction ~= nil and faction ~= playerFaction) or (classes ~= nil and not ArrayContains(classes, playerClass))
            
        if skip then
            itemButton:Hide()
        
            if itemButton.backgroundLinePool then
                itemButton.backgroundLinePool:ReleaseAll();
            end
        else
            itemButton.name:SetAlpha(1)
            if type == "quest" then
                local questID, name, link, difficulty, tagID = BtWQuests_GetChainQuestByIndex(index);
                if GetQuestLogIndexByID(questID) > 0 then -- User is on this quest
                    if IsQuestComplete(questID) then -- User can complete this quest
                        tagID = "COMPLETED"
                        
                        itemButton.status = "iscompletable"
                    else
                        itemButton.status = "active"
                    end
                else
                    if IsQuestFlaggedCompleted(questID) then -- User has completed this quest
                        itemButton.status = "complete"
                    else
                        itemButton.status = nil
                    end
                end
                
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
                
                itemButton.name:SetText(name);
                itemButton.showTooltip = true
                itemButton.link = link;
                itemButton.chainID = nil
            elseif type == "chain" then
                local chainID, name, link, _, _, _, numRequirements, completed = BtWQuests_GetChainChainByIndex(index);
                
                local active = true
                if not completed then
                    for i = 1, numRequirements do
                        local name, requirementCompleted, class = BtWQuests_GetChainRequirementByID(chainID, i);
                        if (class == nil or class == playerClass) and not requirementCompleted then
                            active = false
                            break
                        end
                    end
                end
                
                if completed then
                    itemButton.status = "complete"
                elseif active then
                    itemButton.status = "active"
                else
                    itemButton.status = nil
                end
                
                itemButton.HeroicTexture:Hide();
                itemButton.MythicTexture:Hide();
                itemButton.TagTexture:Hide();
                
                itemButton.name:SetText(name);
                itemButton.showTooltip = true
                itemButton.link = link;
                itemButton.chainID = chainID
            elseif type == "reputation" then
                local factionID, name, standing, amount, completed = BtWQuests_GetChainReputationByIndex(index);
                
                if completed then
                    itemButton.status = "complete"
                else
                    itemButton.status = "active"
                end
                
                itemButton.HeroicTexture:Hide();
                itemButton.MythicTexture:Hide();
                itemButton.TagTexture:Hide();
                
                itemButton.name:SetText(name);
                itemButton.showTooltip = false
                itemButton.link = nil;
                itemButton.chainID = nil
            elseif type == "dummy" then
                local name = BtWQuests_GetChainDummyByIndex(index);
                
                itemButton.status = nil
                if #connections > 0 then
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
                
                itemButton.HeroicTexture:Hide();
                itemButton.MythicTexture:Hide();
                itemButton.TagTexture:Hide();
                
                itemButton.name:SetText(name);
                itemButton.showTooltip = false
                itemButton.link = nil;
                itemButton.chainID = nil
            else
                itemButton.status = 'active'
                
                itemButton.HeroicTexture:Hide();
                itemButton.MythicTexture:Hide();
                itemButton.TagTexture:Hide();
                
                itemButton.TagTexture:Hide();
                itemButton.HeroicTexture:Hide();
                itemButton.MythicTexture:Hide();
                
                itemButton.name:SetText('@TODO');
                itemButton.showTooltip = false
                itemButton.link = nil;
                itemButton.chainID = nil
            end
            
            itemButton.optional = optional
            
            if optional and #connections > 0 and itemButton.status ~= 'complete' then
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
            
            if itemButton.status ~= "complete" then
                if optional then
                    scrollToButtonOptional = itemButton
                else
                    scrollToButton = itemButton
                end
            end
            
            local forget = itemButton.status == "complete" -- or (optional and #connections > 0)
            
            if forget then
                for j=1,#connections do
                    local connection = index + connections[j]
                    local connectionItem = scrollFrame["item"..connection]
                    if connectionItem and connectionItem:IsShown() then
                        if connectionItem.status == nil or connectionItem.status == 'active' then
                            forget = false
                            break
                        end
                    end
                end
            end
        
            if forget then
                itemButton.status = 'forgotten'
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
                
                if connectionItem and connectionItem:IsShown() then
                    local lineContainer = itemButton.backgroundLinePool:Acquire();
                    
                    lineContainer.Default:SetVertexColor(0.96470373868942, 0, 0.99999779462814);
                    lineContainer.Default:SetStartPoint("CENTER", itemButton);
                    lineContainer.Default:SetEndPoint("CENTER", connectionItem);
                    
                    lineContainer.Incomplete:SetStartPoint("CENTER", itemButton);
                    lineContainer.Incomplete:SetEndPoint("CENTER", connectionItem);
                    
                    lineContainer.Complete:SetStartPoint("CENTER", itemButton);
                    lineContainer.Complete:SetEndPoint("CENTER", connectionItem);
                    
                    lineContainer:SetAlpha(1)
                            
                    if itemButton.status == "iscompletable" or itemButton.status == "complete" then
                        if itemButton.status == "forgotten" then
                            lineContainer:SetAlpha(0.5)
                        end
                        lineContainer.Incomplete:Hide()
                        lineContainer.Complete:Show()
                        lineContainer.Default:Hide()
                    elseif itemButton.status == "incomplete" or itemButton.status == "active" then
                        lineContainer.Incomplete:Show()
                        lineContainer.Complete:Hide()
                        lineContainer.Default:Hide()
                    else
                        if itemButton.status == "forgotten" then
                            lineContainer:SetAlpha(0.5)
                        end
                        
                        lineContainer.Incomplete:Hide()
                        lineContainer.Complete:Hide()
                        lineContainer.Default:Show()
                    end
                    
                    lineContainer:Show();
                end
            end

            itemButton:Show();
            
            if itemButton.status == "active" or itemButton.status == "iscompletable" then
                itemButton.ActiveTexture:Show()
            else
                itemButton.ActiveTexture:Hide()
            end
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
    
    if scrollToButton == nil then
        scrollToButton = scrollToButtonOptional
    end
    
    if scrollToButton == nil then
        scrollToButton = scrollFrame["item1"]
    end
    
    chain.scroll:UpdateScrollChildRect()
    chain.scroll:SetVerticalScroll(-select(5, scrollToButton:GetPoint("TOP")) - (chain.scroll:GetHeight()/2) + 24)
end


function BtWQuests_UpdateChain(scroll)
    local chain = BtWQuests.Chain
    
    if chain:IsShown() then
        local playerFaction, playerClass = UnitFactionGroup("player"), select(3, UnitClass("player"))
    
        local scrollFrame = chain.scroll.child;
        local scrollToButton, scrollToButtonOptional
        
        local _, _, _, _, _, _, _, _, numItems = BtWQuests_GetChainByID(BtWQuests_GetCurrentChain())
        for index = numItems,1,-1 do
            local type, x, y, atlas, optional, faction, classes = BtWQuests_GetChainItemByIndex(index)
            local connections = {BtWQuests_GetChainItemConnectorsByIndex(index)}
        
			local itemButton = scrollFrame["item"..index];

            local skip = (faction ~= nil and faction ~= playerFaction) or (classes ~= nil and not ArrayContains(classes, playerClass))

            if not skip then
                if type == "quest" then
                    local questID, name, link, difficulty, tagID = BtWQuests_GetChainQuestByIndex(index);
                    
                    if GetQuestLogIndexByID(questID) > 0 then -- User is on this quest
                        if IsQuestComplete(questID) then -- User can complete this quest
                            itemButton.newStatus = "iscompletable"
                            
                            tagID = "COMPLETED"
                        else
                            itemButton.newStatus = "active"
                        end
                    else
                        if IsQuestFlaggedCompleted(questID) then -- User has completed this quest
                            itemButton.newStatus = "complete"
                        end
                    end
                
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
                elseif type == "chain" then
                    local chainID, name, link, _, _, _, numRequirements, completed = BtWQuests_GetChainChainByIndex(index);
                    
                    local active = true
                    if not completed then
                        for i = 1, numRequirements do
                            local name, requirementCompleted, class = BtWQuests_GetChainRequirementByID(chainID, i);
                            if (class == nil or class == playerClass) and not requirementCompleted then
                                active = false
                                break
                            end
                        end
                    end
                    
                    if completed then
                        itemButton.newStatus = "complete"
                    elseif active then
                        itemButton.newStatus = "active"
                    else
                        itemButton.newStatus = nil
                    end
                elseif type == "reputation" then
                    local factionID, name, standing, amount, completed = BtWQuests_GetChainReputationByIndex(index);
                    
                    if completed then
                        itemButton.status = "complete"
                    else
                        itemButton.status = "active"
                    end
                elseif type == "dummy" then
                    itemButton.newStatus = nil
                    if #connections > 0 then
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
                else
                    itemButton.newStatus = 'active'
                end
            
                if optional and #connections > 0 and itemButton.newStatus ~= 'complete' then
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
                    if optional then
                        scrollToButtonOptional = itemButton
                    else
                        scrollToButton = itemButton
                    end
                end
            
                local forget = itemButton.newStatus == "complete"-- or (itemButton.optional and #connections > 0)
                
                if forget then
                    for j=1,#connections do
                        local connection = index + connections[j]
                        local connectionItem = scrollFrame["item"..connection]
                        if connectionItem and connectionItem:IsShown() then
                            if connectionItem.status == nil or connectionItem.status == 'active' then
                                forget = false
                                break
                            end
                        end
                    end
                end
            
                if forget then
                    itemButton.newStatus = 'forgotten'
                    if itemButton.status ~= "forgotten" then
                        itemButton.ForgottenAnim:Play()
                    end
                end
                
                if itemButton.newStatus ~= itemButton.status then
                    if itemButton.newStatus == 'active' then
                        itemButton.ActiveTexture:Show()
                        
                        for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                            frame:SetAlpha(1)
                            frame.DefaultToIncompleteAnim:Play()
                        end
                    elseif itemButton.newStatus == 'iscompletable' then
                        itemButton.ActiveTexture:Show()
                        
                        if itemButton.status == 'active' then
                            for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                                frame:SetAlpha(1)
                                frame.IncompleteToCompleteAnim:Play()
                            end
                        else
                            for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                                frame:SetAlpha(1)
                                frame.DefaultToCompleteAnim:Play()
                            end
                        end
                    elseif itemButton.newStatus == 'complete' then
                        if itemButton.status == 'active' then
                            itemButton.ActiveTexture:Hide()
                            
                            for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                                frame:SetAlpha(1)
                                
                                frame.IncompleteToCompleteAnim:Play()
                            end
                        elseif itemButton.status == 'iscompletable' then
                            itemButton.ActiveTexture:Hide()
                        else
                            for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                                frame:SetAlpha(1)
                                
                                frame.DefaultToCompleteAnim:Play()
                            end
                        end
                    elseif itemButton.newStatus == 'forgotten' then
                        if itemButton.status == 'active' then
                            itemButton.ActiveTexture:Hide()
                            
                            for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                                frame:SetAlpha(0.5)
                                
                                frame.IncompleteToDefaultAnim:Play()
                            end
                        elseif itemButton.status == 'iscompletable' or itemButton.status == 'complete' then
                            itemButton.ActiveTexture:Hide()
                            
                            for frame, something in itemButton.backgroundLinePool:EnumerateActive() do
                                frame:SetAlpha(0.5)
                                
                                frame.CompleteToDefaultAnim:Play()
                            end
                        end
                    end
                end
                
                if itemButton.ActiveTexture:IsShown() then
                    itemButton.ActiveAnim:Play()
                end
                
                itemButton.status = itemButton.newStatus
                itemButton.newStatus = nil -- Dont want to confuse the code next time
            
            end
        end
        
        if scroll then
            if scrollToButton == nil then
                scrollToButton = scrollToButtonOptional
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
    
    assert(type == "quest" or type == "btwquests")
    
    if type == "quest" then
        local _, _, id = string.find(text, "^(%d+):")
        
       BtWQuestsTooltip_SetQuest(id)
    elseif type == "btwquests" then
        local _, _, subtype, id = string.find(text, "^([^:]*):(%d+)")
        
        assert(subtype == "chain")
        
        BtWQuestsTooltip_SetChain(id) 
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
    local _, name, _, _, _, _, numRequirements, completed = BtWQuests_GetChainByID(chainID)
    
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
    
    local actualNumRequirements = numRequirements
	-- local completedRequirements = 0;
	for i = 1, numRequirements do
		local name, completed, class = BtWQuests_GetChainRequirementByID(chainID, i);
        
        if class ~= nil and class ~= UnitClass("player") then
            actualNumRequirements = actualNumRequirements - 1
        else
            -- if ( completed ) then
                -- completedRequirements = completedRequirements + 1;
            -- end
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
    
    if actualNumRequirements > 0 then
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
    local expansion, parent
    if self.owner.id < 0 then -- Chain ID
        _, _, _, expansion, parent = BtWQuests_GetChainByID(-self.owner.id)
    else
        _, _, _, expansion, parent = BtWQuests_GetCategoryByID(self.owner.id)
    end
    
    local id, name
    local isChain = false
    if parent ~= nil then
        NavBar_OpenTo(BtWQuests.navBar, parent)
        
        local _, _, _, _, _, _, categoryCount = BtWQuests_GetCategoryByID(parent)
        
        if index > categoryCount then
            id, name = BtWQuests_GetChainByIndexForCategory(index - categoryCount, parent)
            
            isChain = true
        else
            id, name = BtWQuests_GetCategoryByIndexForCategory(index, parent)
        end
    else
        NavBar_Reset(BtWQuests.navBar)
        
        id, name = BtWQuests_GetCategoryByIndexForExpansion(index, expansion)
    end
    
    if isChain then
        BtWQuestsNav_AddChainButton(id, name)
                    
        BtWQuests_SetCurrentChain(id)
        BtWQuests_DisplayChain()
    else
        BtWQuestsNav_AddCategoryButton(id, name)
                    
        BtWQuests_SetCurrentCategory(id)
        BtWQuests_ListCategories()
    end
end

function BtWQuestsNav_ListSisters(self, index)
    local expansion, parent
    if self.id < 0 then -- Chain ID
        _, _, _, expansion, parent = BtWQuests_GetChainByID(-self.id)
    else
        _, _, _, expansion, parent = BtWQuests_GetCategoryByID(self.id)
    end
    
    local name
    if parent ~= nil then
        local _, _, _, _, _, _, categoryCount = BtWQuests_GetCategoryByID(parent)
        
        if index > categoryCount then
            _, name = BtWQuests_GetChainByIndexForCategory(index - categoryCount, parent)
        else
            _, name = BtWQuests_GetCategoryByIndexForCategory(index, parent)
        end
    else
        _, name = BtWQuests_GetCategoryByIndexForExpansion(index, expansion)
    end
    
	return name, BtWQuestsNav_SelectSister;
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
    
    local buttonData = {
        id = id,
        name = name,
        OnClick = BtWQuestsNav_SelectCategory,
        listFunc = BtWQuestsNav_ListSisters,
    }
    NavBar_AddButton(BtWQuests.navBar, buttonData);
end

function BtWQuestsNav_AddChainButton(id, name)
    if name == nil then
        _, name = BtWQuests_GetChainByID(id)
    end
    
    local buttonData = {
        id = -id,
        name = name,
        OnClick = BtWQuestsNav_SelectChain,
        listFunc = BtWQuestsNav_ListSisters,
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
	if link:find("^|c[^|]+|Hbtwquests") then
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