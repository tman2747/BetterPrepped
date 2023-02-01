require('NPCs/MainCreationMethods');

local function initBetterPreppedTrait()	
	local BetterPrepped = TraitFactory.addTrait("BetterPrepped", getText("UI_trait_BetterPrepped"), 10, getText("UI_trait_BetterPreppeddesc2"), false, false);
end

local function initBetterPreppedItems(player, square)
	bandageAmount = 8
	nailAmount = 12
	if player:HasTrait("BetterPrepped") then
	        local BetterPrepped = player:getInventory():AddItem("Base.Bag_ALICEpack_Army");
	        BetterPrepped:getItemContainer():AddItem("Base.WaterBottleFull");
			BetterPrepped:getItemContainer():AddItem("Base.Hammer");
			for i = 1,nailAmount,1
			do
				BetterPrepped:getItemContainer():AddItem("Base.Nails");
			end
			BetterPrepped:getItemContainer():AddItem("Base.Screwdriver");
			BetterPrepped:getItemContainer():AddItem("Base.TinOpener");
			BetterPrepped:getItemContainer():AddItem("Base.HuntingKnife");
			BetterPrepped:getItemContainer():AddItem("Base.Scissors");
			BetterPrepped:getItemContainer():AddItem("Base.HandAxe");
			BetterPrepped:getItemContainer():AddItem("Base.BeefJerky");
			BetterPrepped:getItemContainer():AddItem("Base.BeefJerky");


local BetterPrepped = player:getInventory():AddItem("Base.Suitcase");
			BetterPrepped:getItemContainer():AddItem("Base.AlcoholWipes");			
			for i = 1,bandageAmount,1
			do
				BetterPrepped:getItemContainer():AddItem("Base.AlcoholBandage");
			end
			BetterPrepped:getItemContainer():AddItem("Base.Cigarettes");
			BetterPrepped:getItemContainer():AddItem("Base.Lighter");
			BetterPrepped:getItemContainer():AddItem("Base.Matches");
            BetterPrepped:getItemContainer():AddItem("Base.Pills");
			BetterPrepped:getItemContainer():AddItem("Base.PillsVitamins");
			BetterPrepped:getItemContainer():AddItem("Base.BathTowel");
			BetterPrepped:getItemContainer():AddItem("Base.Eraser");
			BetterPrepped:getItemContainer():AddItem("Base.Pencil");
			BetterPrepped:getItemContainer():AddItem("Base.Journal");
			BetterPrepped:getItemContainer():AddItem("Base.AlcoholWipes");
			BetterPrepped:getItemContainer():AddItem("Base.PonchoGreen");
			BetterPrepped:getItemContainer():AddItem("Base.Gloves_LeatherGlovesBlack");
			BetterPrepped:getItemContainer():AddItem("Base.DuctTape");

	end
end

Events.OnGameBoot.Add(initBetterPreppedTrait);
Events.OnNewGame.Add(initBetterPreppedItems);
