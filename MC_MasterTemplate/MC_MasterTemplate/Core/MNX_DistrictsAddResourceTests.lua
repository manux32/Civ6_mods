-- MNX_DistrictsAddResourceTests
-- Author: manux
-- DateCreated: 4/3/2024 10:42:03 PM
--------------------------------------------------------------

local tMapResources = {}


function OnDistrictConstructed(playerID, districtID, x, y)
    local pPlayer = Players[playerID];
    local iPlot = Map.GetPlot(x, y)

    -- If the player is a major civilization
	-- TODO: Maybe remove this conditiion so that city states also get it.
    if pPlayer:IsMajor() and pPlayer:IsAlive() then
        --local iResource = GameInfo.Resources['RESOURCE_HORSES'].Index;
		--ResourceBuilder.SetResourceType(iPlot, iResource, 1);

		-- Check if there initially was a strategic or luxury resource where the district has been built
		if tMapResources[x]~=nil and tMapResources[x][y]~=nil and iPlot:GetResourceType()==-1 then
			-- If so, add it back to the plot
			iResource = GameInfo.Resources[tMapResources[x][y]].Index;
			ResourceBuilder.SetResourceType(iPlot, iResource, 1);
		end
    end
end

function GetMapResources()
	local iW, iH;
	iW, iH = Map.GetGridSize();

	-- Iterate through all map plots
	for x = 0, iW - 1 do
		for y = 0, iH - 1 do
			local iPlot = Map.GetPlot(x, y)
			
			if iPlot~=nil and iPlot:GetResourceType()~=-1 then
				local resource = GameInfo.Resources[iPlot:GetResourceType()];

				-- If there is a strategic or luxury resource on the plot, store it in our tMapResources table, to reuse it later
				if resource.ResourceClassType == "RESOURCECLASS_STRATEGIC" or resource.ResourceClassType == "RESOURCECLASS_LUXURY" then
					if tMapResources[x] == nil then 
						tMapResources[x] = {};
					end
					tMapResources[x][y] = resource.ResourceType;
				end
			end
		end
	end
end

function PrintMapResources()
	print('MANUX PrintMapResources - START');
	iW, iH = Map.GetGridSize();
	print('Map Grid Size = '..iW..' x '..iH);

	for xKey, yTable in pairs(tMapResources) do
		for yKey, resource in pairs(yTable) do
			print('x='..xKey..',y='..yKey..': '..resource);
		end
	end

	print('MANUX PrintMapResources - END');
end



function Initialize()
	GameEvents.OnDistrictConstructed.Add(OnDistrictConstructed);
end
Events.LoadGameViewStateDone.Add(Initialize)

-- Get Map Resources only once when game starts
Events.LoadGameViewStateDone.Add(GetMapResources)
--Events.LoadGameViewStateDone.Add(PrintMapResources)