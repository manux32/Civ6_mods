-- DistrictsAdjacency
-- Author: manux
-- DateCreated: 3/3/2024 4:16:58 PM
--------------------------------------------------------------

-- OP_Player
-- Author: manux
-- DateCreated: 3/2/2024 7:48:37 PM
--------------------------------------------------------------

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId)
VALUES -- marche pas très bien. Estimés de tacks pas rapport, et semble aussi booster montagnes, etc...
	   ('MOD_MNX_ADJ_HOLYSITE',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',					'PLAYER_IS_HUMAN'),
	   ('MOD_MNX_ADJ_CAMPUS',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',					'PLAYER_IS_HUMAN'),
	   ('MOD_MNX_ADJ_HARBOR',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',					'PLAYER_IS_HUMAN'),
	   ('MOD_MNX_ADJ_COMHUB',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',					'PLAYER_IS_HUMAN'),
	   ('MOD_MNX_ADJ_THEATER',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',					'PLAYER_IS_HUMAN'),
	   ('MOD_MNX_ADJ_INDZONE',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',					'PLAYER_IS_HUMAN');


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	('MOD_MNX_ADJ_HOLYSITE',						'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_ADJ_HOLYSITE',						'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_ADJ_HOLYSITE',						'Amount',					'1'),
		('MOD_MNX_ADJ_CAMPUS',							'DistrictType',				'DISTRICT_CAMPUS'),
		('MOD_MNX_ADJ_CAMPUS',							'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_ADJ_CAMPUS',							'Amount',					'1'),
		('MOD_MNX_ADJ_HARBOR',							'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_ADJ_HARBOR',							'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_ADJ_HARBOR',							'Amount',					'1'),
		('MOD_MNX_ADJ_COMHUB',							'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
		('MOD_MNX_ADJ_COMHUB',							'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_ADJ_COMHUB',							'Amount',					'1'),
		('MOD_MNX_ADJ_THEATER',							'DistrictType',				'DISTRICT_THEATER'),
		('MOD_MNX_ADJ_THEATER',							'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_ADJ_THEATER',							'Amount',					'1'),
		('MOD_MNX_ADJ_INDZONE',							'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'),
		('MOD_MNX_ADJ_INDZONE',							'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_ADJ_INDZONE',							'Amount',					'1');


INSERT OR IGNORE INTO TraitModifiers 
		(TraitType, ModifierId) 
VALUES	('TRAIT_LEADER_MAJOR_CIV', 'MOD_MNX_ADJ_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV', 'MOD_MNX_ADJ_CAMPUS'),
		('TRAIT_LEADER_MAJOR_CIV', 'MOD_MNX_ADJ_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV', 'MOD_MNX_ADJ_COMHUB'),
		('TRAIT_LEADER_MAJOR_CIV', 'MOD_MNX_ADJ_THEATER'),
		('TRAIT_LEADER_MAJOR_CIV', 'MOD_MNX_ADJ_INDZONE');

		