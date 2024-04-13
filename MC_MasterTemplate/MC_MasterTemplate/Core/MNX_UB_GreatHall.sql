-- MNX_UB_GreatHall
-- Author: User
-- DateCreated: 4/13/2024 2:22:29 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Types
			(Type,							Kind)
VALUES		('BUILDING_MNX_GREAT_HALL',		'KIND_BUILDING');


INSERT OR IGNORE INTO Buildings
			(BuildingType,				PrereqTech,		Cost,	PrereqDistrict,			Housing,	Entertainment,	PurchaseYield,	Maintenance,	CitizenSlots,	AdvisorType,		TraitType,							Name,								Description)
VALUES		('BUILDING_MNX_GREAT_HALL',	'TECH_MINING',	100,	'DISTRICT_CITY_CENTER',	2,			1,				'YIELD_GOLD',	1,				1,				'ADVISOR_GENERIC',	'TRAIT_BUILDING_MNX_GREAT_HALL',	'LOC_BUILDING_MNX_GREAT_HALL_NAME',	'LOC_BUILDING_MNX_GREAT_HALL_DESCRIPTION');


INSERT OR IGNORE INTO Building_YieldChanges
			(BuildingType,					YieldType,				YieldChange	)
VALUES		('BUILDING_MNX_GREAT_HALL',		'YIELD_FOOD',			2			),
			('BUILDING_MNX_GREAT_HALL',		'YIELD_PRODUCTION',		2			),
			('BUILDING_MNX_GREAT_HALL',		'YIELD_GOLD',			2			),
			('BUILDING_MNX_GREAT_HALL',		'YIELD_FAITH',			2			),
			('BUILDING_MNX_GREAT_HALL',		'YIELD_CULTURE',		2			);


/*INSERT OR IGNORE INTO Building_GreatPersonPoints
			(BuildingType,					GreatPersonClassType,				PointsPerTurn)
VALUES		('BUILDING_MNX_GREAT_HALL',		'GREAT_PERSON_CLASS_ADMIRAL',		1),
			('BUILDING_MNX_GREAT_HALL',		'GREAT_PERSON_CLASS_GENERAL',		1),
			('BUILDING_MNX_GREAT_HALL',		'GREAT_PERSON_CLASS_MERCHANT',		1);*/


INSERT OR IGNORE INTO Building_CitizenYieldChanges
			(BuildingType,					YieldType,			YieldChange	)
VALUES		('BUILDING_MNX_GREAT_HALL',		'YIELD_CULTURE',	1			);


INSERT OR IGNORE INTO Building_GreatWorks
			(BuildingType,					GreatWorkSlotType,			NumSlots,	NonUniquePersonYield,	NonUniquePersonTourism	)
VALUES		('BUILDING_MNX_GREAT_HALL',		'GREATWORKSLOT_PALACE',		1,			1,						1						);