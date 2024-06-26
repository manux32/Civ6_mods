-- MNX_GOTS_GeneralBonus
-- Author: manux
-- DateCreated: 3/2/2024 7:48:37 PM
--------------------------------------------------------------

INSERT INTO Types
			(Type,												Kind)
VALUES		('DMOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'KIND_MODIFIER'),
			('DMOD_MNX_PCITIES_ADJUST_UNIT_DOMAIN_PRODUCTION',	'KIND_MODIFIER');

-- Districts Faith purchase Effect only seems to work through governors. Can't make it work with cities collection.
INSERT INTO DynamicModifiers
			(ModifierType,											CollectionType,						EffectType)
VALUES		('DMOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',			'COLLECTION_PLAYER_GOVERNORS',		'EFFECT_ADJUST_CAN_FAITH_PURCHASE_DISTRICTS'),
			('DMOD_MNX_PCITIES_ADJUST_UNIT_DOMAIN_PRODUCTION',		'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_UNIT_DOMAIN_PRODUCTION');


INSERT OR IGNORE INTO Modifiers 
		(ModifierId,										ModifierType,													Permanent,		SubjectRequirementSetId)
VALUES	-- Tech Boosts
		('MOD_MNX_BOOST_ASTROLOGY',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',					1,				NULL),
		('MOD_MNX_BOOST_SAILING',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',					1,				NULL),

		-- Great People boosts
		('MOD_MNX_PROPHET_POINTS',							'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					1,				NULL),
		('MOD_MNX_ADMIRAL_POINTS',							'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					1,				NULL),
		('MOD_MNX_MERCHANT_POINTS',							'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					1,				NULL),
		('MOD_MNX_GENERAL_POINTS',							'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					1,				NULL),
		
		-- City districts limit boost
		('MOD_MNX_ODIN_DISTRICT_LIMIT_BOOST',				'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',						1,				'REQSR_MNX_CITY_HAS_TIER3_HOLY_BUILDING'),

		--------------------------------------------------------
		-- Districts Gold and Faith purchase
		('MOD_MNX_ATTACH_GOVS_GOLD_PURCHASE_DISTRICTS',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						0,				'REQSR_MNX_CITY_HAS_GOV_HOLY_HARB_T3'),
		('MOD_MNX_GOVERNORS_GOLD_PURCHASE_DISTRICTS',		'MODIFIER_CITY_ADJUST_CAN_PURCHASE_DISTRICTS',					0,				NULL),
		('MOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'DMOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',					0,				'REQSR_MNX_CITY_HAS_GOV_HOLY_HARB_T3'),
		
		-- Districts Bonus Range with HS Tier 3
		('MOD_MNX_ODIN_ATTACH_DISTRICTS_EXTRA_RANGE',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						1,				'REQSR_MNX_CITY_HAS_TIER3_HOLY_BUILDING'),
		('MOD_MNX_ODIN_DISTRICTS_EXTRA_RANGE',				'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_REGIONAL_RANGE',		1,				'DISTRICT_IS_INDUSTRIAL_ZONE_OR_ENTERTAINMENT_COMPLEX_OR_WATER_PARK'),

		--------------------------------------------------------
		-- Cheap Naval Units
		('MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_PROD',				'DMOD_MNX_PCITIES_ADJUST_UNIT_DOMAIN_PRODUCTION',				1,				NULL),
		('MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_BUY',				'MODIFIER_PLAYER_CITIES_ADJUST_UNITS_PURCHASE_COST',			1,				NULL),

		-- Units grant promo when trained
		('MOD_MNX_ODIN_ATTACH_TRAINED_NAVAL_UNITS_PROMO',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						1,				'REQSR_MNX_CITY_HAS_HOLY_TIER3_HARBOR_TIER2'),
		('MOD_MNX_ODIN_ATTACH_TRAINED_LAND_UNITS_PROMO',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						1,				'REQSR_MNX_CITY_HAS_HOLY_TIER3_ENCAMP_TIER2'),
		('MOD_MNX_ODIN_ATTACH_TRAINED_AIR_UNITS_PROMO',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						1,				'REQSR_MNX_CITY_HAS_HOLY_TIER3_AERO_TIER2'),
		('MOD_MNX_ODIN_ATTACH_TRAINED_RECON_UNITS_PROMO',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',						1,				NULL),
		
		('MOD_MNX_ODIN_TRAINED_NAVAL_UNITS_PROMO',			'MODIFIER_CITY_TRAINED_UNITS_ADJUST_GRANT_EXPERIENCE',			1,				'REQUIREMENTS_UNIT_SEA_DOMAIN'),
		('MOD_MNX_ODIN_TRAINED_LAND_UNITS_PROMO',			'MODIFIER_CITY_TRAINED_UNITS_ADJUST_GRANT_EXPERIENCE',			1,				'REQUIREMENTS_UNIT_LAND_DOMAIN'),
		('MOD_MNX_ODIN_TRAINED_AIR_UNITS_PROMO',			'MODIFIER_CITY_TRAINED_UNITS_ADJUST_GRANT_EXPERIENCE',			1,				'AIRPORT_UNIT_REQUIREMENTS'),
		('MOD_MNX_ODIN_TRAINED_RECON_UNITS_PROMO',			'MODIFIER_CITY_TRAINED_UNITS_ADJUST_GRANT_EXPERIENCE',			1,				'REQSR_MNX_UNIT_IS_RECON'),

		-- Units promotions
		('MOD_MNX_APOSTLE_PROMO_DEBATER',					'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',						1,				'REQSR_MNX_UNIT_IS_RELIGIOUS'),
		('MOD_MNX_RECON_PROMO_RANGER',						'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',						1,				'REQSR_MNX_UNIT_IS_RECON'),
		('MOD_MNX_RECON_PROMO_ALPINE',						'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',						1,				'REQSR_MNX_UNIT_IS_RECON'),
		('MOD_MNX_RECON_PROMO_SENTRY',						'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',						1,				'REQSR_MNX_UNIT_IS_RECON'),
		
		-- Any promotion choice
		('MOD_MNX_APOSTLE_ANY_PROMO',						'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		1,				NULL),
		('MOD_MNX_ROCKBAND_ANY_PROMO',						'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		1,				NULL),
		('MOD_MNX_SPY_ANY_PROMO',							'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES',		1,				NULL),
		
		-- Policy slots
		('MOD_MNX_POL_SLOT_MILIT_1',						'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		1,				NULL),
		('MOD_MNX_POL_SLOT_DIPLO_1',						'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		1,				NULL),
		('MOD_MNX_POL_SLOT_WILDCARD_1',						'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		('MOD_MNX_POL_SLOT_WILDCARD_2',						'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		1,				NULL),
		
		-- Governor points
		('MOD_MNX_ODIN_REL_GOV_POINT',						'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',						1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION');


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,										Name,						Value)
VALUES	-- Tech Boosts
		('MOD_MNX_BOOST_ASTROLOGY',							'TechType',					'TECH_ASTROLOGY'),
		('MOD_MNX_BOOST_SAILING',							'TechType',					'TECH_SAILING'),

		-- Great People boosts
		('MOD_MNX_PROPHET_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET'),
		('MOD_MNX_PROPHET_POINTS',							'Amount',					'2'),
		('MOD_MNX_ADMIRAL_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_ADMIRAL'),
		('MOD_MNX_ADMIRAL_POINTS',							'Amount',					'2'),
		('MOD_MNX_MERCHANT_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_MERCHANT'),
		('MOD_MNX_MERCHANT_POINTS',							'Amount',					'2'),
		('MOD_MNX_GENERAL_POINTS',							'GreatPersonClassType',		'GREAT_PERSON_CLASS_GENERAL'),
		('MOD_MNX_GENERAL_POINTS',							'Amount',					'2'),
		
		-- City districts limit boost
		('MOD_MNX_ODIN_DISTRICT_LIMIT_BOOST',				'Amount',					'1'),

		--------------------------------------------------------
		-- Districts Gold and Faith purchase
		('MOD_MNX_ATTACH_GOVS_GOLD_PURCHASE_DISTRICTS',		'ModifierId',				'MOD_MNX_GOVERNORS_GOLD_PURCHASE_DISTRICTS'),
		('MOD_MNX_GOVERNORS_GOLD_PURCHASE_DISTRICTS',		'CanPurchase',				'1'),
		('MOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS',		'CanPurchase',				'1'),

		-- Districts Bonus Range with HS Tier 3
		('MOD_MNX_ODIN_ATTACH_DISTRICTS_EXTRA_RANGE',		'ModifierId',				'MOD_MNX_ODIN_DISTRICTS_EXTRA_RANGE'),
		('MOD_MNX_ODIN_DISTRICTS_EXTRA_RANGE',				'Amount',					'3'),

		--------------------------------------------------------
		-- Cheap Naval Units
		('MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_PROD',				'Domain',					'DOMAIN_SEA'),
		('MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_PROD',				'Amount',					'30'		),

		('MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_BUY',				'UnitDomain',				'DOMAIN_SEA'),
		('MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_BUY',				'Amount',					'30'		),

		-- Units grant promo when trained
		('MOD_MNX_ODIN_ATTACH_TRAINED_NAVAL_UNITS_PROMO',	'ModifierId',				'MOD_MNX_ODIN_TRAINED_NAVAL_UNITS_PROMO'),
		('MOD_MNX_ODIN_ATTACH_TRAINED_LAND_UNITS_PROMO',	'ModifierId',				'MOD_MNX_ODIN_TRAINED_LAND_UNITS_PROMO'),
		('MOD_MNX_ODIN_ATTACH_TRAINED_AIR_UNITS_PROMO',		'ModifierId',				'MOD_MNX_ODIN_TRAINED_AIR_UNITS_PROMO'),
		('MOD_MNX_ODIN_ATTACH_TRAINED_RECON_UNITS_PROMO',	'ModifierId',				'MOD_MNX_ODIN_TRAINED_RECON_UNITS_PROMO'),
		
		('MOD_MNX_ODIN_TRAINED_NAVAL_UNITS_PROMO',			'Amount',					'-1'),
		('MOD_MNX_ODIN_TRAINED_LAND_UNITS_PROMO',			'Amount',					'-1'),
		('MOD_MNX_ODIN_TRAINED_AIR_UNITS_PROMO',			'Amount',					'-1'),
		('MOD_MNX_ODIN_TRAINED_RECON_UNITS_PROMO',			'Amount',					'-1'),

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
		('MOD_MNX_ODIN_REL_GOV_POINT',						'Delta',					'1');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,					ModifierId) 
VALUES	-- Tech Boosts
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_BOOST_ASTROLOGY'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_BOOST_SAILING'),
		
		-- Great People boosts
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_PROPHET_POINTS'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_ADMIRAL_POINTS'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_MERCHANT_POINTS'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_GENERAL_POINTS'),

		-- City districts limit boost
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_ODIN_DISTRICT_LIMIT_BOOST'),

		-- Purchase Districts with Faith and Gold
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_GOVERNORS_FAITH_PURCHASE_DISTRICTS'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ATTACH_GOVS_GOLD_PURCHASE_DISTRICTS'),				
		
		-- Districts Bonus Range with HS Tier 3
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ODIN_ATTACH_DISTRICTS_EXTRA_RANGE'),

		-- Cheap Naval Units
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',	'MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_PROD'),
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',	'MOD_MNX_ODIN_CHEAP_NAVAL_UNITS_BUY'),

		-- Units grant promo when trained
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ODIN_ATTACH_TRAINED_NAVAL_UNITS_PROMO'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ODIN_ATTACH_TRAINED_LAND_UNITS_PROMO'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ODIN_ATTACH_TRAINED_AIR_UNITS_PROMO'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ODIN_ATTACH_TRAINED_RECON_UNITS_PROMO'),

		-- Units promotions
		--('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_APOSTLE_PROMO_DEBATER'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_RECON_PROMO_RANGER'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_RECON_PROMO_ALPINE'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_RECON_PROMO_SENTRY'),

		-- Any promotion choice
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_APOSTLE_ANY_PROMO'),
		--('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_ROCKBAND_ANY_PROMO'),
		--('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_SPY_ANY_PROMO'),

		-- Policy slots
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_POL_SLOT_MILIT_1'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_POL_SLOT_DIPLO_1'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',	'MOD_MNX_POL_SLOT_WILDCARD_1'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',	'MOD_MNX_POL_SLOT_WILDCARD_2'),

		-- Governor points
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_ODIN_REL_GOV_POINT');


