-- OP_Player
-- Author: manux
-- DateCreated: 3/2/2024 7:48:37 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,													OwnerRequirementSetId)
VALUES	-- Unlock Techs
		('MOD_MNX_SAILING',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_SHIPBUILDING',						'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_CEL_NAV',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_CARTOGRAPHY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_ASTROLOGY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_WRITING',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_CURRENCY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_FLIGHT',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_ADV_FLIGHT',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_SYNTH_MAT',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_COMB_ARMS',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_ELECTRICITY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		
		-- Free Strategic Resources
		('MOD_MNX_FREE_HORSES',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_IRON',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_NITER',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_COAL',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_OIL',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_ALUM',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_URAN',							'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						'PLAYER_IS_HUMAN'),

		-- Free Strategic Resources
		('MOD_MNX_FREE_HORSES_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_IRON_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_NITER_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_COAL_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_OIL_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_ALUM_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_FREE_URAN_IN_CITY',					'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',			'PLAYER_IS_HUMAN'),
		
		-- Cities Yields boosts
		('MOD_MNX_GOLD_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'PLAYER_IS_HUMAN'),
		('MOD_MNX_PROD_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'PLAYER_IS_HUMAN'),
		('MOD_MNX_SCI_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'PLAYER_IS_HUMAN'),
		('MOD_MNX_CULT_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'PLAYER_IS_HUMAN'),
		('MOD_MNX_FAITH_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'PLAYER_IS_HUMAN'),
		('MOD_MNX_FOOD_BOOST',							'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'PLAYER_IS_HUMAN'),
		
		-- Unit boosts
		('MOD_MNX_UNIT_MOVEMENT_BOOST',					'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT',						'PLAYER_IS_HUMAN'),
		('MOD_MNX_UNIT_STRENGTH_BOOST',					'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH',					'PLAYER_IS_HUMAN');
		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-- Unlock Techs
		('MOD_MNX_SAILING',								'TechType',					'TECH_SAILING'),
		('MOD_MNX_SHIPBUILDING',						'TechType',					'TECH_SHIPBUILDING'),
		('MOD_MNX_CEL_NAV',								'TechType',					'TECH_CELESTIAL_NAVIGATION'),
		('MOD_MNX_CARTOGRAPHY',							'TechType',					'TECH_CARTOGRAPHY'),
		('MOD_MNX_ASTROLOGY',							'TechType',					'TECH_ASTROLOGY'),
		('MOD_MNX_WRITING',								'TechType',					'TECH_WRITING'),
		('MOD_MNX_CURRENCY',							'TechType',					'TECH_CURRENCY'),
		('MOD_MNX_FLIGHT',								'TechType',					'TECH_FLIGHT'),
		('MOD_MNX_ADV_FLIGHT',							'TechType',					'TECH_ADVANCED_FLIGHT'),
		('MOD_MNX_SYNTH_MAT',							'TechType',					'TECH_SYNTHETIC_MATERIALS'),
		('MOD_MNX_COMB_ARMS',							'TechType',					'TECH_COMBINED_ARMS'),
		('MOD_MNX_ELECTRICITY',							'TechType',					'TECH_ELECTRICITY'),

		-- Attach Free Strategic Resources to cities
		('MOD_MNX_FREE_HORSES',							'ModifierType',				'MOD_MNX_FREE_HORSES_IN_CITY'),
		('MOD_MNX_FREE_IRON',							'ModifierType',				'MOD_MNX_FREE_IRON_IN_CITY'),
		('MOD_MNX_FREE_NITER',							'ModifierType',				'MOD_MNX_FREE_NITER_IN_CITY'),
		('MOD_MNX_FREE_COAL',							'ModifierType',				'MOD_MNX_FREE_COAL_IN_CITY'),
		('MOD_MNX_FREE_OIL',							'ModifierType',				'MOD_MNX_FREE_OIL_IN_CITY'),
		('MOD_MNX_FREE_ALUM',							'ModifierType',				'MOD_MNX_FREE_ALUM_IN_CITY'),
		('MOD_MNX_FREE_URAN',							'ModifierType',				'MOD_MNX_FREE_URAN_IN_CITY'),

		-- Free Strategic Resources
		('MOD_MNX_FREE_HORSES_IN_CITY',					'ResourceType',				'RESOURCE_HORSES'),
		('MOD_MNX_FREE_HORSES_IN_CITY',					'Amount',					'20'),
		('MOD_MNX_FREE_IRON_IN_CITY',					'ResourceType',				'RESOURCE_IRON'),
		('MOD_MNX_FREE_IRON_IN_CITY',					'Amount',					'20'),
		('MOD_MNX_FREE_NITER_IN_CITY',					'ResourceType',				'RESOURCE_NITER'),
		('MOD_MNX_FREE_NITER_IN_CITY',					'Amount',					'20'),
		('MOD_MNX_FREE_COAL_IN_CITY',					'ResourceType',				'RESOURCE_COAL'),
		('MOD_MNX_FREE_COAL_IN_CITY',					'Amount',					'20'),
		('MOD_MNX_FREE_OIL_IN_CITY',					'ResourceType',				'RESOURCE_OIL'),
		('MOD_MNX_FREE_OIL_IN_CITY',					'Amount',					'20'),
		('MOD_MNX_FREE_ALUM_IN_CITY',					'ResourceType',				'RESOURCE_ALUMINUM'),
		('MOD_MNX_FREE_ALUM_IN_CITY',					'Amount',					'20'),
		('MOD_MNX_FREE_URAN_IN_CITY',					'ResourceType',				'RESOURCE_URANIUM'),
		('MOD_MNX_FREE_URAN_IN_CITY',					'Amount',					'20'),
	
		-- Cities Yields boosts
		('MOD_MNX_GOLD_BOOST',							'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_GOLD_BOOST',							'Amount',					'1000'),
		('MOD_MNX_FAITH_BOOST',							'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_FAITH_BOOST',							'Amount',					'1000'),
		('MOD_MNX_FOOD_BOOST',							'YieldType',				'YIELD_FOOD'),
		('MOD_MNX_FOOD_BOOST',							'Amount',					'50'),
		('MOD_MNX_PROD_BOOST',							'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_PROD_BOOST',							'Amount',					'200'),
		('MOD_MNX_SCI_BOOST',							'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_SCI_BOOST',							'Amount',					'500'),
		('MOD_MNX_CULT_BOOST',							'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_CULT_BOOST',							'Amount',					'500'),
		
		-- Unit boosts
		('MOD_MNX_UNIT_MOVEMENT_BOOST',					'Amount',					'10'),
		('MOD_MNX_UNIT_STRENGTH_BOOST',					'Amount',					'50');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,						ModifierId) 
VALUES	-- Unlock Techs
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_SAILING'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_CARTOGRAPHY'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_ASTROLOGY'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_WRITING'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SHIPBUILDING'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_CEL_NAV'),		-- Harbors
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_CURRENCY'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FLIGHT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ADV_FLIGHT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SYNTH_MAT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_COMB_ARMS'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ELECTRICITY'),
		-----------------------------------------------------------
		
		-- Free Strategic Resources - Still doesn't work!!!
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_HORSES'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_IRON'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_NITER'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_COAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_OIL'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_ALUM'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FREE_URAN'),	

		-- Cities Yields boosts
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_GOLD_BOOST'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_PROD_BOOST'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SCI_BOOST'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_CULT_BOOST'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FAITH_BOOST'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FOOD_BOOST');

		-- Unit boosts
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_UNIT_MOVEMENT_BOOST'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_UNIT_STRENGTH_BOOST');


-- Unlock all ancient era techs
INSERT OR IGNORE INTO Modifiers
		(ModifierId,							ModifierType,											OwnerRequirementSetId)
SELECT	'MOD_MNX_UNLOCK_'||TechnologyType,		'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',			'PLAYER_IS_HUMAN'
FROM	Technologies
WHERE EraType='ERA_ANCIENT';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'MOD_MNX_UNLOCK_'||TechnologyType,			'TechType',						TechnologyType
FROM	Technologies
WHERE EraType='ERA_ANCIENT';

INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId)
SELECT	'TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNLOCK_'||TechnologyType
FROM	Technologies
WHERE EraType='ERA_ANCIENT';