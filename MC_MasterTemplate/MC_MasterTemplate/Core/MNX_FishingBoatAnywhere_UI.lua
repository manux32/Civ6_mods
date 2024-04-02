-- MNX_FishingBoatAnywhere_UI
-- Author: Code copied from mod: Secret Society - Brotherhood of The Deep by TheColdHands
-- DateCreated: 3/30/2024 4:32:04 PM
--------------------------------------------------------------

local iMNXFishBoat = GameInfo.Improvements['IMPROVEMENT_FISHING_BOATS'].Index;
local iMNXDummyBoat = GameInfo.Improvements['IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER'].Index;

function MNX_CreateDeepDumyBoat(PlotX, PlotY, ImprovementID, PlayerID, ResourceID, Unknown1, Unknown2)
	if ImprovementID == iMNXDummyBoat then
		local iPlot = Map.GetPlot(PlotX, PlotY)
		--ImprovementBuilder.SetImprovementType(iPlot, -1, 0)
		--ImprovementBuilder.SetImprovementType(iPlot, iMNXFishBoat, 0)

		for row in GameInfo.Resources() do
			if row.ResourceClassType == 'RESOURCE_FISH' then
				ResourceBuilder.SetResourceType(iPlot, row.Hash, 1);
				break;
			end
		end
	end
end

Events.ImprovementAddedToMap.Add(MNX_CreateDeepDumyBoat);