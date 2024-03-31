-- MNX_UU_NorseAdventurer
-- Author: manux
-- DateCreated: 3/30/2024 9:40:35 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO Types
			(Type,					Kind)
VALUES		('UNIT_MNX_NORSE_ADVENTURER',		'KIND_UNIT');

INSERT OR IGNORE INTO TypeTags
			(Type,					Tag)
VALUES		('UNIT_MNX_NORSE_ADVENTURER',		'CLASS_RECON'),
			('UNIT_MNX_NORSE_ADVENTURER',		'CLASS_REVEAL_STEALTH');

INSERT OR IGNORE INTO Units
			(UnitType,			Name,						Cost,	BaseSightRange,	BaseMoves,	Combat,	RangedCombat,	Range,	PurchaseYield,		Domain,			FormationClass,					PromotionClass,				AdvisorType,		TraitType,								Description)
VALUES		('UNIT_MNX_NORSE_ADVENTURER',	'LOC_UNIT_MNX_NORSE_ADVENTURER_NAME',	35,		2,				3,			15,		15,				1,		'YIELD_GOLD',		'DOMAIN_LAND',	'FORMATION_CLASS_LAND_COMBAT',	'PROMOTION_CLASS_RECON',	'ADVISOR_CONQUEST',	'TRAIT_LEADER_MNX_NORSE_ADVENTURER',	'LOC_UNIT_MNX_NORSE_ADVENTURER_DESCRIPTION');

INSERT OR IGNORE INTO UnitUpgrades
			(Unit,					UpgradeUnit)
VALUES		('UNIT_MNX_NORSE_ADVENTURER',		'UNIT_SKIRMISHER');

INSERT OR IGNORE INTO UnitReplaces
			(CivUniqueUnitType,		ReplacesUnitType)
VALUES		('UNIT_MNX_NORSE_ADVENTURER',		'UNIT_SCOUT');

-- Below are same as Skirmisher
INSERT OR IGNORE INTO UnitAiInfos
			(UnitType,				AiType)
VALUES		('UNIT_MNX_NORSE_ADVENTURER',		'UNITAI_EXPLORE'),
			('UNIT_MNX_NORSE_ADVENTURER',		'UNITTYPE_LAND_COMBAT'),
			('UNIT_MNX_NORSE_ADVENTURER',		'UNITTYPE_RANGED');
