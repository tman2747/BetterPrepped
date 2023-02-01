require('NPCs/MainCreationMethods');

local function initBetterPreppedTrait()	
	local BetterPrepped = TraitFactory.addTrait("BetterPrepped", getText("UI_trait_BetterPrepped"), 7, getText("UI_trait_BetterPreppeddesc2"), false, false);
end

local function initBetterPreppedItems(player, square)
	if player:HasTrait("BetterPrepped") then
	        local BetterPrepped = player:getInventory():AddItem("Base.Bag_ALICEpack_Army");
	        BetterPrepped:getItemContainer():AddItem("Base.WaterBottleFull");
			BetterPrepped:getItemContainer():AddItem("Base.AlcoholBandage");
			BetterPrepped:getItemContainer():AddItem("Base.TinOpener");
			BetterPrepped:getItemContainer():AddItem("Base.Cigarettes");
			BetterPrepped:getItemContainer():AddItem("Base.HuntingKnife");
			BetterPrepped:getItemContainer():AddItem("Base.HuntingKnife");

local BetterPrepped = player:getInventory():AddItem("Base.Suitcase");
	        BetterPrepped:getItemContainer():AddItem("Base.AlcoholBandage");
			BetterPrepped:getItemContainer():AddItem("Base.Scissors");
			BetterPrepped:getItemContainer():AddItem("Base.Cigarettes");
			BetterPrepped:getItemContainer():AddItem("Base.Lighter");
			BetterPrepped:getItemContainer():AddItem("Base.Matches");
			BetterPrepped:getItemContainer():AddItem("Base.BeefJerky");
            BetterPrepped:getItemContainer():AddItem("Base.BeefJerky");

	end
end

Events.OnGameBoot.Add(initBetterPreppedTrait);
Events.OnNewGame.Add(initBetterPreppedItems);
