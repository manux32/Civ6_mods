-- OP_Player
-- Author: manux
-- DateCreated: 3/2/2024 7:48:37 PM
--------------------------------------------------------------

INSERT INTO Types
			(Type,												Kind)
VALUES		('DMOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'KIND_MODIFIER');

-- Districts Faith purchase Effect only seems to work through governors. Can't make it work with cities collection.
INSERT INTO DynamicModifiers
			(ModifierType,										CollectionType,						EffectType)
VALUES		('DMOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'COLLECTION_PLAYER_GOVERNORS',			'EFFECT_ADJUST_CAN_FAITH_PURCHASE_DISTRICTS');


INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,													OwnerRequirementSetId)
VALUES	-- Grant Technologies
		('MOD_MNX_ASTROLOGY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_SAILING',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_CEL_NAV',								'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_SHIPBUILDING',						'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					'PLAYER_IS_HUMAN'),

		-- Great People boosts
		('MOD_MNX_PROPHET_POINTS',						'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_ADMIRAL_POINTS',						'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'PLAYER_IS_HUMAN'),
		('MOD_MNX_MERCHANT_POINTS',						'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'PLAYER_IS_HUMAN'),
		
		-- City districts limit boost
		('MOD_MNX_DISTRICT_LIMIT_BOOST',				'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',						'PLAYER_IS_HUMAN'),

		-- Cheaper Holy Site and Harbor districts
		('MOD_MNX_CHEAP_HOLYSITE',						'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',			'PLAYER_IS_HUMAN'),
		('MOD_MNX_CHEAP_HARBOR',						'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',			'PLAYER_IS_HUMAN'),

		-- Any promotion choice
		('MOD_MNX_APOSTLE_ANY_PROMO',					'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_ROCKBAND_ANY_PROMO',					'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_SPY_ANY_PROMO',						'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		'PLAYER_IS_HUMAN'),
		
		-- Policy slots
		('MOD_MNX_POL_SLOT_MILIT_1',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_POL_SLOT_DIPLO_1',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_POL_SLOT_WILDCARD_1',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		('MOD_MNX_POL_SLOT_WILDCARD_2',					'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		'PLAYER_IS_HUMAN'),
		
		-- Governor points
		('MOD_MNX_GOV_POINT_1',							'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',						'PLAYER_IS_HUMAN');


INSERT OR IGNORE INTO Modifiers 
		(ModifierId,										ModifierType,										Permanent,	OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	-- Attach Modifiers to Cities
		('MOD_MNX_ATTACH_TRADE_ROUTE_FROM_SHRINES',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			0,			'PLAYER_IS_HUMAN',			'REQSR_MNX_CITY_HAS_TIER1_HOLY_BUILDING'),
		('MOD_MNX_ATTACH_GOVS_GOLD_PURCHASE_DISTRICTS',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			0,			'PLAYER_IS_HUMAN',			'CITY_HAS_GOVERNOR'),

		-- Attached City modifiers
		('MOD_MNX_TRADE_ROUTE_FROM_SHRINES',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',		0,			'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'DMOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		1,			'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_GOVERNORS_GOLD_PURCHASE_DISTRICTS',		'MODIFIER_CITY_ADJUST_CAN_PURCHASE_DISTRICTS',		0,			'PLAYER_IS_HUMAN',			NULL),

		-- Units promotions
		('MOD_MNX_APOSTLE_PROMO_DEBATER',					'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',			0,			'PLAYER_IS_HUMAN',			'REQSR_MNX_UNIT_IS_RELIGIOUS'),
		('MOD_MNX_RECON_PROMO_RANGER',						'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',			0,			'PLAYER_IS_HUMAN',			'REQSR_MNX_UNIT_IS_RECON'),
		('MOD_MNX_RECON_PROMO_ALPINE',						'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',			0,			'PLAYER_IS_HUMAN',			'REQSR_MNX_UNIT_IS_RECON'),
		('MOD_MNX_RECON_PROMO_SENTRY',						'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',			0,			'PLAYER_IS_HUMAN',			'REQSR_MNX_UNIT_IS_RECON');
		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	-- Grant Technologies
		('MOD_MNX_ASTROLOGY',								'TechType',					'TECH_ASTROLOGY'),
		('MOD_MNX_SAILING',									'TechType',					'TECH_SAILING'),
		('MOD_MNX_CEL_NAV',									'TechType',					'TECH_CELESTIAL_NAVIGATION'),
		('MOD_MNX_SHIPBUILDING',							'TechType',					'TECH_SHIPBUILDING'),

		-- Great People boosts
		('MOD_MNX_PROPHET_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET'),
		('MOD_MNX_PROPHET_POINTS',							'Amount',					'100'),
		('MOD_MNX_ADMIRAL_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_ADMIRAL'),
		('MOD_MNX_ADMIRAL_POINTS',							'Amount',					'2'),
		('MOD_MNX_MERCHANT_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_MERCHANT'),
		('MOD_MNX_MERCHANT_POINTS',							'Amount',					'2'),
		
		-- City districts limit boost
		('MOD_MNX_DISTRICT_LIMIT_BOOST',					'Amount',					'5'),

		-- Attach Modifiers to Cities
		('MOD_MNX_ATTACH_TRADE_ROUTE_FROM_SHRINES',			'ModifierId',				'MOD_MNX_TRADE_ROUTE_FROM_SHRINES'),
		('MOD_MNX_ATTACH_GOVS_GOLD_PURCHASE_DISTRICTS',		'ModifierId',				'MOD_MNX_GOVERNORS_GOLD_PURCHASE_DISTRICTS'),
		
		-- Attached City modifiers
		('MOD_MNX_TRADE_ROUTE_FROM_SHRINES',				'Amount',					'1'),
		('MOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'CanPurchase',				'1'),
		('MOD_MNX_GOVERNORS_GOLD_PURCHASE_DISTRICTS',		'CanPurchase',				'1'),

		-- Cheaper Holy Site and Harbor districts
		('MOD_MNX_CHEAP_HOLYSITE',							'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_CHEAP_HOLYSITE',							'Amount',					'100'),
		('MOD_MNX_CHEAP_HARBOR',							'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_CHEAP_HARBOR',							'Amount',					'100'),	

		-- Units promotions
		('MOD_MNX_APOSTLE_PROMO_DEBATER',					'PromotionType',			'PROMOTION_DEBATER'),
		('MOD_MNX_RECON_PROMO_RANGER',						'PromotionType',			'PROMOTION_RANGER'),
		('MOD_MNX_RECON_PROMO_ALPINE',						'PromotionType',			'PROMOTION_ALPINE'),
		('MOD_MNX_RECON_PROMO_SENTRY',						'PromotionType',			'PROMOTION_SENTRY'),

		-- Any promotion choice
		('MOD_MNX_APOSTLE_ANY_PROMO',						'UnitType',					'UNIT_APOSTLE'),
		('MOD_MNX_ROCKBAND_ANY_PROMO',						'UnitType',					'UNIT_ROCK_BAND'),
		('MOD_MNX_SPY_ANY_PROMO',							'UnitType',					'UNIT_SPY'),				
		
		-- Policy slots
		('MOD_MNX_POL_SLOT_MILIT_1',						'GovernmentSlotType',		'SLOT_MILITARY'),
		('MOD_MNX_POL_SLOT_DIPLO_1',						'GovernmentSlotType',		'SLOT_DIPLOMATIC'),
		('MOD_MNX_POL_SLOT_WILDCARD_1',						'GovernmentSlotType',		'SLOT_WILDCARD'),
		('MOD_MNX_POL_SLOT_WILDCARD_2',						'GovernmentSlotType',		'SLOT_WILDCARD'),
		
		-- Governor points
		('MOD_MNX_GOV_POINT_1',								'Delta',					'1');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,					ModifierId) 
VALUES	-- Grant Technologies
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ASTROLOGY'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SAILING'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_CEL_NAV'),			-- Harbors
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SHIPBUILDING'),

		-- Great People boosts
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_PROPHET_POINTS'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ADMIRAL_POINTS'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_MERCHANT_POINTS'),

		-- City districts limit boost
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_DISTRICT_LIMIT_BOOST'),
		-- Trade Route from Shrines
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ATTACH_TRADE_ROUTE_FROM_SHRINES'),
		-- Purchase Districts with Faith and Gold
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ATTACH_GOVS_GOLD_PURCHASE_DISTRICTS'),

		-- Cheaper Holy Site and Harbor districts
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_CHEAP_HOLYSITE'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_CHEAP_HARBOR'),					

		-- Units promotions
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_APOSTLE_PROMO_DEBATER'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_PROMO_RANGER'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_PROMO_ALPINE'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_PROMO_SENTRY'),

		-- Any promotion choice
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_APOSTLE_ANY_PROMO'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ROCKBAND_ANY_PROMO'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SPY_ANY_PROMO'),

		-- Unique Units
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNIQUE_UNIT_DROMON'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNIQUE_UNIT_SEADOG'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNIQUE_UNIT_UBOAT'),	
		
		-- Units Abilities
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_ALL_MOVEMENT_1'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_LAND_UNITS_MOVEMENT_1'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_MOVEMENT_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_MOVEMENT_2'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_MOVEMENT_3'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_MOVEMENT_4'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_COMBAT_STRENGTH'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_COMBAT'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK_SIGHT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_NAVAL_SIGHT'),			

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_MOVEMENT_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_MOVEMENT_2'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_MOVEMENT_3'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_MOVEMENT_4'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_MOVEMENT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_EMBARK_MOVEMENT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_COMBAT'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_SIGHT'),		
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_EMBARK_SIGHT'),		
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RECON_ATTACK_RANGE'),  -- Doesn't work!

		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_EMBARK_ALL_UNITS'),  -- now works! But it also gives extra embarked movement from other mana modifiers
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_UNLOCK_OCEAN'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_FIGHT_WHILE_EMBARKED'),		
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SHIP_HEAL_NEUTRAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_WATER_TRADER_PROTECT'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_STRENGTH_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_STRENGTH_2'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_STRENGTH_3'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_SEA_STRENGTH_4'),

		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RELIGIOUS_STRENGTH_1'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_RELIGIOUS_STRENGTH_2'),
		
		-- Policy slots
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_POL_SLOT_MILIT_1'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_POL_SLOT_DIPLO_1'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_POL_SLOT_WILDCARD_1'),
		--('TRAIT_LEADER_MAJOR_CIV',	'MOD_MNX_POL_SLOT_WILDCARD_2'),
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
