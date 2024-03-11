-- OP_Player
-- Author: manux
-- DateCreated: 3/2/2024 7:48:37 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,													OwnerRequirementSetId)
VALUES	-- Great People boosts
		('MOD_MNX_PROPHET_POINTS',						'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_ADMIRAL_POINTS',						'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_MERCHANT_POINTS',						'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'PLAYER_IS_HUMAN'),
		-- Units promotions
		('MOD_MNX_APOSTLE_ANY_PROMO',					'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_ROCKBAND_ANY_PROMO',					'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_SPY_ANY_PROMO',						'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		'PLAYER_IS_HUMAN'),
		-- City districts limit boost
		('MOD_MNX_DISTRICT_LIMIT_BOOST',				'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',						'PLAYER_IS_HUMAN'),
		-- Policy slots
		('MOD_MNX_POL_SLOT_MILIT_1',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_POL_SLOT_DIPLO_1',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_POL_SLOT_WILDCARD_1',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_POL_SLOT_WILDCARD_2',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		-- Governor points
		('MOD_MNX_GOV_POINT_1',							'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',						'PLAYER_IS_HUMAN');


INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,									OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	-- Units promotions
		('MOD_MNX_APOSTLE_PROMO_DEBATER',				'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',		'PLAYER_IS_HUMAN',			'REQSR_MNX_UNIT_IS_RELIGIOUS');
		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-- Great People boosts
		('MOD_MNX_PROPHET_POINTS',						'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET'),
		('MOD_MNX_PROPHET_POINTS',						'Amount',					'10'),
		('MOD_MNX_ADMIRAL_POINTS',						'GreatPersonClassType',		'GREAT_PERSON_CLASS_ADMIRAL'),
		('MOD_MNX_ADMIRAL_POINTS',						'Amount',					'10'),
		('MOD_MNX_MERCHANT_POINTS',						'GreatPersonClassType',		'GREAT_PERSON_CLASS_MERCHANT'),
		('MOD_MNX_MERCHANT_POINTS',						'Amount',					'10'),
		-- Units promotions
		('MOD_MNX_APOSTLE_PROMO_DEBATER',				'PromotionType',			'PROMOTION_DEBATER'),
		('MOD_MNX_APOSTLE_ANY_PROMO',					'UnitType',					'UNIT_APOSTLE'),
		('MOD_MNX_ROCKBAND_ANY_PROMO',					'UnitType',					'UNIT_ROCK_BAND'),
		('MOD_MNX_SPY_ANY_PROMO',						'UnitType',					'UNIT_SPY'),
		-- City districts limit boost
		('MOD_MNX_DISTRICT_LIMIT_BOOST',				'Amount',					'5'),
		-- Policy slots
		('MOD_MNX_POL_SLOT_MILIT_1',					'GovernmentSlotType',		'SLOT_MILITARY'),
		('MOD_MNX_POL_SLOT_DIPLO_1',					'GovernmentSlotType',		'SLOT_DIPLOMATIC'),
		('MOD_MNX_POL_SLOT_WILDCARD_1',					'GovernmentSlotType',		'SLOT_WILDCARD'),
		('MOD_MNX_POL_SLOT_WILDCARD_2',					'GovernmentSlotType',		'SLOT_WILDCARD'),
		-- Governor points
		('MOD_MNX_GOV_POINT_1',							'Delta',					'1');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,					ModifierId) 
VALUES	-- Great People boosts
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_PROPHET_POINTS'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ADMIRAL_POINTS'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_MERCHANT_POINTS'),
		-- Units promotions
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_APOSTLE_PROMO_DEBATER'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_APOSTLE_ANY_PROMO'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ROCKBAND_ANY_PROMO'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SPY_ANY_PROMO'),

		-- Unique Units
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNIQUE_UNIT_DROMON'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNIQUE_UNIT_SEADOG'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNIQUE_UNIT_UBOAT'),	
		
		-- Units Abilities
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ALL_MOVEMENT_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_LAND_UNITS_MOVEMENT_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_MOVEMENT_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_MOVEMENT_1'),
		
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_EMBARK_ALL_UNITS'),  -- now works! But it also gives extra embarked movement
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNLOCK_OCEAN'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FIGHT_WHILE_EMBARKED'),		
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SHIP_HEAL_NEUTRAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_WATER_TRADER_PROTECT'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_COMBAT_STRENGTH_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RELIGIOUS_STRENGTH_1'),
		
		-- City districts limit boost
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_DISTRICT_LIMIT_BOOST'),
		-- Policy slots
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_POL_SLOT_MILIT_1'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_POL_SLOT_DIPLO_1'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_POL_SLOT_WILDCARD_1'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_POL_SLOT_WILDCARD_2'),
		-- Governor points
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_GOV_POINT_1');


-- Early embark that works. (Can't be done as a custom ability using tags, I already tried)
-- ABILITY_MANA now works! But it also gives extra embarked movement.
	-- I think it's a question of load order that ABILITY_MANA wasn't working before. Some units like the Gaul warrior not yet loaded or something.
INSERT OR IGNORE INTO Modifiers
		(ModifierId,						ModifierType,											RunOnce,	Permanent)
SELECT	'MOD_MNX_EMBARK_'||UnitType,		'MODIFIER_PLAYER_ADJUST_EMBARK_UNIT_PASS',				0,			1
FROM	Units	
WHERE Domain='DOMAIN_LAND';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,							Name,							Value)
SELECT	'MOD_MNX_EMBARK_'||UnitType,			'UnitType',						UnitType
FROM	Units	WHERE Domain='DOMAIN_LAND';

INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId)
SELECT	'TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_'||UnitType
FROM	Units	
WHERE Domain='DOMAIN_LAND';
