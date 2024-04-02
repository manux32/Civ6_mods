-- MNX_FishingBoatAnywhere_UI
-- Author: Code copied from mod: Secret Society - Brotherhood of The Deep by TheColdHands
-- DateCreated: 3/30/2024 4:15:11 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Types
		(Type,													Kind)
VALUES	('IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',				'KIND_IMPROVEMENT');

INSERT OR IGNORE INTO Improvements
		(ImprovementType,							Name,											Description,											Icon,											TraitType,									PrereqTech,				PlunderType,	PlunderAmount, Buildable,	Workable,	Appeal,		Housing,	TilesRequired,	Goody,	Domain	)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',		'LOC_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_NAME',	'LOC_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DESCRIPTION',	'ICON_IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',	'TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE',	'TECH_SHIPBUILDING',	PlunderType,	PlunderAmount, Buildable,	Workable,	Appeal,		Housing,	TilesRequired,	Goody,	'DOMAIN_SEA'
FROM	Improvements WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

INSERT OR IGNORE INTO Improvement_ValidBuildUnits
		(ImprovementType,							UnitType	)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',	UnitType
FROM	Improvement_ValidBuildUnits WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

/*INSERT OR IGNORE INTO Improvement_ValidTerrains  -- Doing it through modifiers instead to unlock them with different techs
		(ImprovementType,							TerrainType)
VALUES	('IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',	'TERRAIN_COAST'),
		('IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',	'TERRAIN_OCEAN');*/

INSERT OR IGNORE INTO Improvement_YieldChanges
		(ImprovementType,							YieldType,					YieldChange		)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',		YieldType,					YieldChange
FROM	Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

-- Bonus Yields from Techs and Civics
INSERT  INTO Improvement_BonusYieldChanges
		(Id,		ImprovementType,							YieldType,		BonusYieldChange,	PrereqTech,		PrereqCivic)
SELECT	Id+10000,	'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',		YieldType,		BonusYieldChange,	PrereqTech,		PrereqCivic			
FROM	Improvement_BonusYieldChanges WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

INSERT  INTO Improvement_Adjacencies
		(ImprovementType,							YieldChangeId)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',		YieldChangeId
FROM	Improvement_Adjacencies WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';	


--------------------------------------------------------------------------------------------------
-- Boosts from Civics like Celestial Nav
INSERT OR IGNORE INTO Boosts
		(TechnologyType,CivicType,Boost,TriggerId,TriggerDescription,TriggerLongDescription,Unit1Type,BoostClass,Unit2Type,BuildingType,ImprovementType,BoostingTechType,ResourceType,NumItems,DistrictType,RequiresResource,RequirementSetId,GovernmentSlotType,BoostingCivicType,GovernmentTierType)
SELECT	TechnologyType,CivicType,Boost,TriggerId,TriggerDescription,TriggerLongDescription,Unit1Type,BoostClass,Unit2Type,BuildingType,'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',BoostingTechType,ResourceType,NumItems,DistrictType,RequiresResource,RequirementSetId,GovernmentSlotType,BoostingCivicType,GovernmentTierType
FROM	Boosts WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';	

-- Seasted adjacency to Fishing Trawlers
INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,											Description,YieldType,YieldChange,TilesRequired,OtherDistrictAdjacent,AdjacentSeaResource,AdjacentTerrain,AdjacentFeature,AdjacentRiver,AdjacentWonder,AdjacentNaturalWonder,AdjacentImprovement,					AdjacentDistrict,PrereqCivic,PrereqTech,ObsoleteCivic,ObsoleteTech,AdjacentResource,AdjacentResourceClass,Self)
SELECT	'MNX_ODIN_Seastead_FishingTrawler_Production',	Description,YieldType,YieldChange,TilesRequired,OtherDistrictAdjacent,AdjacentSeaResource,AdjacentTerrain,AdjacentFeature,AdjacentRiver,AdjacentWonder,AdjacentNaturalWonder,'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER',AdjacentDistrict,PrereqCivic,PrereqTech,ObsoleteCivic,ObsoleteTech,AdjacentResource,AdjacentResourceClass,Self
FROM	Adjacency_YieldChanges WHERE ID = 'Seastead_Fishingboats_Production';

INSERT OR IGNORE INTO Improvement_Adjacencies
		(ImprovementType,								YieldChangeId)
VALUES	('IMPROVEMENT_SEASTEAD',						'MNX_ODIN_Seastead_FishingTrawler_Production');

-- Update PLOT_HAS_FISHINGBOATS_REQUIREMENTS to include Fishing Trawlers
UPDATE	RequirementSets
SET		RequirementSetType = 'REQUIREMENTSET_TEST_ANY'
WHERE	RequirementSetId = 'PLOT_HAS_FISHINGBOATS_REQUIREMENTS';	

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('PLOT_HAS_FISHINGBOATS_REQUIREMENTS',			'REQ_MNX_PLOT_HAS_FISHING_TRAWLER');

-- Stave Church +1 Prod to Fishing Boats and Trawlers instead of sea resources.
UPDATE	Modifiers
SET		SubjectRequirementSetId = 'PLOT_HAS_FISHINGBOATS_REQUIREMENTS'
WHERE	ModifierId = 'STAVECHURCH_SEARESOURCE_PRODUCTION';	