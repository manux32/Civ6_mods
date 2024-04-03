-- MNX_GOTS_Abilities
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
VALUES	('ABILITY_MNX_ALL_MOVEMENT_1',						'KIND_ABILITY'),
		--('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'KIND_ABILITY'),

		('ABILITY_MNX_SEA_MOVEMENT_1',						'KIND_ABILITY'),
		('ABILITY_MNX_SEA_MOVEMENT_2',						'KIND_ABILITY'),
		--('ABILITY_MNX_SEA_MOVEMENT_3',						'KIND_ABILITY'),
		--('ABILITY_MNX_SEA_MOVEMENT_4',						'KIND_ABILITY'),

		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'KIND_ABILITY'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_2',					'KIND_ABILITY'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_3',					'KIND_ABILITY'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_4',					'KIND_ABILITY'),

		('ABILITY_MNX_COMBAT_STRENGTH',						'KIND_ABILITY'),
		--('ABILITY_MNX_EMBARK_COMBAT',						'KIND_ABILITY'),
		
		('ABILITY_MNX_EMBARK_SIGHT',						'KIND_ABILITY'),
		('ABILITY_MNX_NAVAL_SIGHT',							'KIND_ABILITY'),

		('ABILITY_MNX_RECON_MOVEMENT',						'KIND_ABILITY'),
		('ABILITY_MNX_RECON_EMBARK_MOVEMENT',				'KIND_ABILITY'),
		('ABILITY_MNX_RECON_COMBAT',						'KIND_ABILITY'),
		('ABILITY_MNX_RECON_SIGHT',							'KIND_ABILITY'),
		('ABILITY_MNX_RECON_EMBARK_SIGHT',					'KIND_ABILITY'),
		('ABILITY_MNX_RECON_ATTACK_RANGE',					'KIND_ABILITY'),

		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'KIND_ABILITY'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'KIND_ABILITY'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'KIND_ABILITY'),

		('ABILITY_MNX_CAPTURE_SHIPS',						'KIND_ABILITY'),

		('ABILITY_MNX_SEA_STRENGTH_1',						'KIND_ABILITY'),
		--('ABILITY_MNX_SEA_STRENGTH_2',						'KIND_ABILITY'),
		--('ABILITY_MNX_SEA_STRENGTH_3',						'KIND_ABILITY'),
		--('ABILITY_MNX_SEA_STRENGTH_4',						'KIND_ABILITY'),

		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',				'KIND_ABILITY');
		--('ABILITY_MNX_RELIGIOUS_STRENGTH_2',				'KIND_ABILITY');


INSERT OR IGNORE INTO UnitAbilities
		(UnitAbilityType,								Inactive,	Description)
VALUES	('ABILITY_MNX_ALL_MOVEMENT_1',					1,			'(ODIN) +10 [ICON_Movement] Movement to all Units.'),
		--('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',			1,			'(ODIN) +1 [ICON_Movement] Movement to all Land Units.'),

		('ABILITY_MNX_EMBARK_MOVEMENT_1',				1,			'(ODIN) +1 [ICON_Movement] Embarked Movement (Religion).'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_2',				1,			NULL),
		--('ABILITY_MNX_EMBARK_MOVEMENT_3',				1,			NULL),
		--('ABILITY_MNX_EMBARK_MOVEMENT_4',				1,			NULL),

		('ABILITY_MNX_SEA_MOVEMENT_1',					1,			'(ODIN) +1 [ICON_Movement] Movement.'),
		('ABILITY_MNX_SEA_MOVEMENT_2',					1,			'(ODIN) +1 [ICON_Movement] Movement (Religion).'),
		--('ABILITY_MNX_SEA_MOVEMENT_3',					1,			NULL),
		--('ABILITY_MNX_SEA_MOVEMENT_4',					1,			NULL),

		('ABILITY_MNX_COMBAT_STRENGTH',					1,			'(ODIN) +5 [ICON_Strength] Combat Strength (Religion).'),
		--('ABILITY_MNX_EMBARK_COMBAT',					1,			'(ODIN) +5 [ICON_Strength] Embarked Combat Strength (Religion).'),
		
		('ABILITY_MNX_EMBARK_SIGHT',					1,			'(ODIN) +1 Sight Range when Embarked (Religion).'),
		('ABILITY_MNX_NAVAL_SIGHT',						1,			'(ODIN) +1 Sight Range (Religion).'),

		('ABILITY_MNX_RECON_MOVEMENT',					1,			'(ODIN) +1 [ICON_Movement] Movement (Recon).'),
		('ABILITY_MNX_RECON_EMBARK_MOVEMENT',			1,			'(ODIN) +1 [ICON_Movement] Embarked Movement (Recon).'),
		('ABILITY_MNX_RECON_COMBAT',					1,			'(ODIN) +5 [ICON_Strength] Combat Strength (Recon).'),
		('ABILITY_MNX_RECON_SIGHT',						1,			'(ODIN) +1 Sight Range. (Recon)'),
		('ABILITY_MNX_RECON_EMBARK_SIGHT',				1,			'(ODIN) +1 Sight Range when Embarked. (Recon) (Religion)'),
		('ABILITY_MNX_RECON_ATTACK_RANGE',				1,			'(ODIN) +1 [ICON_Range] Attack Range. (Recon) (Archery)'),
		
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',	1,			'(ODIN) Ignores embark and disembark movement cost.'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',			1,			'(ODIN) Can fight while embarked.'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',			1,			'(ODIN) Can heal in neutral territory (Religion).'),

		('ABILITY_MNX_CAPTURE_SHIPS',					1,			'(ODIN) Has a chance to capture defeated enemies.'),
		
		('ABILITY_MNX_SEA_STRENGTH_1',					1,			'(ODIN) +5 [ICON_Strength] Naval Combat Strength.'),
		--('ABILITY_MNX_SEA_STRENGTH_2',					1,			NULL),
		--('ABILITY_MNX_SEA_STRENGTH_3',					1,			NULL),
		--('ABILITY_MNX_SEA_STRENGTH_4',					1,			NULL),

		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',			1,			'(ODIN) +5 [ICON_Religion] Religious Strength in Theological Combat.');
		--('ABILITY_MNX_RELIGIOUS_STRENGTH_2',			1,			NULL);


INSERT INTO ModifierStrings
		(ModifierId,							Context,		Text							)
VALUES	('MOD_MNX_ABIL_COMBAT_STRENGTH',		'Preview',		'(ODIN) +5 [ICON_Strength] Combat Strength (Religion).'					),
		('MOD_MNX_ABIL_RECON_COMBAT',			'Preview',		'(ODIN) +5 [ICON_Strength] Combat Strength (Recon).'					),
		('MOD_MNX_ABIL_SEA_STRENGTH_1',			'Preview',		'(ODIN) +5 [ICON_Strength] Naval Combat Strength.'						),
		--('MOD_MNX_ABIL_CAPTURE_SHIPS',			'Preview',		'{1_Amount}% chance of capturing enemy.'								),  -- Seems like an old string of CAPTURE_PRIZE_SHIPS that gets deleted in Exp 1
		--('MOD_MNX_ABIL_EMBARK_COMBAT',			'Preview',		'(ODIN) +5 [ICON_Strength] Embarked Combat Strength (Religion).'		),
		('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1',	'Preview',		'(ODIN) +5 [ICON_Religion] Religious Strength in Theological Combat.'	);


INSERT OR IGNORE INTO UnitAbilityModifiers
		(UnitAbilityType,									ModifierId)
VALUES	('ABILITY_MNX_ALL_MOVEMENT_1',						'MOD_MNX_ABIL_ALL_MOVEMENT_1'),
		--('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'MOD_MNX_ABIL_LAND_UNITS_MOVEMENT_1'),
		
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'MOD_MNX_ABIL_EMBARK_MOVEMENT_1'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_2',					'MOD_MNX_ABIL_EMBARK_MOVEMENT_2'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_3',					'MOD_MNX_ABIL_EMBARK_MOVEMENT_3'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_4',					'MOD_MNX_ABIL_EMBARK_MOVEMENT_4'),
		
		('ABILITY_MNX_COMBAT_STRENGTH',						'MOD_MNX_ABIL_COMBAT_STRENGTH'),
		--('ABILITY_MNX_EMBARK_COMBAT',						'MOD_MNX_ABIL_EMBARK_COMBAT'),

		('ABILITY_MNX_EMBARK_SIGHT',						'MOD_MNX_ABIL_EMBARK_SIGHT'),
		('ABILITY_MNX_NAVAL_SIGHT',							'MOD_MNX_ABIL_NAVAL_SIGHT'),

		('ABILITY_MNX_SEA_MOVEMENT_1',						'MOD_MNX_ABIL_SEA_MOVEMENT_1'),
		('ABILITY_MNX_SEA_MOVEMENT_2',						'MOD_MNX_ABIL_SEA_MOVEMENT_2'),
		--('ABILITY_MNX_SEA_MOVEMENT_3',						'MOD_MNX_ABIL_SEA_MOVEMENT_3'),
		--('ABILITY_MNX_SEA_MOVEMENT_4',						'MOD_MNX_ABIL_SEA_MOVEMENT_4'),

		('ABILITY_MNX_RECON_MOVEMENT',						'MOD_MNX_ABIL_RECON_MOVEMENT'),
		('ABILITY_MNX_RECON_EMBARK_MOVEMENT',				'MOD_MNX_ABIL_RECON_EMBARK_MOVEMENT'),
		('ABILITY_MNX_RECON_COMBAT',						'MOD_MNX_ABIL_RECON_COMBAT'),
		('ABILITY_MNX_RECON_SIGHT',							'MOD_MNX_ABIL_RECON_SIGHT'),
		('ABILITY_MNX_RECON_EMBARK_SIGHT',					'MOD_MNX_ABIL_RECON_EMBARK_SIGHT'),
		('ABILITY_MNX_RECON_ATTACK_RANGE',					'MOD_MNX_ABIL_RECON_ATTACK_RANGE'),
		
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'MOD_MNX_ABIL_IGNORE_EMBARK_DISEMBARK_COST'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'MOD_MNX_ABIL_FIGHT_WHILE_EMBARKED'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL'),

		('ABILITY_MNX_CAPTURE_SHIPS',						'MOD_MNX_ABIL_CAPTURE_SHIPS'),
		
		('ABILITY_MNX_SEA_STRENGTH_1',						'MOD_MNX_ABIL_SEA_STRENGTH_1'),
		--('ABILITY_MNX_SEA_STRENGTH_2',						'MOD_MNX_ABIL_SEA_STRENGTH_2'),
		--('ABILITY_MNX_SEA_STRENGTH_3',						'MOD_MNX_ABIL_SEA_STRENGTH_3'),
		--('ABILITY_MNX_SEA_STRENGTH_4',						'MOD_MNX_ABIL_SEA_STRENGTH_4'),

		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',				'MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1');
		--('ABILITY_MNX_RELIGIOUS_STRENGTH_2',				'MOD_MNX_ABIL_RELIGIOUS_STRENGTH_2');




INSERT OR IGNORE INTO TypeTags
		(Type,												Tag)
VALUES	('ABILITY_MNX_COMBAT_STRENGTH',						'CLASS_ALL_COMBAT_UNITS'),

		('ABILITY_MNX_RELIGIOUS_STRENGTH_1',				'CLASS_RELIGIOUS_ALL'),
		--('ABILITY_MNX_RELIGIOUS_STRENGTH_2',				'CLASS_RELIGIOUS_ALL'),
		
		('ABILITY_MNX_ALL_MOVEMENT_1',						'CLASS_ALL_UNITS'),
		
		('ABILITY_MNX_RECON_MOVEMENT',						'CLASS_RECON'),
		('ABILITY_MNX_RECON_EMBARK_MOVEMENT',				'CLASS_RECON'),
		('ABILITY_MNX_RECON_COMBAT',						'CLASS_RECON'),
		('ABILITY_MNX_RECON_SIGHT',							'CLASS_RECON'),
		('ABILITY_MNX_RECON_EMBARK_SIGHT',					'CLASS_RECON'),
		('ABILITY_MNX_RECON_ATTACK_RANGE',					'CLASS_RECON'),
		
		/*('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_SUPPORT'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_RECON'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_MELEE'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_RANGED'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_SIEGE'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_LAND_UNITS_MOVEMENT_1',				'CLASS_RELIGIOUS_ALL'),*/

		/*('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_SUPPORT'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_EMBARK_COMBAT',						'CLASS_RELIGIOUS_ALL'),*/

		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_SUPPORT'),
		--('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_EMBARK_SIGHT',						'CLASS_RELIGIOUS_ALL'),

		('ABILITY_MNX_NAVAL_SIGHT',							'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_NAVAL_SIGHT',							'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_NAVAL_SIGHT',							'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_NAVAL_SIGHT',							'CLASS_NAVAL_CARRIER'),

		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_SUPPORT'),
		--('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_EMBARK_MOVEMENT_1',					'CLASS_RELIGIOUS_ALL'),
		
		/*('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_SUPPORT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_EMBARK_MOVEMENT_2',					'CLASS_RELIGIOUS_ALL'),

		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_SUPPORT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_EMBARK_MOVEMENT_3',					'CLASS_RELIGIOUS_ALL'),

		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_LANDCIVILIAN'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_SUPPORT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_RECON'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_MELEE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_RANGED'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_SIEGE'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_RANGED_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_ANTI_CAVALRY'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_HEAVY_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_LIGHT_CHARIOT'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_EMBARK_MOVEMENT_4',					'CLASS_RELIGIOUS_ALL'),*/
		
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
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'CLASS_RELIGIOUS_ALL'),
		
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
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_WARRIOR_MONK'),
		('ABILITY_MNX_FIGHT_WHILE_EMBARKED',				'CLASS_RELIGIOUS_ALL'),

		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_MOVEMENT_1',						'CLASS_NAVAL_CARRIER'),
		('ABILITY_MNX_SEA_MOVEMENT_2',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_MOVEMENT_2',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_MOVEMENT_2',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_MOVEMENT_2',						'CLASS_NAVAL_CARRIER'),
		/*('ABILITY_MNX_SEA_MOVEMENT_3',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_MOVEMENT_3',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_MOVEMENT_3',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_MOVEMENT_3',						'CLASS_NAVAL_CARRIER'),
		('ABILITY_MNX_SEA_MOVEMENT_4',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_MOVEMENT_4',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_MOVEMENT_4',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_MOVEMENT_4',						'CLASS_NAVAL_CARRIER'),*/

		('ABILITY_MNX_CAPTURE_SHIPS',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_CAPTURE_SHIPS',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_CAPTURE_SHIPS',						'CLASS_NAVAL_RANGED'),
		
		('ABILITY_MNX_SEA_STRENGTH_1',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_STRENGTH_1',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_STRENGTH_1',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_STRENGTH_1',						'CLASS_NAVAL_CARRIER'),
		/*('ABILITY_MNX_SEA_STRENGTH_2',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_STRENGTH_2',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_STRENGTH_2',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_STRENGTH_2',						'CLASS_NAVAL_CARRIER'),
		('ABILITY_MNX_SEA_STRENGTH_3',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_STRENGTH_3',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_STRENGTH_3',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_STRENGTH_3',						'CLASS_NAVAL_CARRIER'),
		('ABILITY_MNX_SEA_STRENGTH_4',						'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_SEA_STRENGTH_4',						'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_SEA_STRENGTH_4',						'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_SEA_STRENGTH_4',						'CLASS_NAVAL_CARRIER'),*/

		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_MELEE'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_RANGED'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_RAIDER'),
		('ABILITY_MNX_HEAL_NEUTRAL_TERRITORY',				'CLASS_NAVAL_CARRIER');


INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,										Permanent,		SubjectRequirementSetId)
VALUES	----------------------------------------------------------------------------------------------------------------------
		-- Grant Unit Abilities
		----------------------------------------------------------------------------------------------------------------------
		--('MOD_MNX_EMBARK_ALL_UNITS',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		--('MOD_MNX_UNLOCK_OCEAN',						'MODIFIER_PLAYER_UNITS_ADJUST_VALID_TERRAIN',		1,				NULL),
																											
		('MOD_MNX_ALL_MOVEMENT_1',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		--('MOD_MNX_LAND_UNITS_MOVEMENT_1',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
																											
		('MOD_MNX_EMBARK_MOVEMENT_1',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		--('MOD_MNX_EMBARK_MOVEMENT_2',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		--('MOD_MNX_EMBARK_MOVEMENT_3',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		--('MOD_MNX_EMBARK_MOVEMENT_4',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
																											
		('MOD_MNX_COMBAT_STRENGTH',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		--('MOD_MNX_EMBARK_COMBAT',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
																											
		('MOD_MNX_EMBARK_SIGHT',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		('MOD_MNX_NAVAL_SIGHT',							'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
																											
		('MOD_MNX_SEA_MOVEMENT_1',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		('MOD_MNX_SEA_MOVEMENT_2',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		--('MOD_MNX_SEA_MOVEMENT_3',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',			1,					NULL),
		--('MOD_MNX_SEA_MOVEMENT_4',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',			1,					NULL),
																											
		('MOD_MNX_RECON_MOVEMENT',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		('MOD_MNX_RECON_EMBARK_MOVEMENT',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		('MOD_MNX_RECON_COMBAT',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		('MOD_MNX_RECON_SIGHT',							'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		('MOD_MNX_RECON_EMBARK_SIGHT',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		('MOD_MNX_RECON_ATTACK_RANGE',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_HAS_TECH_ARCHERY'),
																											
		('MOD_MNX_WATER_TRADER_PROTECT',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_IS_TRADER_HAS_RELIGION'),
		('MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		('MOD_MNX_FIGHT_WHILE_EMBARKED',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
		('MOD_MNX_SHIP_HEAL_NEUTRAL',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				'REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION'),
																											
		('MOD_MNX_CAPTURE_SHIPS',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
																											
		('MOD_MNX_SEA_STRENGTH_1',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		--('MOD_MNX_SEA_STRENGTH_2',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',			1,					NULL),
		--('MOD_MNX_SEA_STRENGTH_3',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',			1,					NULL),
		--('MOD_MNX_SEA_STRENGTH_4',						'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',			1,					NULL),
																											
		('MOD_MNX_RELIGIOUS_STRENGTH_1',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
		--('MOD_MNX_RELIGIOUS_STRENGTH_2',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				1,				NULL),
																											
		----------------------------------------------------------------------------------------------------------			----------------
		-- Unit Abilities modifiers																			
		----------------------------------------------------------------------------------------------------------			----------------
		('MOD_MNX_ABIL_ALL_MOVEMENT_1',					'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',				1,				NULL),
		--('MOD_MNX_ABIL_LAND_UNITS_MOVEMENT_1',			'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',			1,					NULL),
																											
		('MOD_MNX_ABIL_EMBARK_MOVEMENT_1',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',				0,				'REQUIREMENTS_UNIT_IS_EMBARKED'),
		--('MOD_MNX_ABIL_EMBARK_MOVEMENT_2',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',			0,					'REQUIREMENTS_UNIT_IS_EMBARKED'),
		--('MOD_MNX_ABIL_EMBARK_MOVEMENT_3',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',			0,					'REQUIREMENTS_UNIT_IS_EMBARKED'),
		--('MOD_MNX_ABIL_EMBARK_MOVEMENT_4',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',			0,					'REQUIREMENTS_UNIT_IS_EMBARKED'),
																											
		('MOD_MNX_ABIL_COMBAT_STRENGTH',				'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				1,				NULL),
		--('MOD_MNX_ABIL_EMBARK_COMBAT',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			0,					'REQUIREMENTS_UNIT_IS_EMBARKED'),
																											
		('MOD_MNX_ABIL_EMBARK_SIGHT',					'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',				0,				'REQUIREMENTS_UNIT_IS_EMBARKED'),
		('MOD_MNX_ABIL_NAVAL_SIGHT',					'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',				1,				NULL),
																											
		('MOD_MNX_ABIL_SEA_MOVEMENT_1',					'MODIFIER_PLAYER_UNIT_ADJUST_SEA_MOVEMENT',			1,				NULL),
		('MOD_MNX_ABIL_SEA_MOVEMENT_2',					'MODIFIER_PLAYER_UNIT_ADJUST_SEA_MOVEMENT',			1,				NULL),
		--('MOD_MNX_ABIL_SEA_MOVEMENT_3',					'MODIFIER_PLAYER_UNIT_ADJUST_SEA_MOVEMENT',		1,					NULL),
		--('MOD_MNX_ABIL_SEA_MOVEMENT_4',					'MODIFIER_PLAYER_UNIT_ADJUST_SEA_MOVEMENT',		1,					NULL),
																											
		('MOD_MNX_ABIL_RECON_MOVEMENT',					'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',				1,				NULL),
		('MOD_MNX_ABIL_RECON_EMBARK_MOVEMENT',			'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',				0,				'REQUIREMENTS_UNIT_IS_EMBARKED'),
		('MOD_MNX_ABIL_RECON_COMBAT',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				1,				NULL),
		('MOD_MNX_ABIL_RECON_SIGHT',					'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',				1,				NULL),
		('MOD_MNX_ABIL_RECON_EMBARK_SIGHT',				'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',				0,				'REQUIREMENTS_UNIT_IS_EMBARKED'),
		('MOD_MNX_ABIL_RECON_ATTACK_RANGE',				'MODIFIER_UNIT_ADJUST_ATTACK_RANGE',				1,				NULL),
																											
		('MOD_MNX_ABIL_IGNORE_EMBARK_DISEMBARK_COST',	'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_SHORES',		1,				NULL),
		('MOD_MNX_ABIL_FIGHT_WHILE_EMBARKED',			'MODIFIER_SINGLE_UNIT_ADJUST_FIGHT_WHILE_EMBARKED',	1,				NULL),
		('MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL',				'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN',		1,				NULL),
																											
		('MOD_MNX_ABIL_CAPTURE_SHIPS',					'MODIFIER_UNIT_ADJUST_COMBAT_UNIT_CAPTURE',			1,				NULL),
																											
		('MOD_MNX_ABIL_SEA_STRENGTH_1',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				1,				NULL),
		--('MOD_MNX_ABIL_SEA_STRENGTH_2',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			1,					NULL),
		--('MOD_MNX_ABIL_SEA_STRENGTH_3',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			1,					NULL),
		--('MOD_MNX_ABIL_SEA_STRENGTH_4',					'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			1,					NULL),
																											
		('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				1,				NULL);
		--('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_2',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',				1,				NULL);


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-------------------------------------------------------------------------------------------------------------------------------------------------
		-- Grant Unit abilities
		-------------------------------------------------------------------------------------------------------------------------------------------------
		--('MOD_MNX_EMBARK_ALL_UNITS',					'AbilityType',				'ABILITY_MANA'),
		--('MOD_MNX_UNLOCK_OCEAN',						'TerrainType',				'TERRAIN_OCEAN'),
		--('MOD_MNX_UNLOCK_OCEAN',						'Valid',					'1'),

		('MOD_MNX_ALL_MOVEMENT_1',						'AbilityType',				'ABILITY_MNX_ALL_MOVEMENT_1'),
		--('MOD_MNX_LAND_UNITS_MOVEMENT_1',				'AbilityType',				'ABILITY_MNX_LAND_UNITS_MOVEMENT_1'),

		('MOD_MNX_EMBARK_MOVEMENT_1',					'AbilityType',				'ABILITY_MNX_EMBARK_MOVEMENT_1'),
		--('MOD_MNX_EMBARK_MOVEMENT_2',					'AbilityType',				'ABILITY_MNX_EMBARK_MOVEMENT_2'),
		--('MOD_MNX_EMBARK_MOVEMENT_3',					'AbilityType',				'ABILITY_MNX_EMBARK_MOVEMENT_3'),
		--('MOD_MNX_EMBARK_MOVEMENT_4',					'AbilityType',				'ABILITY_MNX_EMBARK_MOVEMENT_4'),

		('MOD_MNX_COMBAT_STRENGTH',						'AbilityType',				'ABILITY_MNX_COMBAT_STRENGTH'),
		--('MOD_MNX_EMBARK_COMBAT',						'AbilityType',				'ABILITY_MNX_EMBARK_COMBAT'),
		
		('MOD_MNX_EMBARK_SIGHT',						'AbilityType',				'ABILITY_MNX_EMBARK_SIGHT'),
		('MOD_MNX_NAVAL_SIGHT',							'AbilityType',				'ABILITY_MNX_NAVAL_SIGHT'),	

		('MOD_MNX_SEA_MOVEMENT_1',						'AbilityType',				'ABILITY_MNX_SEA_MOVEMENT_1'),
		('MOD_MNX_SEA_MOVEMENT_2',						'AbilityType',				'ABILITY_MNX_SEA_MOVEMENT_2'),
		--('MOD_MNX_SEA_MOVEMENT_3',						'AbilityType',				'ABILITY_MNX_SEA_MOVEMENT_3'),
		--('MOD_MNX_SEA_MOVEMENT_4',						'AbilityType',				'ABILITY_MNX_SEA_MOVEMENT_4'),

		('MOD_MNX_RECON_MOVEMENT',						'AbilityType',				'ABILITY_MNX_RECON_MOVEMENT'),
		('MOD_MNX_RECON_EMBARK_MOVEMENT',				'AbilityType',				'ABILITY_MNX_RECON_EMBARK_MOVEMENT'),
		('MOD_MNX_RECON_COMBAT',						'AbilityType',				'ABILITY_MNX_RECON_COMBAT'),
		('MOD_MNX_RECON_SIGHT',							'AbilityType',				'ABILITY_MNX_RECON_SIGHT'),	
		('MOD_MNX_RECON_EMBARK_SIGHT',					'AbilityType',				'ABILITY_MNX_RECON_EMBARK_SIGHT'),	
		('MOD_MNX_RECON_ATTACK_RANGE',					'AbilityType',				'ABILITY_MNX_RECON_ATTACK_RANGE'),	
		
		('MOD_MNX_WATER_TRADER_PROTECT',				'AbilityType',				'ABILITY_TRADE_ROUTE_PLUNDER_IMMUNITY_SEA'),
		('MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST',		'AbilityType',				'ABILITY_MNX_IGNORE_EMBARK_DISEMBARK_COST'),
		('MOD_MNX_FIGHT_WHILE_EMBARKED',				'AbilityType',				'ABILITY_MNX_FIGHT_WHILE_EMBARKED'),
		('MOD_MNX_SHIP_HEAL_NEUTRAL',					'AbilityType',				'ABILITY_MNX_HEAL_NEUTRAL_TERRITORY'),

		('MOD_MNX_CAPTURE_SHIPS',						'AbilityType',				'ABILITY_MNX_CAPTURE_SHIPS'),

		('MOD_MNX_SEA_STRENGTH_1',						'AbilityType',				'ABILITY_MNX_SEA_STRENGTH_1'),
		--('MOD_MNX_SEA_STRENGTH_2',						'AbilityType',				'ABILITY_MNX_SEA_STRENGTH_2'),
		--('MOD_MNX_SEA_STRENGTH_3',						'AbilityType',				'ABILITY_MNX_SEA_STRENGTH_3'),
		--('MOD_MNX_SEA_STRENGTH_4',						'AbilityType',				'ABILITY_MNX_SEA_STRENGTH_4'),

		('MOD_MNX_RELIGIOUS_STRENGTH_1',				'AbilityType',				'ABILITY_MNX_RELIGIOUS_STRENGTH_1'),
		--('MOD_MNX_RELIGIOUS_STRENGTH_2',				'AbilityType',				'ABILITY_MNX_RELIGIOUS_STRENGTH_2'),
		
		-------------------------------------------------------------------------------------------------------------------------------------------------
		-- Units Abilities
		-------------------------------------------------------------------------------------------------------------------------------------------------
		('MOD_MNX_ABIL_ALL_MOVEMENT_1',					'Amount',					'10'),
		--('MOD_MNX_ABIL_LAND_UNITS_MOVEMENT_1',			'Amount',					'1'),

		('MOD_MNX_ABIL_EMBARK_MOVEMENT_1',				'Amount',					'1'),
		--('MOD_MNX_ABIL_EMBARK_MOVEMENT_2',				'Amount',					'2'),
		--('MOD_MNX_ABIL_EMBARK_MOVEMENT_3',				'Amount',					'2'),
		--('MOD_MNX_ABIL_EMBARK_MOVEMENT_4',				'Amount',					'2'),

		('MOD_MNX_ABIL_COMBAT_STRENGTH',				'Amount',					'5'),
		--('MOD_MNX_ABIL_EMBARK_COMBAT',					'Amount',					'10'),  -- Doesn't work!

		('MOD_MNX_ABIL_EMBARK_SIGHT',					'Amount',					'1'),
		('MOD_MNX_ABIL_NAVAL_SIGHT',					'Amount',					'1'),		

		('MOD_MNX_ABIL_SEA_MOVEMENT_1',					'Amount',					'1'),
		('MOD_MNX_ABIL_SEA_MOVEMENT_2',					'Amount',					'1'),
		--('MOD_MNX_ABIL_SEA_MOVEMENT_3',					'Amount',					'2'),
		--('MOD_MNX_ABIL_SEA_MOVEMENT_4',					'Amount',					'2'),

		('MOD_MNX_ABIL_RECON_MOVEMENT',					'Amount',					'1'),
		('MOD_MNX_ABIL_RECON_EMBARK_MOVEMENT',			'Amount',					'2'),	-- Seems like we need to put +1 more to get 2 total. Doesn't stack on top of MOD_MNX_ABIL_RECON_MOVEMENT
		('MOD_MNX_ABIL_RECON_COMBAT',					'Amount',					'5'),
		('MOD_MNX_ABIL_RECON_SIGHT',					'Amount',					'1'),			
		('MOD_MNX_ABIL_RECON_EMBARK_SIGHT',				'Amount',					'1'),	-- Enable it for recon before player has a religion	
		('MOD_MNX_ABIL_RECON_ATTACK_RANGE',				'Amount',					'1'),		
		
		('MOD_MNX_ABIL_IGNORE_EMBARK_DISEMBARK_COST',	'Ignore',					'1'),
		('MOD_MNX_ABIL_FIGHT_WHILE_EMBARKED',			'CanFight',					'1'),
		('MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL',				'Type',						'NEUTRAL'),
		('MOD_MNX_ABIL_SHIP_HEAL_NEUTRAL',				'Amount',					'10'),

		('MOD_MNX_ABIL_CAPTURE_SHIPS',					'CanCapture',				'1'),

		('MOD_MNX_ABIL_SEA_STRENGTH_1',					'Amount',					'5'),
		--('MOD_MNX_ABIL_SEA_STRENGTH_2',					'Amount',					'3'),
		--('MOD_MNX_ABIL_SEA_STRENGTH_3',					'Amount',					'3'),
		--('MOD_MNX_ABIL_SEA_STRENGTH_4',					'Amount',					'3'),

		('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_1',			'Amount',					'5');
		--('MOD_MNX_ABIL_RELIGIOUS_STRENGTH_2',			'Amount',					'5');



---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,					ModifierId) 
VALUES	-- Units Abilities
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',			'MOD_MNX_ALL_MOVEMENT_1'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_LAND_UNITS_MOVEMENT_1'),

		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_EMBARK_MOVEMENT_1'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_EMBARK_MOVEMENT_2'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_EMBARK_MOVEMENT_3'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_EMBARK_MOVEMENT_4'),

		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_COMBAT_STRENGTH'),
		--('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_EMBARK_COMBAT'),

		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_EMBARK_SIGHT'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_NAVAL_SIGHT'),			

		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_SEA_MOVEMENT_1'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_SEA_MOVEMENT_2'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SEA_MOVEMENT_3'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SEA_MOVEMENT_4'),

		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_RECON_MOVEMENT'),
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_RECON_EMBARK_MOVEMENT'),
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_RECON_COMBAT'),
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_RECON_SIGHT'),		
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_RECON_EMBARK_SIGHT'),		
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_RECON_ATTACK_RANGE'),  -- Doesn't work!

		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_EMBARK_ALL_UNITS'),  -- now works! But it also gives extra embarked movement from other mana modifiers
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_UNLOCK_OCEAN'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',			'MOD_MNX_IGNORE_EMBARK_DISEMBARK_COST'),
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_FIGHT_WHILE_EMBARKED'),		
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_SHIP_HEAL_NEUTRAL'),
		
		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_WATER_TRADER_PROTECT'),

		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_CAPTURE_SHIPS'),
		
		('TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER',		'MOD_MNX_SEA_STRENGTH_1'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SEA_STRENGTH_2'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SEA_STRENGTH_3'),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_SEA_STRENGTH_4'),

		('TRAIT_LEADER_MNX_THE_GODS_ARE_WITH_US',		'MOD_MNX_RELIGIOUS_STRENGTH_1');
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_RELIGIOUS_STRENGTH_2');



---------------------------------------------------------------------------------------------
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
SELECT	'TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'MOD_MNX_EMBARK_'||UnitType
FROM	Units	
WHERE Domain='DOMAIN_LAND';

