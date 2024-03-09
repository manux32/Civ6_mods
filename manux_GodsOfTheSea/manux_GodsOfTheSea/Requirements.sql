-- Requirements
-- Author: manux
-- DateCreated: 3/8/2024 11:18:56 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('REQSR_MNX_PLOT_HAS_WATER',					'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_WATER_ADJACENCY',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_UNIT_IS_TRADER',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_HOLYSITE',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_HARBOR',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_COMHUB',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_CAMPUS',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_THEATER',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_INDZONE',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CITY_HAS_GOLD_DISTRICT',			'REQUIREMENTSET_TEST_ANY'),

		('REQSR_MNX_IS_HOLYSITE_HAS_CAMPUS',			'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HOLYSITE_HAS_THEATER',			'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HOLYSITE_HAS_GOLD_DISTRICT',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HOLYSITE_HAS_INDZONE',			'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_IS_HARBOR_HAS_CAMPUS',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HARBOR_HAS_THEATER',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HARBOR_HAS_HOLYSITE',			'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HARBOR_HAS_INDZONE',				'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_HAS_TECH_SHIPBUILDING',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_HAS_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_HAS_ADJ_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_DISTRICT_ADJ_TO_HOLYSITE',			'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_DISTRICT_ADJ_TO_HARBOR',			'REQUIREMENTSET_TEST_ALL');


INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('REQSR_MNX_PLOT_HAS_WATER',					'REQUIRES_TERRAIN_COAST'),
		('REQSR_MNX_PLOT_HAS_WATER',					'REQUIRES_TERRAIN_OCEAN'),
		('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQ_MNX_UNIT_IS_MISSIONARY'),
		('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQ_MNX_UNIT_IS_APOSTLE'),
		('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQ_MNX_UNIT_IS_INQUISITOR'),
		('REQSR_MNX_WATER_ADJACENCY',					'REQ_MNX_PLOT_HAS_ANY_DISTRICT'),
		('REQSR_MNX_WATER_ADJACENCY',					'REQUIRES_PLOT_IS_ADJACENT_TO_COAST'),
		--('REQSR_MNX_WATER_ADJACENCY',					'REQUIRES_PLOT_HAS_NOT_COAST'), -- I walso want some from water districts
		('REQSR_MNX_UNIT_IS_TRADER',					'REQUIRES_UNIT_IS_TRADER'),
		('REQSR_MNX_CITY_HAS_HOLYSITE',					'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_CITY_HAS_HARBOR',					'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_CITY_HAS_COMHUB',					'REQUIRES_CITY_HAS_COMMERCIAL_HUB'),
		('REQSR_MNX_CITY_HAS_CAMPUS',					'REQUIRES_CITY_HAS_CAMPUS'),
		('REQSR_MNX_CITY_HAS_THEATER',					'REQUIRES_CITY_HAS_THEATER_DISTRICT'),
		('REQSR_MNX_CITY_HAS_INDZONE',					'REQUIRES_CITY_HAS_INDUSTRIAL_ZONE'),
		('REQSR_MNX_CITY_HAS_GOLD_DISTRICT',			'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_CITY_HAS_GOLD_DISTRICT',			'REQUIRES_CITY_HAS_COMMERCIAL_HUB'),

		('REQSR_MNX_IS_HOLYSITE_HAS_CAMPUS',			'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_HAS_CAMPUS',			'REQUIRES_CITY_HAS_CAMPUS'),
		('REQSR_MNX_IS_HOLYSITE_HAS_THEATER',			'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_HAS_THEATER',			'REQUIRES_CITY_HAS_THEATER_DISTRICT'),
		('REQSR_MNX_IS_HOLYSITE_HAS_GOLD_DISTRICT',		'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_HAS_GOLD_DISTRICT',		'REQ_MNX_CITY_HAS_GOLD_DISTRICT'),
		('REQSR_MNX_IS_HOLYSITE_HAS_INDZONE',			'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_HAS_INDZONE',			'REQUIRES_CITY_HAS_INDUSTRIAL_ZONE'),

		('REQSR_MNX_IS_HARBOR_HAS_CAMPUS',				'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_HAS_CAMPUS',				'REQUIRES_CITY_HAS_CAMPUS'),
		('REQSR_MNX_IS_HARBOR_HAS_THEATER',				'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_HAS_THEATER',				'REQUIRES_CITY_HAS_THEATER_DISTRICT'),
		('REQSR_MNX_IS_HARBOR_HAS_HOLYSITE',			'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_HAS_HOLYSITE',			'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_IS_HARBOR_HAS_INDZONE',				'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_HAS_INDZONE',				'REQUIRES_CITY_HAS_INDUSTRIAL_ZONE'),

		('REQSR_MNX_HAS_TECH_SHIPBUILDING',				'PLAYER_HAS_TECH_SHIPBUILDING'),
		('REQSR_MNX_PLOT_HAS_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_PLOT_HAS_ADJ_HARBOR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_DISTRICT_ADJ_TO_HOLYSITE',			'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_DISTRICT_ADJ_TO_HOLYSITE',			'REQ_MNX_PLOT_HAS_ANY_DISTRICT'),
		('REQSR_MNX_DISTRICT_ADJ_TO_HARBOR',			'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_DISTRICT_ADJ_TO_HARBOR',			'REQ_MNX_PLOT_HAS_ANY_DISTRICT');


INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQ_MNX_PLOT_HAS_ANY_DISTRICT',				'REQUIREMENT_PLOT_HAS_ANY_DISTRICT'),						
		('REQ_MNX_UNIT_IS_MISSIONARY',					'REQUIREMENT_UNIT_TYPE_MATCHES'),							
		('REQ_MNX_UNIT_IS_APOSTLE',						'REQUIREMENT_UNIT_TYPE_MATCHES'),							
		('REQ_MNX_UNIT_IS_INQUISITOR',					'REQUIREMENT_UNIT_TYPE_MATCHES'),							
		('REQ_MNX_PLOT_ADJ_TO_HARBOR',					'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),			
		('REQ_MNX_PLOT_ADJ_TO_HOLYSITE',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'),			
		('REQ_MNX_CITY_HAS_GOLD_DISTRICT',				'REQUIREMENT_REQUIREMENTSET_IS_MET');						

/* -- If I need to invert a condition
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType,											Inverse)
VALUES	('REQ_MNX_PLOT_HAS_ANY_DISTRICT',				'REQUIREMENT_PLOT_HAS_ANY_DISTRICT',						0),
*/

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,							Name,						Value)
VALUES	('REQ_MNX_UNIT_IS_MISSIONARY',			'UnitType',					'UNIT_MISSIONARY'),
		('REQ_MNX_UNIT_IS_APOSTLE',				'UnitType',					'UNIT_APOSTLE'),
		('REQ_MNX_UNIT_IS_INQUISITOR',			'UnitType',					'UNIT_INQUISITOR'),
		('REQ_MNX_PLOT_ADJ_TO_HARBOR',			'DistrictType',				'DISTRICT_HARBOR'),
		('REQ_MNX_PLOT_ADJ_TO_HOLYSITE',		'DistrictType',				'DISTRICT_HOLY_SITE'),
		('REQ_MNX_CITY_HAS_GOLD_DISTRICT',		'RequirementSetId',			'REQSR_MNX_CITY_HAS_GOLD_DISTRICT');