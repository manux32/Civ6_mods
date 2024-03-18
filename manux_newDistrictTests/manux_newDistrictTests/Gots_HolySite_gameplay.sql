-- Gots_HolySite_gameplay
-- Author: manux
-- DateCreated: 3/17/2024 12:55:10 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Types
		(Type,							Kind)	
VALUES	('DISTRICT_HOLYSITE_GOTS',		'KIND_DISTRICT');

INSERT OR IGNORE INTO Types
		(Type,							Kind)
SELECT	'MNX_'||BuildingType,			'KIND_BUILDING'
FROM	Buildings	WHERE PrereqDistrict='DISTRICT_HOLY_SITE';

/*INSERT OR IGNORE INTO Types
		(Type,							Kind)
SELECT	'MNX_'||BuildingType,			'KIND_BUILDING'
FROM	Buildings	WHERE AdjacentDistrict='DISTRICT_HOLY_SITE';*/

--'TRAIT_LEADER_MAJOR_CIV'
-- TRAIT_LEADER_MEDITERRANEAN
-- TRAIT_CIVILIZATION_ITERU
-- TECH_ASTROLOGY
INSERT OR IGNORE INTO Districts
		(DistrictType,				Name,								PrereqTech,			Description,								Cost,	RequiresPlacement,	RequiresPopulation,	NoAdjacentCity,	CityCenter,	Aqueduct,	InternalOnly,	ZOC,	FreeEmbark,	HitPoints,	CaptureRemovesBuildings,	CaptureRemovesCityDefenses,		PlunderType,		PlunderAmount,	MilitaryDomain,	CostProgressionModel,						CostProgressionParam1,	TraitType,						Appeal, Housing,	Entertainment,	OnePerCity,	AllowsHolyCity,	Maintenance,		CityStrengthModifier,	CanAttack,	AdvisorType,			CaptureRemovesDistrict,		MaxPerPlayer)	
VALUES	('DISTRICT_HOLYSITE_GOTS',	'LOC_DISTRICT_HOLYSITE_GOTS_NAME',	'TECH_ASTROLOGY',	'LOC_DISTRICT_HOLYSITE_GOTS_DESCRIPTION',	'54',	'1',				'1',				'0',			'0',		'0',		'0',			'1',	'0',		'100',		'0',						'0',							'PLUNDER_FAITH',	'25',			'NO_DOMAIN',	'COST_PROGRESSION_NUM_UNDER_AVG_PLUS_TECH',	'40',					NULL,							'1',	'0',		'0',			'1',		'1',			'1',				'2',					'1',		'ADVISOR_RELIGIOUS',	'0',						'-1');

INSERT OR IGNORE INTO Districts_XP2
		(DistrictType,					AttackRange)	
VALUES	('DISTRICT_HOLYSITE_GOTS',		'2');

-- District replacement mechanics only work when setting a TraitType to the District and adding that trait to a Leader or Civilization.
/*INSERT OR IGNORE INTO DistrictReplaces
		(CivUniqueDistrictType,			ReplacesDistrictType)	
VALUES	('DISTRICT_HOLYSITE_GOTS',		'DISTRICT_HOLY_SITE');
		--('DISTRICT_HOLYSITE_GOTS',		'DISTRICT_LAVRA');*/

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,						ModifierId)
SELECT	'DISTRICT_HOLYSITE_GOTS',			ModifierId
FROM	DistrictModifiers	WHERE DistrictType='DISTRICT_HOLY_SITE';

-- Auto-populating new versions of buidlings kinda works but: Can't build religion buildings, not getting buildings effects, can't buy faith units.
INSERT OR IGNORE INTO Buildings
		(BuildingType,Name,PrereqTech,PrereqCivic,Cost,MaxPlayerInstances,MaxWorldInstances,Capital,PrereqDistrict,AdjacentDistrict,Description,RequiresPlacement,RequiresRiver,OuterDefenseHitPoints,Housing,Entertainment,AdjacentResource,Coast,EnabledByReligion,AllowsHolyCity,PurchaseYield,MustPurchase,Maintenance,IsWonder,TraitType,OuterDefenseStrength,CitizenSlots,MustBeLake,MustNotBeLake,RegionalRange,AdjacentToMountain,ObsoleteEra,RequiresReligion,GrantFortification,DefenseModifier,InternalOnly,RequiresAdjacentRiver,Quote,QuoteAudio,MustBeAdjacentLand,AdvisorType,AdjacentCapital,AdjacentImprovement,CityAdjacentTerrain,UnlocksGovernmentPolicy,GovernmentTierRequirement)
SELECT	'MNX_'||BuildingType,Name,PrereqTech,PrereqCivic,Cost,MaxPlayerInstances,MaxWorldInstances,Capital,'DISTRICT_HOLYSITE_GOTS',AdjacentDistrict,Description,RequiresPlacement,RequiresRiver,OuterDefenseHitPoints,Housing,Entertainment,AdjacentResource,Coast,EnabledByReligion,AllowsHolyCity,PurchaseYield,MustPurchase,Maintenance,IsWonder,TraitType,OuterDefenseStrength,CitizenSlots,MustBeLake,MustNotBeLake,RegionalRange,AdjacentToMountain,ObsoleteEra,RequiresReligion,GrantFortification,DefenseModifier,InternalOnly,RequiresAdjacentRiver,Quote,QuoteAudio,MustBeAdjacentLand,AdvisorType,AdjacentCapital,AdjacentImprovement,CityAdjacentTerrain,UnlocksGovernmentPolicy,GovernmentTierRequirement
FROM	Buildings	WHERE PrereqDistrict='DISTRICT_HOLY_SITE';

/*INSERT OR IGNORE INTO Buildings
		(BuildingType,Name,PrereqTech,PrereqCivic,Cost,MaxPlayerInstances,MaxWorldInstances,Capital,PrereqDistrict,AdjacentDistrict,Description,RequiresPlacement,RequiresRiver,OuterDefenseHitPoints,Housing,Entertainment,AdjacentResource,Coast,EnabledByReligion,AllowsHolyCity,PurchaseYield,MustPurchase,Maintenance,IsWonder,TraitType,OuterDefenseStrength,CitizenSlots,MustBeLake,MustNotBeLake,RegionalRange,AdjacentToMountain,ObsoleteEra,RequiresReligion,GrantFortification,DefenseModifier,InternalOnly,RequiresAdjacentRiver,Quote,QuoteAudio,MustBeAdjacentLand,AdvisorType,AdjacentCapital,AdjacentImprovement,CityAdjacentTerrain,UnlocksGovernmentPolicy,GovernmentTierRequirement)
SELECT	'MNX_'||BuildingType,Name,PrereqTech,PrereqCivic,Cost,MaxPlayerInstances,MaxWorldInstances,Capital,PrereqDistrict,'DISTRICT_HOLYSITE_GOTS',Description,RequiresPlacement,RequiresRiver,OuterDefenseHitPoints,Housing,Entertainment,AdjacentResource,Coast,EnabledByReligion,AllowsHolyCity,PurchaseYield,MustPurchase,Maintenance,IsWonder,TraitType,OuterDefenseStrength,CitizenSlots,MustBeLake,MustNotBeLake,RegionalRange,AdjacentToMountain,ObsoleteEra,RequiresReligion,GrantFortification,DefenseModifier,InternalOnly,RequiresAdjacentRiver,Quote,QuoteAudio,MustBeAdjacentLand,AdvisorType,AdjacentCapital,AdjacentImprovement,CityAdjacentTerrain,UnlocksGovernmentPolicy,GovernmentTierRequirement
FROM	Buildings	WHERE AdjacentDistrict='DISTRICT_HOLY_SITE';*/

INSERT OR IGNORE INTO BuildingPrereqs
		(Building,				PrereqBuilding)
SELECT	'MNX_'||Building,		'MNX_BUILDING_SHRINE'
FROM	BuildingPrereqs	WHERE PrereqBuilding='BUILDING_SHRINE' AND Building NOT IN ('BUILDING_MAHABODHI_TEMPLE', 'BUILDING_BOROBUDUR', 'BUILDING_KOTOKU_IN', 'BUILDING_PHANTA_LEIFENG_PAGODA', 'BUILDING_HAGIA_SOPHIA');

INSERT OR IGNORE INTO BuildingPrereqs
		(Building,				PrereqBuilding)
SELECT	'MNX_'||Building,		'MNX_BUILDING_TEMPLE'
FROM	BuildingPrereqs	WHERE PrereqBuilding='BUILDING_TEMPLE' AND Building NOT IN ('BUILDING_MAHABODHI_TEMPLE', 'BUILDING_BOROBUDUR', 'BUILDING_KOTOKU_IN', 'BUILDING_PHANTA_LEIFENG_PAGODA', 'BUILDING_HAGIA_SOPHIA');


INSERT OR IGNORE INTO District_CitizenYieldChanges
		(DistrictType,					YieldType,			YieldChange)	
VALUES	('DISTRICT_HOLYSITE_GOTS',		'YIELD_FAITH',		'2');

INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,									Description,																										YieldType,				YieldChange,	OtherDistrictAdjacent,		TilesRequired,		AdjacentDistrict	)
VALUES
		('MNX_Faith_Dist_Adj_AnyDist',			'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?District; other?Districts;}.',				'YIELD_FAITH',			1,				1,					  		1,					NULL),
		('MNX_Faith_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',			'YIELD_FAITH',			1,				0,					  		1,					'DISTRICT_HOLYSITE_GOTS'),
		('MNX_Gold_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',				'YIELD_GOLD',			1,				0,					  		1,					'DISTRICT_HOLYSITE_GOTS'),
		('MNX_Science_Dist_Adj_HolySite',		'(GOTS) +{1_num} [ICON_Science] Science from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',		'YIELD_SCIENCE',		1,				0,					  		1,					'DISTRICT_HOLYSITE_GOTS'),
		('MNX_Culture_Dist_Adj_HolySite',		'(GOTS) +{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',		'YIELD_CULTURE',		1,				0,					  		1,					'DISTRICT_HOLYSITE_GOTS'),
		('MNX_Prod_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',	'YIELD_PRODUCTION',		1,				0,					  		1,					'DISTRICT_HOLYSITE_GOTS'),
		('MNX_Food_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Food] Food from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',				'YIELD_FOOD',			1,				0,					  		1,					'DISTRICT_HOLYSITE_GOTS');


INSERT OR IGNORE INTO District_Adjacencies
		(DistrictType,						YieldChangeID					)	
VALUES	('DISTRICT_HOLYSITE_GOTS',			'NaturalWonder_Faith'),
		('DISTRICT_HOLYSITE_GOTS',			'Mountain_Faith1'),
		('DISTRICT_HOLYSITE_GOTS',			'Mountain_Faith2'),
		('DISTRICT_HOLYSITE_GOTS',			'Mountain_Faith3'),
		('DISTRICT_HOLYSITE_GOTS',			'Mountain_Faith4'),
		('DISTRICT_HOLYSITE_GOTS',			'Mountain_Faith5'),
		('DISTRICT_HOLYSITE_GOTS',			'Forest_Faith'),
		('DISTRICT_HOLYSITE_GOTS',			'MNX_Faith_Dist_Adj_AnyDist'),
		('DISTRICT_HOLYSITE_GOTS',			'Government_Faith'),
		('DISTRICT_HOLYSITE_GOTS',			'Pamukkale_Faith'),
		
		('DISTRICT_HOLYSITE_GOTS',			'MNX_Faith_Dist_Adj_HolySite'),
		('DISTRICT_HARBOR',					'MNX_Gold_Dist_Adj_HolySite'),
		('DISTRICT_COMMERCIAL_HUB',			'MNX_Gold_Dist_Adj_HolySite'),
		('DISTRICT_CAMPUS',					'MNX_Science_Dist_Adj_HolySite'),
		('DISTRICT_THEATER',				'MNX_Culture_Dist_Adj_HolySite'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_Prod_Dist_Adj_HolySite'),
		('DISTRICT_WATERFRONT',				'MNX_Food_Dist_Adj_HolySite');