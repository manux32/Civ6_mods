-- TEST_CALISSE
-- Author: manux
-- DateCreated: 3/9/2024 1:17:35 AM
--------------------------------------------------------------
/*
INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,													OwnerRequirementSetId)
VALUES	-- Water unlock
		('MOD_MNX_EMBARK',								'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',							'PLAYER_IS_HUMAN'),
		('MOD_MNX_OCEAN',								'MODIFIER_PLAYER_UNITS_ADJUST_VALID_TERRAIN',					'PLAYER_IS_HUMAN');


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-- Water unlock
		('MOD_MNX_EMBARK',								'AbilityType',				'ABILITY_MANA'),
		('MOD_MNX_OCEAN',								'TerrainType',				'TERRAIN_OCEAN'),
		('MOD_MNX_OCEAN',								'Valid',					'1');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,					ModifierId) 
VALUES	-- Units Abilities
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK'),
		('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_OCEAN');
*/

INSERT OR IGNORE INTO Modifiers
		(ModifierId,					ModifierType,											RunOnce,	Permanent)
SELECT	'MOD_MNX_EMBARK'||UnitType,		'MODIFIER_PLAYER_ADJUST_EMBARK_UNIT_PASS',				0,			1
FROM	Units	
WHERE Domain='DOMAIN_LAND';

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,							Value)
SELECT	'MOD_MNX_EMBARK'||UnitType,						'UnitType',						UnitType
FROM	Units	WHERE Domain='DOMAIN_LAND';

INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId)
SELECT	'TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_EMBARK'||UnitType
FROM	Units	
WHERE Domain='DOMAIN_LAND';