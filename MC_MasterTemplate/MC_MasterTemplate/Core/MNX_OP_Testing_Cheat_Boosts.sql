-- MNX_OP_Testing_Cheat_Boosts
-- Author: manux
-- DateCreated: 3/2/2024 7:48:37 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,													Permanent,	SubjectRequirementSetId)
VALUES	-- Grant Technologies
		('MOD_MNX_ASTROLOGY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_SAILING',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_CEL_NAV',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_SHIPBUILDING',						'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_CARTOGRAPHY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_WRITING',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_CURRENCY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_FLIGHT',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_ADV_FLIGHT',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_SYNTH_MAT',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_COMB_ARMS',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),
		('MOD_MNX_ELECTRICITY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			NULL),

		-- Movement boost to all units
		('MOD_MNX_ALL_UNITS_MOVE_BOOST',				'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT',						1,			NULL),
		
		-- City districts limit boost
		('MOD_MNX_DISTRICT_LIMIT_BOOST',				'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',						1,			NULL),

		-- Governor points
		('MOD_MNX_GOV_POINT_1',							'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',						1,			NULL),

		-- Free Strategic Resources
		('MOD_MNX_FREE_HORSES',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		('MOD_MNX_FREE_IRON',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		('MOD_MNX_FREE_NITER',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		('MOD_MNX_FREE_COAL',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		('MOD_MNX_FREE_OIL',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		('MOD_MNX_FREE_ALUM',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		('MOD_MNX_FREE_URAN',							'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			1,			NULL),
		
		-- Cities Yields boosts
		('MOD_MNX_GOLD_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				1,			NULL),
		('MOD_MNX_PROD_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				1,			NULL),
		('MOD_MNX_SCI_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				1,			NULL),
		('MOD_MNX_CULT_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				1,			NULL),
		('MOD_MNX_FAITH_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				1,			NULL),
		('MOD_MNX_FOOD_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				1,			NULL);
		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-- Grant Technologies
		('MOD_MNX_ASTROLOGY',							'TechType',					'TECH_ASTROLOGY'),
		('MOD_MNX_SAILING',								'TechType',					'TECH_SAILING'),
		('MOD_MNX_CEL_NAV',								'TechType',					'TECH_CELESTIAL_NAVIGATION'),
		('MOD_MNX_SHIPBUILDING',						'TechType',					'TECH_SHIPBUILDING'),
		('MOD_MNX_CARTOGRAPHY',							'TechType',					'TECH_CARTOGRAPHY'),
		('MOD_MNX_WRITING',								'TechType',					'TECH_WRITING'),
		('MOD_MNX_CURRENCY',							'TechType',					'TECH_CURRENCY'),
		('MOD_MNX_FLIGHT',								'TechType',					'TECH_FLIGHT'),
		('MOD_MNX_ADV_FLIGHT',							'TechType',					'TECH_ADVANCED_FLIGHT'),
		('MOD_MNX_SYNTH_MAT',							'TechType',					'TECH_SYNTHETIC_MATERIALS'),
		('MOD_MNX_COMB_ARMS',							'TechType',					'TECH_COMBINED_ARMS'),
		('MOD_MNX_ELECTRICITY',							'TechType',					'TECH_ELECTRICITY'),

		-- Movement boost to all units
		('MOD_MNX_ALL_UNITS_MOVE_BOOST',				'Amount',					'10'),

		-- City districts limit boost
		('MOD_MNX_DISTRICT_LIMIT_BOOST',				'Amount',					'10'),

		-- Governor points
		('MOD_MNX_GOV_POINT_1',							'Delta',					'1'),

		-- Free Strategic Resources
		('MOD_MNX_FREE_HORSES',							'ResourceType',				'RESOURCE_HORSES'),
		('MOD_MNX_FREE_HORSES',							'Amount',					'20'),
		('MOD_MNX_FREE_IRON',							'ResourceType',				'RESOURCE_IRON'),
		('MOD_MNX_FREE_IRON',							'Amount',					'20'),
		('MOD_MNX_FREE_NITER',							'ResourceType',				'RESOURCE_NITER'),
		('MOD_MNX_FREE_NITER',							'Amount',					'20'),
		('MOD_MNX_FREE_COAL',							'ResourceType',				'RESOURCE_COAL'),
		('MOD_MNX_FREE_COAL',							'Amount',					'20'),
		('MOD_MNX_FREE_OIL',							'ResourceType',				'RESOURCE_OIL'),
		('MOD_MNX_FREE_OIL',							'Amount',					'20'),
		('MOD_MNX_FREE_ALUM',							'ResourceType',				'RESOURCE_ALUMINUM'),
		('MOD_MNX_FREE_ALUM',							'Amount',					'20'),
		('MOD_MNX_FREE_URAN',							'ResourceType',				'RESOURCE_URANIUM'),
		('MOD_MNX_FREE_URAN',							'Amount',					'20'),
	
		-- Cities Yields boosts
		('MOD_MNX_GOLD_BOOST',							'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_GOLD_BOOST',							'Amount',					'10000'),
		('MOD_MNX_FAITH_BOOST',							'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_FAITH_BOOST',							'Amount',					'10000'),
		('MOD_MNX_FOOD_BOOST',							'YieldType',				'YIELD_FOOD'),
		('MOD_MNX_FOOD_BOOST',							'Amount',					'20'),
		('MOD_MNX_PROD_BOOST',							'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_PROD_BOOST',							'Amount',					'500'),
		('MOD_MNX_SCI_BOOST',							'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_SCI_BOOST',							'Amount',					'100000'),
		('MOD_MNX_CULT_BOOST',							'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_CULT_BOOST',							'Amount',					'100000');


-- It seems that free strategic resources need to be attached to a buidling to work.
INSERT OR IGNORE INTO BuildingModifiers 
		(BuildingType,					ModifierId) 
VALUES	('BUILDING_MONUMENT',			'MOD_MNX_FREE_HORSES'),
		('BUILDING_MONUMENT',			'MOD_MNX_FREE_IRON'),
		('BUILDING_MONUMENT',			'MOD_MNX_FREE_NITER'),
		('BUILDING_MONUMENT',			'MOD_MNX_FREE_COAL'),
		('BUILDING_MONUMENT',			'MOD_MNX_FREE_OIL'),
		('BUILDING_MONUMENT',			'MOD_MNX_FREE_ALUM'),
		('BUILDING_MONUMENT',			'MOD_MNX_FREE_URAN');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,						ModifierId) 
VALUES	-- Grant Technologies
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_ASTROLOGY'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SAILING'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_CEL_NAV'),			-- Harbors
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SHIPBUILDING'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_CARTOGRAPHY'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_WRITING'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_CURRENCY'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_FLIGHT'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_ADV_FLIGHT'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_SYNTH_MAT'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_COMB_ARMS'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_ELECTRICITY'),
		-----------------------------------------------------------

		-- Movement boost to all units
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_ALL_UNITS_MOVE_BOOST'),

		-- City districts limit boost
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_DISTRICT_LIMIT_BOOST'),

		-- Governor points
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_GOV_POINT_1'),

		-- Cities Yields boosts
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_FOOD_BOOST'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_PROD_BOOST'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SCI_BOOST'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_CULT_BOOST'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_GOLD_BOOST'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_FAITH_BOOST');



-- Unlock all ancient era techs
INSERT OR IGNORE INTO Modifiers
		(ModifierId,							ModifierType)
SELECT	'MOD_MNX_UNLOCK_'||TechnologyType,		'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY'
FROM	Technologies
WHERE EraType='ERA_ANCIENT';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,								Name,							Value)
SELECT	'MOD_MNX_UNLOCK_'||TechnologyType,			'TechType',						TechnologyType
FROM	Technologies
WHERE EraType='ERA_ANCIENT';

INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId)
SELECT	'TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_UNLOCK_'||TechnologyType
FROM	Technologies
WHERE EraType='ERA_ANCIENT';
