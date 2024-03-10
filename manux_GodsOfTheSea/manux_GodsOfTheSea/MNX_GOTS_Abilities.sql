-- Abilities
-- Author: manux
-- DateCreated: 3/8/2024 11:19:57 PM
--------------------------------------------------------------

/*
INSERT OR IGNORE INTO DynamicModifiers 
		(ModifierType,							CollectionType,				EffectType)
VALUES	('MOD_MNX_OWNER_ATTACH_MODIFIER', 		'COLLECTION_OWNER', 		'EFFECT_ATTACH_MODIFIER');
*/

INSERT OR IGNORE INTO Types
		(Type,												Kind)
VALUES	--('MOD_MNX_OWNER_ATTACH_MODIFIER',					'KIND_MODIFIER'),
		('ABILITY_MNX_ALL_MOVEMENT_1',						'KIND_ABILITY'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'KIND_ABILITY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'KIND_ABILITY'),

		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'KIND_ABILITY'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'KIND_ABILITY'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'KIND_ABILITY'),
		
		('ABILITY_MNX_COMBAT_STRENGTH_1',					'KIND_ABILITY'),
		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',				'KIND_ABILITY');


INSERT OR IGNORE INTO UnitAbilities
		(UnitAbilityType,								Inactive,	Description)
VALUES	('ABILITY_MNX_ALL_MOVEMENT_1',					1,			'(GOTS) +10 [ICON_Movement] Movement Boost to All Units.'),
		('ABILITY_MNX_SEA_MOVEMENT_1',					1,			'(GOTS) +10 [ICON_Movement] Naval Movement.'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',				1,			'(GOTS) +10 [ICON_Movement] Movement when embarked.'),
		
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',	1,			'(GOTS) Ignores embark and disambark movement cost.'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',			1,			'(GOTS) Can fight while embarked.'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',			1,			'(GOTS) Can heal in neutral territory.'),

		('ABILITY_MNX_COMBAT_STRENGTH_1',				1,			'(GOTS) +50 [ICON_Strength] Combat Strength.'),
		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',			1,			'(GOTS) +10 [ICON_Religion] Religious Strength in Theological Combat.');


INSERT OR IGNORE INTO UnitAbilityModifiers
		(UnitAbilityType,									ModifierId)
VALUES	('ABILITY_MNX_ALL_MOVEMENT_1',						'MOD_MNX_ABIL_ALL_MOVEMENT_1'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'MOD_MNX_ABIL_SEA_MOVEMENT_1'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'MOD_MNX_ABIL_EMBARK_MOVEMENT_1'),
		
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'MOD_MNX_ABIL_IGNORE_EMBARK_DISEMBARK_COST'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'MOD_MNX_ABIL_FIGHT_WHILE_EMBARKED'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL'),

		('ABILITY_MNX_COMBAT_STRENGTH_1',					'MOD_MNX_ABIL_COMBAT_STRENGTH_1'),
		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',				'MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1');


INSERT OR IGNORE INTO TypeTags
		(Type,												Tag)
VALUES	('ABILITY_MNX_ALL_MOVEMENT_1',						'CLASS_ALL_UNITS'),
		
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_CARRIER'),

		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_SUPPORT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_LIGHT_CHARIOT'),

		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_SUPPORT'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_RECON'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_MELEE'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_RANGED'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_SIEGE'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_LIGHT_CHARIOT'),

		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_RECON'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_MELEE'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_RANGED'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_SIEGE'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_LIGHT_CHARIOT'),

		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_CARRIER'),
		
		('ABILITY_MNX_COMBAT_STRENGTH_1',					'CLASS_ALL_UNITS'),
		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',				'CLASS_RELIGIOUS_ALL');


INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,											OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	-- Unique Units
		('MOD_MNX_UNIQUE_UNIT_DROMON',					'MODIFIER_PLAYER_ADJUST_VALID_UNIT_BUILD',				'PLAYER_IS_HUMAN',			'REQSR_MNX_HAS_TECH_SHIPBUILDING'),
		--('MOD_MNX_UNIQUE_UNIT_SEADOG',				'MODIFIER_PLAYER_ADJUST_VALID_UNIT_BUILD',				'PLAYER_IS_HUMAN',			'REQSR_MNX_HAS_CIVIC_MERCANTILISM'),
		--('MOD_MNX_UNIQUE_UNIT_UBOAT',					'MODIFIER_PLAYER_ADJUST_VALID_UNIT_BUILD',				'PLAYER_IS_HUMAN',			'REQSR_MNX_HAS_TECH_ELECTRICITY'),
		('MOD_MNX_UNIQUE_UNIT_SEADOG',					'MODIFIER_PLAYER_ADJUST_VALID_UNIT_BUILD',				'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_UNIQUE_UNIT_UBOAT',					'MODIFIER_PLAYER_ADJUST_VALID_UNIT_BUILD',				'PLAYER_IS_HUMAN',			NULL),
		
		-- Grant Unit abilities
		('MOD_MNX_EMBARK_ALL_UNITS',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_UNLOCK_OCEAN',						'MODIFIER_PLAYER_UNITS_ADJUST_VALID_TERRAIN',			'PLAYER_IS_HUMAN',			NULL),

		('MOD_MNX_ALL_MOVEMENT_1',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_SEA_MOVEMENT_1',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_EMBARK_MOVEMENT_1',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		
		('MOD_MNX_WATER_TRADER_PROTECT',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			'REQSR_MNX_UNIT_IS_TRADER'),
		('MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_FIGHT_WHILE_EMBARKED',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_SHIP_HEAL_NEUTRAL',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),

		('MOD_MNX_COMBAT_STRENGTH_1',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_RELIGIOUS_STRENGTH_1',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					'PLAYER_IS_HUMAN',			NULL),
		
		-- Units Abilities
		('MOD_MNX_ABIL_ALL_MOVEMENT_1',					'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_ABIL_SEA_MOVEMENT_1',					'MODIFIER_PLAYER_UNIT_ADJUST_SEA_MOVEMENT',				'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_ABIL_EMBARK_MOVEMENT_1',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',					'PLAYER_IS_HUMAN',			'REQUIREMENTS_UNIT_IS_EMBARKED'),

		('MOD_MNX_ABIL_IGNORE_EMBARK_DISEMBARK_COST',	'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_SHORES',			'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_ABIL_FIGHT_WHILE_EMBARKED',			'MODIFIER_SINGLE_UNIT_ADJUST_FIGHT_WHILE_EMBARKED',		'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL',				'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN',			'PLAYER_IS_HUMAN',			NULL),
		
		('MOD_MNX_ABIL_COMBAT_STRENGTH_1',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'PLAYER_IS_HUMAN',			NULL),
		('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',					'PLAYER_IS_HUMAN',			NULL);


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-- Unique Units
		('MOD_MNX_UNIQUE_UNIT_DROMON',					'UnitType',					'UNIT_BYZANTINE_DROMON'),
		('MOD_MNX_UNIQUE_UNIT_SEADOG',					'UnitType',					'UNIT_ENGLISH_SEADOG'),
		('MOD_MNX_UNIQUE_UNIT_UBOAT',					'UnitType',					'UNIT_GERMAN_UBOAT'),
		
		-- Grant Unit abilities
		('MOD_MNX_EMBARK_ALL_UNITS',					'AbilityType',				'ABILITY_MANA'),
		('MOD_MNX_UNLOCK_OCEAN',						'TerrainType',				'TERRAIN_OCEAN'),
		('MOD_MNX_UNLOCK_OCEAN',						'Valid',					'1'),

		('MOD_MNX_ALL_MOVEMENT_1',						'AbilityType',				'ABILITY_MNX_ALL_MOVEMENT_1'),
		('MOD_MNX_SEA_MOVEMENT_1',						'AbilityType',				'ABILITY_MNX_SEA_MOVEMENT_1'),
		('MOD_MNX_EMBARK_MOVEMENT_1',					'AbilityType',				'ABILITY_MNX_EMBARK_MOVEMENT_1'),

		('MOD_MNX_WATER_TRADER_PROTECT',				'AbilityType',				'ABILITY_TRADE_ROUTE_PLUNDER_IMMUNITY_SEA'),
		('MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'AbilityType',				'ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST'),
		('MOD_MNX_FIGHT_WHILE_EMBARKED',				'AbilityType',				'ABILITY_MNX_FIGHT_WHILE_EMBARKED'),
		('MOD_MNX_SHIP_HEAL_NEUTRAL',					'AbilityType',				'ABILITY_MNX_HEAL_NEUTRAL_TERRITORY'),

		('MOD_MNX_COMBAT_STRENGTH_1',					'AbilityType',				'ABILITY_MNX_COMBAT_STRENGTH_1'),
		('MOD_MNX_RELIGIOUS_STRENGTH_1',				'AbilityType',				'ABILITY_MNX_RELIGIOUS_STRENGTH_1'),
		
		-- Units Abilities
		('MOD_MNX_ABIL_ALL_MOVEMENT_1',					'Amount',					'10'),
		('MOD_MNX_ABIL_SEA_MOVEMENT_1',					'Amount',					'10'),
		('MOD_MNX_ABIL_EMBARK_MOVEMENT_1',				'Amount',					'10'),
		
		('MOD_MNX_ABIL_IGNORE_EMBARK_DISEMBARK_COST',	'Ignore',					'1'),
		('MOD_MNX_ABIL_FIGHT_WHILE_EMBARKED',			'CanFight',					'1'),
		('MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL',				'Type',						'NEUTRAL'),
		('MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL',				'Amount',					'10'),

		('MOD_MNX_ABIL_COMBAT_STRENGTH_1',				'Amount',					'50'),
		('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1',			'Amount',					'10');