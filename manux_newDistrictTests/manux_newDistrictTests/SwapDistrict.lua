-- SwapDistrict
-- Author: manux
-- DateCreated: 3/18/2024 10:13:15 PM
--------------------------------------------------------------

-- Define the district types
--local d_Gungan_Aerodrome = GameInfo.Districts["DISTRICT_HOLYSITE_GOTS"];
--local d_Aerodrome = GameInfo.Districts["DISTRICT_HOLY_SITE"].Index;
local d_gots_holy_site = GameInfo.Districts["DISTRICT_HOLYSITE_GOTS"].Index;
local d_holy_site = GameInfo.Districts["DISTRICT_HOLY_SITE"].Index;

-- Event handler for DistrictConstructed
function OnDistrictConstructed(playerID, districtID, x, y)
	-- Set variables for the Player
    local pPlayer = Players[playerID];
    local playerConfig = PlayerConfigurations[playerID];
	-- Set the variables for the District and City
    local pDistrict = CityManager.GetDistrictAt(x, y);
    local pCity = pDistrict:GetCity();
	local pPlot = Map.GetPlot(x, y);
	local pPlotIndex = Map.GetPlotIndex(x, y);

    -- If the player is a major civilization
    if pPlayer:IsMajor() and pPlayer:IsAlive() then
        if pPlot:GetDistrictType() == d_holy_site then
				
			-- Remove the HS
            pCity:GetDistricts():RemoveDistrict(pDistrict);
				
			-- Create Gots HS
			pCity:GetBuildQueue():CreateDistrict(d_gots_holy_site, pPlotIndex)
        end
    end
end

-- Function to initialize the script.
function Initialize()
	-- Register the event handler
	GameEvents.OnDistrictConstructed.Add(OnDistrictConstructed);
end

-- Add the Initialize function to the LoadGameViewStateDone event.
Events.LoadGameViewStateDone.Add(Initialize)