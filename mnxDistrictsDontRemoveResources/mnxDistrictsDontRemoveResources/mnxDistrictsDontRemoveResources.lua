-- mnxDistrictsDontRemoveResources
-- Author: manux
-- DateCreated: 4/5/2024 11:51:02 PM
--------------------------------------------------------------

local tMapResources = {}


-- Get called on the OnDistrictConstructed event. 
-- This is where we re-add the resource that got wiped by the new disctrict.
function OnDistrictConstructed(playerID, districtID, x, y)
    local iPlot = Map.GetPlot(x, y)

	-- Check if there initially was a strategic or luxury resource where the district has been built
	if tMapResources[x]~=nil and tMapResources[x][y]~=nil and iPlot:GetResourceType()==-1 then
		-- If so, add it back to the plot
		iResource = GameInfo.Resources[tMapResources[x][y]].Index;
		ResourceBuilder.SetResourceType(iPlot, iResource, 1);
	end
end


-- At game start, grab all strategic and luxury resources present on the map, 
-- and store them in a table along with their plot x-y position.
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
				if resource.ResourceClassType == 'RESOURCECLASS_STRATEGIC' or resource.ResourceClassType == 'RESOURCECLASS_LUXURY' then
					if tMapResources[x] == nil then 
						tMapResources[x] = {};
					end
					tMapResources[x][y] = resource.ResourceType;
				end
			end
		end
	end
end


-- Utility function to verify if the GetMapResources function works properly
-- Prints all stored resources in lua.log
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



-- Get Map Resources only once, when game starts
Events.LoadGameViewStateDone.Add(GetMapResources)
--Events.LoadGameViewStateDone.Add(PrintMapResources)

-- Wait till game starts to register our OnDistrictConstructed function to the OnDistrictConstructed event.
function Initialize()
	GameEvents.OnDistrictConstructed.Add(OnDistrictConstructed);
end
Events.LoadGameViewStateDone.Add(Initialize)

