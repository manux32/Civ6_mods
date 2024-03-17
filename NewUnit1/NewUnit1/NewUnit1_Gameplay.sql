-- NewUnit_Test
-- Author: manux
-- DateCreated: 3/16/2024 7:52:59 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Types
			(Type,					Kind)
VALUES		('UNIT_SUPERSCOUT',		'KIND_UNIT');

INSERT OR IGNORE INTO TypeTags
			(Type,					Tag)
VALUES		('UNIT_SUPERSCOUT',		'CLASS_RECON'),
			('UNIT_SUPERSCOUT',		'CLASS_REVEAL_STEALTH'),
			('UNIT_SUPERSCOUT',		'CLASS_RANGED'),
			('UNIT_SUPERSCOUT',		'CLASS_MOBILE_RANGED');

INSERT OR IGNORE INTO Units
			(UnitType,			Name,						Cost,	BaseSightRange,	BaseMoves,	Combat,	RangedCombat,	Range,	Domain,			FormationClass,					PromotionClass,				AdvisorType,		TraitType,					Description)
VALUES		('UNIT_SUPERSCOUT',	'LOC_UNIT_SUPERSCOUT_NAME',	35,		4,				6,			20,		20,				3,		'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	'PROMOTION_CLASS_RECON',	'ADVISOR_CONQUEST',	'TRAIT_LEADER_MAJOR_CIV',	'LOC_UNIT_SUPERSCOUT_DESCRIPTION');

INSERT OR IGNORE INTO UnitUpgrades
			(Unit,					UpgradeUnit)
VALUES		('UNIT_SUPERSCOUT',		'UNIT_SKIRMISHER');

INSERT OR IGNORE INTO UnitReplaces
			(CivUniqueUnitType,		ReplacesUnitType)
VALUES		('UNIT_SUPERSCOUT',		'UNIT_SCOUT');

INSERT OR IGNORE INTO UnitAiInfos
			(UnitType,				AiType)
VALUES		('UNIT_SUPERSCOUT',		'UNITAI_EXPLORE'),
			('UNIT_SUPERSCOUT',		'UNITAI_COMBAT'),
			('UNIT_SUPERSCOUT',		'UNITTYPE_RANGED'),
			('UNIT_SUPERSCOUT',		'UNITTYPE_LAND_COMBAT');