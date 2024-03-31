-- MNX_FishingBoatAnywhere_UI
-- Author: Code copied from mod: Secret Society - Brotherhood of The Deep by TheColdHands
-- DateCreated: 3/30/2024 4:15:11 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Types
		(Type,													Kind)
VALUES	('IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',				'KIND_IMPROVEMENT');

INSERT OR IGNORE INTO Improvements
		(ImprovementType,							Name,											Description,											Icon,											TraitType,									PrereqTech,				PlunderType,	PlunderAmount, Buildable,	Appeal,		Housing,	TilesRequired,	Goody,	Domain	)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	'LOC_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_NAME',	'LOC_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DESCRIPTION',	'ICON_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	'TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE',	'TECH_CARTOGRAPHY',		PlunderType,	PlunderAmount, Buildable,	Appeal,		Housing,	2,				Goody,	'DOMAIN_SEA'
FROM	Improvements WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

INSERT OR IGNORE INTO Improvement_ValidBuildUnits
		(ImprovementType,							UnitType	)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	UnitType
FROM	Improvement_ValidBuildUnits WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

/*INSERT OR IGNORE INTO Improvement_ValidTerrains
		(ImprovementType,							TerrainType)
VALUES	('IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	'TERRAIN_COAST'),
		('IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	'TERRAIN_OCEAN');*/

INSERT OR IGNORE INTO Improvement_YieldChanges
		(ImprovementType,							YieldType,					YieldChange		)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	YieldType,					YieldChange
FROM	Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

INSERT  INTO Improvement_BonusYieldChanges
		(Id,		ImprovementType,							YieldType,		BonusYieldChange,	PrereqTech)
SELECT	Id+10000,	'IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	YieldType,		BonusYieldChange,	PrereqTech			
FROM	Improvement_BonusYieldChanges WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';

INSERT  INTO Improvement_Adjacencies
		(ImprovementType,							YieldChangeId)
SELECT	'IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DUMMY',	YieldChangeId
FROM	Improvement_Adjacencies WHERE ImprovementType = 'IMPROVEMENT_FISHING_BOATS';	