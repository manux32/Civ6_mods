-- MNX_Requirements
-- Author: manux
-- DateCreated: 3/8/2024 11:18:56 PM
--------------------------------------------------------------

INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('REQSR_MNX_PLOT_HAS_WATER',					'REQUIREMENTSET_TEST_ANY'),
		--('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQUIREMENTSET_TEST_ALL'),
		--('REQSR_MNX_UNIT_IS_TRADER',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_UNIT_IS_RECON',						'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_CITY_HAS_TIER1_HOLY_BUILDING',		'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_CITY_HAS_TIER2_HOLY_BUILDING',		'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_CITY_HAS_TIER3_HOLY_BUILDING',		'REQUIREMENTSET_TEST_ANY'),

		('REQSR_MNX_CITY_HAS_TIER1_HARBOR_BUILDING',	'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_CITY_HAS_TIER2_HARBOR_BUILDING',	'REQUIREMENTSET_TEST_ANY'),
		('REQSR_MNX_CITY_HAS_TIER3_HARBOR_BUILDING',	'REQUIREMENTSET_TEST_ANY'),

		('REQSR_MNX_PLOT_HAS_ANY_DISTRICT',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_ADJ_TO_WATER',					'REQUIREMENTSET_TEST_ANY'),

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

		('REQSR_MNX_PLOT_HAS_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_HAS_ADJ_HARBOR',				'REQUIREMENTSET_TEST_ALL'),

		-------------------------------------------------------------------------------
		('REQSR_MNX_PLOT_HAS_ADJ_HS_OR_HR',				'REQUIREMENTSET_TEST_ANY'),

		('REQSR_MNX_PLOT_HAS_NOT_CITY_CENTER',			'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_HOLYSITE_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_HARBOR_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_COMHUB_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CAMPUS_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_THEATER_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_INDZONE_ADJ_HOLYSITE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_WATERFRONT_ADJ_HOLYSITE',			'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_HOLYSITE_ADJ_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_HARBOR_ADJ_HARBOR',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_COMHUB_ADJ_HARBOR',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_CAMPUS_ADJ_HARBOR',					'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_THEATER_ADJ_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_INDZONE_ADJ_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_WATERFRONT_ADJ_HARBOR',				'REQUIREMENTSET_TEST_ALL'),
		
		-------------------------------------------------------------------------------

		('REQSR_MNX_IS_HOLYSITE_W_TIER1_BUILDING',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER2_BUILDING',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER3_BUILDING',		'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_IS_HARBOR_W_TIER1_BUILDING',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HARBOR_W_TIER2_BUILDING',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_IS_HARBOR_W_TIER3_BUILDING',		'REQUIREMENTSET_TEST_ALL'),

		-------------------------------------------------------------------------------
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER1',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER2',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER3',		'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER1',	'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER2',	'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER3',	'REQUIREMENTSET_TEST_ALL'),
		
		('REQSR_MNX_PLOT_IS_WATER_HAS_RELIGION',		'REQUIREMENTSET_TEST_ALL'),

		-------------------------------------------------------------------------------
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING',		'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING',		'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING',	'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING',	'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING',	'REQUIREMENTSET_TEST_ALL'),
		
		('REQSR_MNX_HAS_TECH_SHIPBLD_AND_REL',			'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_HAS_CIVIC_MERCANT_AND_REL',			'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_HAS_TECH_ELEC_AND_REL',				'REQUIREMENTSET_TEST_ALL'),
		('REQSR_MNX_HAS_TECH_ARCHERY',					'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION',		'REQUIREMENTSET_TEST_ALL'),

		('REQSR_MNX_IS_TRADER_HAS_RELIGION',			'REQUIREMENTSET_TEST_ALL'),
		
		('REQSR_MNX_CIV_NOT_JAPAN',						'REQUIREMENTSET_TEST_ALL');


INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	--('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQ_MNX_UNIT_IS_MISSIONARY'),
		--('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQ_MNX_UNIT_IS_APOSTLE'),
		--('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQ_MNX_UNIT_IS_INQUISITOR'),
		('REQSR_MNX_UNIT_IS_RELIGIOUS',					'REQUIRES_UNIT_IS_RELIGIOUS_ALL'),
		--('REQSR_MNX_UNIT_IS_TRADER',					'REQUIRES_UNIT_IS_TRADER'),
		('REQSR_MNX_UNIT_IS_RECON',						'REQ_MNX_UNIT_IS_RECON_CLASS'),

		('REQSR_MNX_PLOT_HAS_WATER',					'REQUIRES_TERRAIN_COAST'),
		('REQSR_MNX_PLOT_HAS_WATER',					'REQUIRES_TERRAIN_OCEAN'),

		--('REQSR_MNX_PLOT_ADJ_TO_WATER',				'REQUIRES_PLOT_HAS_NOT_COAST'),			-- I also want some amenity from water districts
		--('REQSR_MNX_PLOT_ADJ_TO_WATER',				'REQUIRES_PLOT_ADJACENT_TO_COAST'),		-- Seems to make it test multiple times (with Building Modifiers I think), and get 1 amenity per adjacent water tile
		--('REQSR_MNX_PLOT_ADJ_TO_WATER',				'REQUIRES_PLOT_IS_ADJACENT_TO_COAST'),
		--('REQSR_MNX_PLOT_ADJ_TO_WATER',				'REQUIRES_PLOT_ADJACENT_TO_LAKE'),
		('REQSR_MNX_PLOT_ADJ_TO_WATER',					'REQ_MNX_PLOT_ADJ_TO_COAST'),
		('REQSR_MNX_PLOT_ADJ_TO_WATER',					'REQ_MNX_PLOT_ADJ_TO_OCEAN'),
		('REQSR_MNX_PLOT_ADJ_TO_WATER',					'REQUIRES_PLOT_ADJACENT_TO_LAKE'),
		
		('REQSR_MNX_PLOT_HAS_ANY_DISTRICT',				'REQ_MNX_PLOT_HAS_ANY_DISTRICT'),

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

		('REQSR_MNX_PLOT_HAS_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_PLOT_HAS_ADJ_HARBOR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		
		---------------------------------------------------------------------------------------
		('REQSR_MNX_PLOT_HAS_ADJ_HS_OR_HR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_PLOT_HAS_ADJ_HS_OR_HR',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),

		('REQSR_MNX_PLOT_HAS_NOT_CITY_CENTER',			'REQ_MNX_PLOT_HAS_NOT_CITY_CENTER'),

		('REQSR_MNX_HOLYSITE_ADJ_HOLYSITE',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_HOLYSITE_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_HARBOR_ADJ_HOLYSITE',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_HARBOR_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_COMHUB_ADJ_HOLYSITE',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_COMHUB_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_CAMPUS_ADJ_HOLYSITE',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_CAMPUS_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_THEATER_ADJ_HOLYSITE',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_THEATER_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_INDZONE_ADJ_HOLYSITE',				'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_INDZONE_ADJ_HOLYSITE',				'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_WATERFRONT_ADJ_HOLYSITE',			'REQUIRES_CITY_HAS_HOLY_SITE'),
		('REQSR_MNX_WATERFRONT_ADJ_HOLYSITE',			'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),

		('REQSR_MNX_HOLYSITE_ADJ_HARBOR',				'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_HOLYSITE_ADJ_HARBOR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_HARBOR_ADJ_HARBOR',					'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_HARBOR_ADJ_HARBOR',					'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_COMHUB_ADJ_HARBOR',					'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_COMHUB_ADJ_HARBOR',					'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_CAMPUS_ADJ_HARBOR',					'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_CAMPUS_ADJ_HARBOR',					'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_THEATER_ADJ_HARBOR',				'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_THEATER_ADJ_HARBOR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_INDZONE_ADJ_HARBOR',				'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_INDZONE_ADJ_HARBOR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_WATERFRONT_ADJ_HARBOR',				'REQUIRES_CITY_HAS_HARBOR'),
		('REQSR_MNX_WATERFRONT_ADJ_HARBOR',				'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		
		---------------------------------------------------------------------------------------
		-- Bonus HS and HR Food
		('REQSR_MNX_IS_HOLYSITE_W_TIER1_BUILDING',		'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER1_BUILDING',		'REQ_MNX_CITY_HAS_TIER1_HOLY_BUILDING'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER2_BUILDING',		'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER2_BUILDING',		'REQ_MNX_CITY_HAS_TIER2_HOLY_BUILDING'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER3_BUILDING',		'REQUIRES_DISTRICT_IS_HOLY_SITE'),
		('REQSR_MNX_IS_HOLYSITE_W_TIER3_BUILDING',		'REQ_MNX_CITY_HAS_TIER3_HOLY_BUILDING'),

		('REQSR_MNX_IS_HARBOR_W_TIER1_BUILDING',		'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_W_TIER1_BUILDING',		'REQ_MNX_CITY_HAS_TIER1_HARBOR_BUILDING'),
		('REQSR_MNX_IS_HARBOR_W_TIER2_BUILDING',		'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_W_TIER2_BUILDING',		'REQ_MNX_CITY_HAS_TIER2_HARBOR_BUILDING'),
		('REQSR_MNX_IS_HARBOR_W_TIER3_BUILDING',		'REQUIRES_DISTRICT_IS_HARBOR'),
		('REQSR_MNX_IS_HARBOR_W_TIER3_BUILDING',		'REQ_MNX_CITY_HAS_TIER3_HARBOR_BUILDING'),

		---------------------------------------------------------------------------------------
		-- Water yields
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER1',		'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER1',		'REQ_MNX_CITY_HAS_TIER1_HOLY_BUILDING'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER2',		'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER2',		'REQ_MNX_CITY_HAS_TIER2_HOLY_BUILDING'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER3',		'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER3',		'REQ_MNX_CITY_HAS_TIER3_HOLY_BUILDING'),

		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER1',	'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER1',	'REQ_MNX_CITY_HAS_TIER1_HARBOR_BUILDING'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER2',	'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER2',	'REQ_MNX_CITY_HAS_TIER2_HARBOR_BUILDING'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER3',	'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER3',	'REQ_MNX_CITY_HAS_TIER3_HARBOR_BUILDING'),

		('REQSR_MNX_PLOT_IS_WATER_HAS_RELIGION',		'REQ_MNX_PLOT_IS_WATER'),
		('REQSR_MNX_PLOT_IS_WATER_HAS_RELIGION',		'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION'),

		---------------------------------------------------------------------------------------
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING',		'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING',		'REQ_MNX_CITY_HAS_TIER1_HOLY_BUILDING'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING',		'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING',		'REQ_MNX_CITY_HAS_TIER2_HOLY_BUILDING'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING',		'REQ_MNX_PLOT_ADJ_TO_HOLYSITE'),
		('REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING',		'REQ_MNX_CITY_HAS_TIER3_HOLY_BUILDING'),

		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING',	'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING',	'REQ_MNX_CITY_HAS_TIER1_HARBOR_BUILDING'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING',	'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING',	'REQ_MNX_CITY_HAS_TIER2_HARBOR_BUILDING'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING',	'REQ_MNX_PLOT_ADJ_TO_HARBOR'),
		('REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING',	'REQ_MNX_CITY_HAS_TIER3_HARBOR_BUILDING'),
		
		---------------------------------------------------------------------------------------
		('REQSR_MNX_HAS_TECH_SHIPBLD_AND_REL',			'PLAYER_HAS_TECH_SHIPBUILDING'),
		('REQSR_MNX_HAS_TECH_SHIPBLD_AND_REL',			'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION'),
		('REQSR_MNX_HAS_CIVIC_MERCANT_AND_REL',			'REQUIRES_PLAYER_HAS_MERCANTILISM'),
		('REQSR_MNX_HAS_CIVIC_MERCANT_AND_REL',			'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION'),
		('REQSR_MNX_HAS_TECH_ELEC_AND_REL',				'PLAYER_HAS_TECH_ELECTRICITY'),
		('REQSR_MNX_HAS_TECH_ELEC_AND_REL',				'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION'),

		('REQSR_MNX_HAS_TECH_ARCHERY',					'REQ_MNX_HAS_TECH_ARCHERY'),

		('REQSR_MNX_PLAYER_HAS_FOUNDED_RELIGION',		'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION'),

		('REQSR_MNX_IS_TRADER_HAS_RELIGION',			'REQUIRES_UNIT_IS_TRADER'),
		('REQSR_MNX_IS_TRADER_HAS_RELIGION',			'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION'),

		('REQSR_MNX_CIV_NOT_JAPAN',						'REQ_MNX_CIV_NOT_JAPAN');


INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType,										Inverse)
VALUES	('REQ_MNX_UNIT_IS_RECON_CLASS',					'REQUIREMENT_UNIT_TAG_MATCHES',							0),
		
		('REQ_MNX_PLOT_HAS_ANY_DISTRICT',				'REQUIREMENT_PLOT_HAS_ANY_DISTRICT',					0),						
		--('REQ_MNX_UNIT_IS_MISSIONARY',					'REQUIREMENT_UNIT_TYPE_MATCHES',						0),							
		--('REQ_MNX_UNIT_IS_APOSTLE',						'REQUIREMENT_UNIT_TYPE_MATCHES',						0),							
		--('REQ_MNX_UNIT_IS_INQUISITOR',					'REQUIREMENT_UNIT_TYPE_MATCHES',						0),							
		('REQ_MNX_PLOT_ADJ_TO_HARBOR',					'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',		0),			
		('REQ_MNX_PLOT_ADJ_TO_HOLYSITE',				'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',		0),	
		
		('REQ_MNX_HAS_TECH_ARCHERY',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY',					0),	
		
		------------------------------------------------------------------------------------------------------------------
		('REQ_MNX_PLOT_ADJ_TO_HS_OR_HR',				'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),	

		('REQ_MNX_DISTRICT_IS_WATERFRONT',				'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0),	

		('REQ_MNX_PLOT_HAS_NOT_CITY_CENTER',			'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				1),	

		('REQ_MNX_PLOT_HAS_HOLYSITE',					'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	
		('REQ_MNX_PLOT_HAS_HARBOR',						'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	
		('REQ_MNX_PLOT_HAS_COMHUB',						'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	
		('REQ_MNX_PLOT_HAS_CAMPUS',						'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	
		('REQ_MNX_PLOT_HAS_THEATER',					'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	
		('REQ_MNX_PLOT_HAS_INDZONE',					'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	
		('REQ_MNX_PLOT_HAS_WATERFRONT',					'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES',				0),	

		
		('REQ_MNX_PLOT_IS_WATER',						'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),	
		
		------------------------------------------------------------------------------------------------------------------
				
		('REQ_MNX_CITY_HAS_GOLD_DISTRICT',				'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),

		('REQ_MNX_CITY_HAS_TIER1_HOLY_BUILDING',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('REQ_MNX_CITY_HAS_TIER2_HOLY_BUILDING',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('REQ_MNX_CITY_HAS_TIER3_HOLY_BUILDING',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),

		('REQ_MNX_CITY_HAS_TIER1_HARBOR_BUILDING',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('REQ_MNX_CITY_HAS_TIER2_HARBOR_BUILDING',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('REQ_MNX_CITY_HAS_TIER3_HARBOR_BUILDING',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),

		('REQ_MNX_PLOT_ADJ_TO_COAST',					'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES',		0),
		('REQ_MNX_PLOT_ADJ_TO_OCEAN',					'REQUIREMENT_PLOT_ADJACENT_TERRAIN_TYPE_MATCHES',		0),

		('REQ_MNX_PLOT_ADJ_TO_WATER',					'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		
		('REQ_MNX_CIV_NOT_JAPAN',						'REQUIREMENT_PLAYER_TYPE_MATCHES',						1);						


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,								Name,						Value)
VALUES	('REQ_MNX_UNIT_IS_RECON_CLASS',				'Tag',						'CLASS_RECON'),
		--('REQ_MNX_UNIT_IS_MISSIONARY',				'UnitType',					'UNIT_MISSIONARY'),
		--('REQ_MNX_UNIT_IS_APOSTLE',					'UnitType',					'UNIT_APOSTLE'),
		--('REQ_MNX_UNIT_IS_INQUISITOR',				'UnitType',					'UNIT_INQUISITOR'),
		('REQ_MNX_PLOT_ADJ_TO_HARBOR',				'DistrictType',				'DISTRICT_HARBOR'),
		('REQ_MNX_PLOT_ADJ_TO_HOLYSITE',			'DistrictType',				'DISTRICT_HOLY_SITE'),

		('REQ_MNX_HAS_TECH_ARCHERY',				'TechnologyType',			'TECH_ARCHERY'),
		------------------------------------------------------------------------------------------------------------------
		('REQ_MNX_PLOT_ADJ_TO_HS_OR_HR',			'RequirementSetId',			'REQSR_MNX_PLOT_HAS_ADJ_HS_OR_HR'),
		
		('REQ_MNX_DISTRICT_IS_WATERFRONT',			'DistrictType',				'DISTRICT_WATERFRONT'),

		('REQ_MNX_PLOT_HAS_NOT_CITY_CENTER',		'DistrictType',				'DISTRICT_CITY_CENTER'),

		('REQ_MNX_PLOT_HAS_HOLYSITE',				'DistrictType',				'DISTRICT_HOLY_SITE'),
		('REQ_MNX_PLOT_HAS_HARBOR',					'DistrictType',				'DISTRICT_HARBOR'),
		('REQ_MNX_PLOT_HAS_COMHUB',					'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
		('REQ_MNX_PLOT_HAS_CAMPUS',					'DistrictType',				'DISTRICT_CAMPUS'),
		('REQ_MNX_PLOT_HAS_THEATER',				'DistrictType',				'DISTRICT_THEATER'),
		('REQ_MNX_PLOT_HAS_INDZONE',				'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'),
		('REQ_MNX_PLOT_HAS_WATERFRONT',				'DistrictType',				'DISTRICT_WATERFRONT'),

		('REQ_MNX_PLOT_IS_WATER',					'RequirementSetId',			'REQSR_MNX_PLOT_HAS_WATER'),

		------------------------------------------------------------------------------------------------------------------

		('REQ_MNX_CITY_HAS_GOLD_DISTRICT',			'RequirementSetId',			'REQSR_MNX_CITY_HAS_GOLD_DISTRICT'),

		('REQ_MNX_CITY_HAS_TIER1_HOLY_BUILDING',	'RequirementSetId',			'REQSR_MNX_CITY_HAS_TIER1_HOLY_BUILDING'),
		('REQ_MNX_CITY_HAS_TIER2_HOLY_BUILDING',	'RequirementSetId',			'REQSR_MNX_CITY_HAS_TIER2_HOLY_BUILDING'),
		('REQ_MNX_CITY_HAS_TIER3_HOLY_BUILDING',	'RequirementSetId',			'REQSR_MNX_CITY_HAS_TIER3_HOLY_BUILDING'),

		('REQ_MNX_CITY_HAS_TIER1_HARBOR_BUILDING',	'RequirementSetId',			'REQSR_MNX_CITY_HAS_TIER1_HARBOR_BUILDING'),
		('REQ_MNX_CITY_HAS_TIER2_HARBOR_BUILDING',	'RequirementSetId',			'REQSR_MNX_CITY_HAS_TIER2_HARBOR_BUILDING'),
		('REQ_MNX_CITY_HAS_TIER3_HARBOR_BUILDING',	'RequirementSetId',			'REQSR_MNX_CITY_HAS_TIER3_HARBOR_BUILDING'),

		('REQ_MNX_PLOT_ADJ_TO_COAST',				'TerrainType',				'TERRAIN_COAST'),
		('REQ_MNX_PLOT_ADJ_TO_OCEAN',				'TerrainType',				'TERRAIN_OCEAN'),

		('REQ_MNX_PLOT_ADJ_TO_WATER',				'RequirementSetId',			'REQSR_MNX_PLOT_ADJ_TO_WATER'),

		('REQ_MNX_CIV_NOT_JAPAN',					'CivilizationType',			'CIVILIZATION_JAPAN');


-- City has Tier 1 Holy building 
INSERT OR IGNORE INTO RequirementSetRequirements 
			(RequirementSetId,								RequirementId)
SELECT		'REQSR_MNX_CITY_HAS_TIER1_HOLY_BUILDING',		'REQ_MNX_CITY_HAS_'||BuildingType
FROM		Buildings
WHERE		(PrereqDistrict='DISTRICT_HOLY_SITE') AND (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs));

INSERT OR IGNORE INTO Requirements 
			(RequirementId,							RequirementType)
SELECT		'REQ_MNX_CITY_HAS_'||BuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM		Buildings
WHERE		(PrereqDistrict='DISTRICT_HOLY_SITE') AND (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs));

INSERT OR IGNORE INTO RequirementArguments 
			(RequirementId,							Name,				Value)
SELECT		'REQ_MNX_CITY_HAS_'||BuildingType,		'BuildingType',		BuildingType
FROM		Buildings
WHERE		(PrereqDistrict='DISTRICT_HOLY_SITE') AND (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs));


-- City has Tier 2 Holy building 
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId,								RequirementId)
VALUES	('REQSR_MNX_CITY_HAS_TIER2_HOLY_BUILDING',		'REQ_MNX_CITY_HAS_BUILDING_TEMPLE');

INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQ_MNX_CITY_HAS_BUILDING_TEMPLE',			'REQUIREMENT_CITY_HAS_BUILDING');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,							Name,						Value)
VALUES	('REQ_MNX_CITY_HAS_BUILDING_TEMPLE',			'BuildingType',				'BUILDING_TEMPLE');


INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId,								RequirementId)
SELECT	'REQSR_MNX_CITY_HAS_TIER2_HOLY_BUILDING',		'REQ_MNX_CITY_HAS_'||CivUniqueBuildingType
FROM	BuildingReplaces
WHERE	(ReplacesBuildingType='BUILDING_TEMPLE');

INSERT OR IGNORE INTO Requirements 
		(RequirementId,									RequirementType)
SELECT	'REQ_MNX_CITY_HAS_'||CivUniqueBuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM	BuildingReplaces
WHERE	(ReplacesBuildingType='BUILDING_TEMPLE');

INSERT OR IGNORE INTO RequirementArguments 
		(RequirementId,									Name,				Value)
SELECT	'REQ_MNX_CITY_HAS_'||CivUniqueBuildingType,		'BuildingType',		CivUniqueBuildingType
FROM	BuildingReplaces
WHERE	(ReplacesBuildingType='BUILDING_TEMPLE');


-- City has Tier 3 Holy building 
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId,								RequirementId)
SELECT	'REQSR_MNX_CITY_HAS_TIER3_HOLY_BUILDING',		'REQ_MNX_CITY_HAS_'||Building
FROM	BuildingPrereqs
WHERE	(PrereqBuilding='BUILDING_TEMPLE');

INSERT OR IGNORE INTO Requirements 
		(RequirementId,									RequirementType)
SELECT	'REQ_MNX_CITY_HAS_'||Building,					'REQUIREMENT_CITY_HAS_BUILDING'
FROM	BuildingPrereqs
WHERE	(PrereqBuilding='BUILDING_TEMPLE');

INSERT OR IGNORE INTO RequirementArguments 
		(RequirementId,									Name,				Value)
SELECT	'REQ_MNX_CITY_HAS_'||Building,					'BuildingType',		Building
FROM	BuildingPrereqs
WHERE	(PrereqBuilding='BUILDING_TEMPLE');


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-- City has Tier 1 Harbor building 
-----------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements 
			(RequirementSetId,								RequirementId)
SELECT		'REQSR_MNX_CITY_HAS_TIER1_HARBOR_BUILDING',		'REQ_MNX_CITY_HAS_'||BuildingType
FROM		Buildings
WHERE		(PrereqDistrict='DISTRICT_HARBOR') AND (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs));

INSERT OR IGNORE INTO Requirements 
			(RequirementId,							RequirementType)
SELECT		'REQ_MNX_CITY_HAS_'||BuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM		Buildings
WHERE		(PrereqDistrict='DISTRICT_HARBOR') AND (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs));

INSERT OR IGNORE INTO RequirementArguments 
			(RequirementId,							Name,				Value)
SELECT		'REQ_MNX_CITY_HAS_'||BuildingType,		'BuildingType',		BuildingType
FROM		Buildings
WHERE		(PrereqDistrict='DISTRICT_HARBOR') AND (BuildingType NOT IN (SELECT Building FROM BuildingPrereqs));


-- City has Tier 2 Harbor building 
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId,								RequirementId)
VALUES	('REQSR_MNX_CITY_HAS_TIER2_HARBOR_BUILDING',		'REQ_MNX_CITY_HAS_BUILDING_SHIPYARD');

INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQ_MNX_CITY_HAS_BUILDING_SHIPYARD',			'REQUIREMENT_CITY_HAS_BUILDING');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value)
VALUES	('REQ_MNX_CITY_HAS_BUILDING_SHIPYARD',			'BuildingType',				'BUILDING_SHIPYARD');


INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId,								RequirementId)
SELECT	'REQSR_MNX_CITY_HAS_TIER2_HARBOR_BUILDING',		'REQ_MNX_CITY_HAS_'||CivUniqueBuildingType
FROM	BuildingReplaces
WHERE	(ReplacesBuildingType='BUILDING_SHIPYARD');

INSERT OR IGNORE INTO Requirements 
		(RequirementId,									RequirementType)
SELECT	'REQ_MNX_CITY_HAS_'||CivUniqueBuildingType,		'REQUIREMENT_CITY_HAS_BUILDING'
FROM	BuildingReplaces
WHERE	(ReplacesBuildingType='BUILDING_SHIPYARD');

INSERT OR IGNORE INTO RequirementArguments 
		(RequirementId,									Name,				Value)
SELECT	'REQ_MNX_CITY_HAS_'||CivUniqueBuildingType,		'BuildingType',		CivUniqueBuildingType
FROM	BuildingReplaces
WHERE	(ReplacesBuildingType='BUILDING_SHIPYARD');


-- City has Tier 3 Harbor building 
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId,								RequirementId)
SELECT	'REQSR_MNX_CITY_HAS_TIER3_HARBOR_BUILDING',		'REQ_MNX_CITY_HAS_'||Building
FROM	BuildingPrereqs
WHERE	(PrereqBuilding='BUILDING_SHIPYARD');

INSERT OR IGNORE INTO Requirements 
		(RequirementId,									RequirementType)
SELECT	'REQ_MNX_CITY_HAS_'||Building,					'REQUIREMENT_CITY_HAS_BUILDING'
FROM	BuildingPrereqs
WHERE	(PrereqBuilding='BUILDING_SHIPYARD');

INSERT OR IGNORE INTO RequirementArguments 
		(RequirementId,									Name,				Value)
SELECT	'REQ_MNX_CITY_HAS_'||Building,					'BuildingType',		Building
FROM	BuildingPrereqs
WHERE	(PrereqBuilding='BUILDING_SHIPYARD');