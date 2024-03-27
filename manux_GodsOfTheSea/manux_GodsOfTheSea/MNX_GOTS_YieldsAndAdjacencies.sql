-- GodsOfTheSea_Modifiers
-- Author: manux
-- DateCreated: 3/3/2024 6:49:05 PM
--------------------------------------------------------------

-- Attempt to add a trait to remove regular Faith and Gold districts adjacencies.
-- Works but removes adj from com-hub completely and it's given to all leaders
-- Need a way to give the trait just to the current player
/*
INSERT OR IGNORE INTO Types
		(Type,											Kind)
VALUES	('TRAIT_MNX_NO_REG_DIST_ADJ',					'KIND_TRAIT');

INSERT OR IGNORE INTO Traits
		(TraitType,							InternalOnly)
VALUES	('TRAIT_MNX_NO_REG_DIST_ADJ',		1);


INSERT OR IGNORE INTO LeaderTraits
		(TraitType,							LeaderType)
SELECT	'TRAIT_MNX_NO_REG_DIST_ADJ',		LeaderType
FROM	Leaders
WHERE	InheritFrom='LEADER_DEFAULT';


INSERT OR IGNORE INTO ExcludedAdjacencies 
		(TraitType,							YieldChangeId) 
VALUES	('TRAIT_MNX_NO_REG_DIST_ADJ',		'District_Faith'),
		--('TRAIT_LEADER_MAJOR_CIV',		'District_Science'),
		('TRAIT_MNX_NO_REG_DIST_ADJ',		'District_Gold');
		--('TRAIT_LEADER_MAJOR_CIV',		'District_Culture'),
		--('TRAIT_LEADER_MAJOR_CIV',		'District_Production');
*/


INSERT INTO Types
			(Type,												Kind)
VALUES		('DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',		'KIND_MODIFIER');

-- Districts Faith purchase Effect only seems to work through governors. Can't make it work with cities collection.
INSERT INTO DynamicModifiers
			(ModifierType,										CollectionType,						EffectType)
VALUES		('DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',		'COLLECTION_OWNER',			'EFFECT_DISTRICT_ADJACENCY');



INSERT OR IGNORE INTO Modifiers 
		(ModifierId,									ModifierType,															OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	-- Holy Site and Harbor 2x adjacency
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CIV_NOT_JAPAN'),
		('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CIV_NOT_JAPAN'),
		('MOD_MNX_HARBOR_2X_ADJACENCY',					'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CIV_NOT_JAPAN'),
		('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CIV_NOT_JAPAN'),
		--('MOD_MNX_HOLYSITE_REM_REG_ADJ_TEXT',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CIV_NOT_JAPAN'),
		--('MOD_MNX_HARBOR_REM_REG_ADJ_TEXT',			'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CIV_NOT_JAPAN'),

		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- ATTACH: Yield Districts major adjacency from Holy Site and Harbor
		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		('MOD_MNX_ATTACH_HOLYSITE_ADJ_FROM_HOLYSITE',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_HARBOR_ADJ_FROM_HOLYSITE',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_COMHUB_ADJ_FROM_HOLYSITE',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_CAMPUS_ADJ_FROM_HOLYSITE',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_THEATER_ADJ_FROM_HOLYSITE',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_INDZONE_ADJ_FROM_HOLYSITE',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_WATERFRONT_ADJ_FROM_HOLYSITE',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		

		('MOD_MNX_ATTACH_HOLYSITE_ADJ_FROM_HARBOR',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_HARBOR_ADJ_FROM_HARBOR',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_COMHUB_ADJ_FROM_HARBOR',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_CAMPUS_ADJ_FROM_HARBOR',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_THEATER_ADJ_FROM_HARBOR',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_INDZONE_ADJ_FROM_HARBOR',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		('MOD_MNX_ATTACH_WATERFRONT_ADJ_FROM_HARBOR',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',							'PLAYER_IS_HUMAN',			NULL),		
		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Yield Districts major adjacency from Holy Site and Harbor
		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_HOLYSITE_ADJ_HOLYSITE'),		
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_HARBOR_ADJ_HOLYSITE'),		
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_COMHUB_ADJ_HOLYSITE'),		
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CAMPUS_ADJ_HOLYSITE'),		
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_THEATER_ADJ_HOLYSITE'),		
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_INDZONE_ADJ_HOLYSITE'),		
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',		'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_WATERFRONT_ADJ_HOLYSITE'),	
																																						
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_HOLYSITE_ADJ_HARBOR'),		
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',				'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_HARBOR_ADJ_HARBOR'),			
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',				'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_COMHUB_ADJ_HARBOR'),			
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',				'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_CAMPUS_ADJ_HARBOR'),			
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',				'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_THEATER_ADJ_HARBOR'),		
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',				'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_INDZONE_ADJ_HARBOR'),		
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',			'DMOD_MNX_SINGLE_CITY_DISTRICT_ADJACENCY',							'PLAYER_IS_HUMAN',			'REQSR_MNX_WATERFRONT_ADJ_HARBOR'),	
																																									
		--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		-- Districts minor water adjacency
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),
		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),
		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),
		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),
		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),
		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',								'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_ANY_DISTRICT'),

		-- Coastal Housing
		('MOD_MNX_COASTAL_HOUSING',						'MODIFIER_PLAYER_CITIES_ADJUST_WATER_HOUSING',							'PLAYER_IS_HUMAN',			'PLOT_IS_COASTAL_LAND_REQUIREMENTS'),
		-- Water adjacent districts gain +1	amenity		
		('MOD_MNX_WATER_DISTRICT_AMENITY',				'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_TO_WATER'),

		-- Districts extra adjacency Yields
		('MOD_MNX_HOLYSITE_ADJ_FOOD',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_PROD',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_GOLD_1',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_GOLD_2',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_SCI',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_CULT',					'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HOLY_SITE'),
		('MOD_MNX_HARBOR_ADJ_FOOD',						'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'DISTRICT_IS_HARBOR'),
		
		-- Tiles yields from adjacent Districts
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L1',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L2',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L3',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L1',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L2',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L3',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING'),
		
		-- Districts yields from adjacent Holy Site	or Harbor
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L1',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L2',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L3',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L1',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L2',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L3',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE',					'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING'),
		
		-- Holy Site: get yields from other yield producing districts
		('MOD_MNX_HOLYSITE_SCI_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HOLYSITE_HAS_CAMPUS'),
		('MOD_MNX_HOLYSITE_CULT_FROM_DISTRICTS',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HOLYSITE_HAS_THEATER'),
		('MOD_MNX_HOLYSITE_GOLD_FROM_DISTRICTS',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HOLYSITE_HAS_GOLD_DISTRICT'),
		('MOD_MNX_HOLYSITE_PROD_FROM_DISTRICTS',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HOLYSITE_HAS_INDZONE'),
		-- Harbor: get yields from other yield producing districts
		('MOD_MNX_HARBOR_SCI_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HARBOR_HAS_CAMPUS'),
		('MOD_MNX_HARBOR_CULT_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HARBOR_HAS_THEATER'),
		('MOD_MNX_HARBOR_FAITH_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HARBOR_HAS_HOLYSITE'),
		('MOD_MNX_HARBOR_PROD_FROM_DISTRICTS',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',		'PLAYER_IS_HUMAN',			'REQSR_MNX_IS_HARBOR_HAS_INDZONE'),
		
		-- Water yields
		('MOD_MNX_WATER_YIELD_FOOD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_WATER'),
		('MOD_MNX_WATER_YIELD_PROD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_WATER'),
		('MOD_MNX_WATER_YIELD_GOLD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_WATER'),
		('MOD_MNX_WATER_YIELD_FAITH',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_WATER'),
		('MOD_MNX_WATER_YIELD_SCI',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_WATER'),
		('MOD_MNX_WATER_YIELD_CULT',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLAYER_IS_HUMAN',			'REQSR_MNX_PLOT_HAS_WATER');


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	-- Holy Site and Harbor 2x adjacency
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'Amount',					'1'),
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'TilesRequired',			'1'),
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'OtherDistrictAdjacent',	'1'),
		('MOD_MNX_HOLYSITE_2X_ADJACENCY',				'Description',				'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?district; other?districts;}.'),

		('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',			'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',			'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',			'Amount',					'-1'),
		('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',			'TilesRequired',			'2'),
		('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',			'OtherDistrictAdjacent',	'1'),
		--('MOD_MNX_HOLYSITE_REM_REG_ADJACENCY',		'Description',				'(GOTS) -{1_num} [ICON_Faith] Faith compensation from the adjacent {1_Num : plural 1?district; other?districts;}.'),

		('MOD_MNX_HARBOR_2X_ADJACENCY',					'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_HARBOR_2X_ADJACENCY',					'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_HARBOR_2X_ADJACENCY',					'Amount',					'1'),
		('MOD_MNX_HARBOR_2X_ADJACENCY',					'TilesRequired',			'1'),
		('MOD_MNX_HARBOR_2X_ADJACENCY',					'OtherDistrictAdjacent',	'1'),
		('MOD_MNX_HARBOR_2X_ADJACENCY',					'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?district; other?districts;}.'),

		('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'Amount',					'-1'),
		('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'TilesRequired',			'2'),
		('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'OtherDistrictAdjacent',	'1'),
		--('MOD_MNX_HARBOR_REM_REG_ADJACENCY',			'Description',				'(GOTS) -{1_num} [ICON_Gold] Gold compensation from the adjacent {1_Num : plural 1?district; other?districts;}.'),


		-----------------------------------------------------------------------------------------------------------
		-- ATTACH: Yield Districts major adjacency from Holy Site and Harbor
		-----------------------------------------------------------------------------------------------------------
		('MOD_MNX_ATTACH_HOLYSITE_ADJ_FROM_HOLYSITE',			'ModifierId',				'MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE'),
		('MOD_MNX_ATTACH_HARBOR_ADJ_FROM_HOLYSITE',				'ModifierId',				'MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE'),
		('MOD_MNX_ATTACH_COMHUB_ADJ_FROM_HOLYSITE',				'ModifierId',				'MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE'),
		('MOD_MNX_ATTACH_CAMPUS_ADJ_FROM_HOLYSITE',				'ModifierId',				'MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE'),
		('MOD_MNX_ATTACH_THEATER_ADJ_FROM_HOLYSITE',			'ModifierId',				'MOD_MNX_THEATER_ADJ_FROM_HOLYSITE'),
		('MOD_MNX_ATTACH_INDZONE_ADJ_FROM_HOLYSITE',			'ModifierId',				'MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE'),
		('MOD_MNX_ATTACH_WATERFRONT_ADJ_FROM_HOLYSITE',			'ModifierId',				'MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE'),

		('MOD_MNX_ATTACH_HOLYSITE_ADJ_FROM_HARBOR',				'ModifierId',				'MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR'),
		('MOD_MNX_ATTACH_HARBOR_ADJ_FROM_HARBOR',				'ModifierId',				'MOD_MNX_HARBOR_ADJ_FROM_HARBOR'),
		('MOD_MNX_ATTACH_COMHUB_ADJ_FROM_HARBOR',				'ModifierId',				'MOD_MNX_COMHUB_ADJ_FROM_HARBOR'),
		('MOD_MNX_ATTACH_CAMPUS_ADJ_FROM_HARBOR',				'ModifierId',				'MOD_MNX_CAMPUS_ADJ_FROM_HARBOR'),
		('MOD_MNX_ATTACH_THEATER_ADJ_FROM_HARBOR',				'ModifierId',				'MOD_MNX_THEATER_ADJ_FROM_HARBOR'),
		('MOD_MNX_ATTACH_INDZONE_ADJ_FROM_HARBOR',				'ModifierId',				'MOD_MNX_INDZONE_ADJ_FROM_HARBOR'),
		('MOD_MNX_ATTACH_WATERFRONT_ADJ_FROM_HARBOR',			'ModifierId',				'MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR'),

		-----------------------------------------------------------------------------------------------------------
		-- Yield Districts major adjacency from Holy Site
		-----------------------------------------------------------------------------------------------------------
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'Amount',					'1'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'TilesRequired',			'1'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE',				'Description',				'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),

		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'Amount',					'1'),
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'TilesRequired',			'1'),
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE',				'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),

		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'Amount',					'1'),
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'TilesRequired',			'1'),
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE',				'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),

		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'DistrictType',				'DISTRICT_CAMPUS'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'Amount',					'1'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'TilesRequired',			'1'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE',				'Description',				'(GOTS) +{1_num} [ICON_Science] Science from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),

		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'DistrictType',				'DISTRICT_THEATER'),
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'Amount',					'1'),
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'TilesRequired',			'1'),
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_THEATER_ADJ_FROM_HOLYSITE',				'Description',				'(GOTS) +{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),

		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'),
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'Amount',					'1'),
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'TilesRequired',			'1'),
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE',				'Description',				'(GOTS) +{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),

		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'DistrictType',				'DISTRICT_WATERFRONT'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'YieldType',				'YIELD_FOOD'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'Amount',					'1'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'TilesRequired',			'1'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'AdjacentDistrict',			'DISTRICT_HOLY_SITE'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE',			'Description',				'(GOTS) +{1_num} [ICON_Food] Food from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.'),
		
		-----------------------------------------------------------------------------------------------------------
		-- Yield Districts major adjacency from Harbor
		-----------------------------------------------------------------------------------------------------------
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'Amount',					'1'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'TilesRequired',			'1'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR',				'Description',				'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),

		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'Amount',					'1'),
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'TilesRequired',			'1'),
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_HARBOR_ADJ_FROM_HARBOR',					'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),

		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'Amount',					'1'),
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'TilesRequired',			'1'),
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_COMHUB_ADJ_FROM_HARBOR',					'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),

		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'DistrictType',				'DISTRICT_CAMPUS'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'Amount',					'1'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'TilesRequired',			'1'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_CAMPUS_ADJ_FROM_HARBOR',					'Description',				'(GOTS) +{1_num} [ICON_Science] Science from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),

		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'DistrictType',				'DISTRICT_THEATER'),
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'Amount',					'1'),
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'TilesRequired',			'1'),
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_THEATER_ADJ_FROM_HARBOR',					'Description',				'(GOTS) +{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),

		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'),
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'Amount',					'1'),
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'TilesRequired',			'1'),
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_INDZONE_ADJ_FROM_HARBOR',					'Description',				'(GOTS) +{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),

		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'DistrictType',				'DISTRICT_WATERFRONT'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'YieldType',				'YIELD_FOOD'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'Amount',					'1'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'TilesRequired',			'1'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'OtherDistrictAdjacent',	'0'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'AdjacentDistrict',			'DISTRICT_HARBOR'),
		('MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR',				'Description',				'(GOTS) +{1_num} [ICON_Food] Food from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.'),
		
		-----------------------------------------------------------------------------------------------------------

		-- Districts minor water adjacency
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'DistrictType',				'DISTRICT_HOLY_SITE'),
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'Amount',					'1'),
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'TilesRequired',			'2'),
		('MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ',			'Description',				'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'DistrictType',				'DISTRICT_HARBOR'),
		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'Amount',					'1'),
		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'TilesRequired',			'2'),
		('MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ',			'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'Amount',					'1'),
		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'TilesRequired',			'2'),
		('MOD_MNX_COM_HUB_MINOR_WATER_ADJ',				'Description',				'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'DistrictType',				'DISTRICT_CAMPUS'),
		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'Amount',					'1'),
		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'TilesRequired',			'2'),
		('MOD_MNX_SCI_DIST_MINOR_WATER_ADJ',			'Description',				'(GOTS) +{1_num} [ICON_Science] Science from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'DistrictType',				'DISTRICT_THEATER'),
		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'Amount',					'1'),
		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'TilesRequired',			'2'),
		('MOD_MNX_CULT_DIST_MINOR_WATER_ADJ',			'Description',				'(GOTS) +{1_num} [ICON_Culture] Culture from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'DistrictType',				'DISTRICT_INDUSTRIAL_ZONE'),
		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'Amount',					'1'),
		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'TilesRequired',			'2'),
		('MOD_MNX_PROD_DIST_MINOR_WATER_ADJ',			'Description',				'(GOTS) +{1_num} [ICON_Production] Production from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		-- TODO: Make Waterfront conditional to having the mod. Make a version for suburbs or other bonus ideas like improvements...
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'DistrictType',				'DISTRICT_WATERFRONT'),
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'TerrainType',				'TERRAIN_COAST'),
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'YieldType',				'YIELD_FOOD'),
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'Amount',					'1'),
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'TilesRequired',			'2'),
		('MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ',			'Description',				'(GOTS) +{1_num} [ICON_Food] Food from the adjacent water {1_Num : plural 1?tile; other?tiles;}.'),

		-- Coastal Housing
		('MOD_MNX_COASTAL_HOUSING',						'Amount',					'2'),
		
		-- Water adjacent districts gain +1 amenity 
		('MOD_MNX_WATER_DISTRICT_AMENITY',				'Amount',					'1'),
		
		-- Holy Site extra adjacency Yields
		('MOD_MNX_HOLYSITE_ADJ_FOOD',					'YieldTypeToGrant',			'YIELD_FOOD'),
		('MOD_MNX_HOLYSITE_ADJ_FOOD',					'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_PROD',					'YieldTypeToGrant',			'YIELD_PRODUCTION'),
		('MOD_MNX_HOLYSITE_ADJ_PROD',					'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_GOLD_1',					'YieldTypeToGrant',			'YIELD_GOLD'),
		('MOD_MNX_HOLYSITE_ADJ_GOLD_1',					'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_GOLD_2',					'YieldTypeToGrant',			'YIELD_GOLD'),
		('MOD_MNX_HOLYSITE_ADJ_GOLD_2',					'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_SCI',					'YieldTypeToGrant',			'YIELD_SCIENCE'),
		('MOD_MNX_HOLYSITE_ADJ_SCI',					'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_ADJ_CULT',					'YieldTypeToGrant',			'YIELD_CULTURE'),
		('MOD_MNX_HOLYSITE_ADJ_CULT',					'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HARBOR_ADJ_FOOD',						'YieldTypeToGrant',			'YIELD_FOOD'),
		('MOD_MNX_HARBOR_ADJ_FOOD',						'YieldTypeToMirror',		'YIELD_GOLD'),
		
		-- Tiles yields from adjacent Holy Site or Harbor
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L1',		'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L1',		'Amount',					'2'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L2',		'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L2',		'Amount',					'3'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L3',		'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L3',		'Amount',					'5'),
		
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L1',		'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L1',		'Amount',					'2'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L2',		'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L2',		'Amount',					'3'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L3',		'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L3',		'Amount',					'5'),
		
		-- Districts yields from adjacent Holy Site or Harbor
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L1',		'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L1',		'Amount',					'2'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L2',		'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L2',		'Amount',					'3'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L3',		'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L3',		'Amount',					'5'),

		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L1',		'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L1',		'Amount',					'2'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L2',		'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L2',		'Amount',					'3'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L3',		'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L3',		'Amount',					'5'),
		
		-- Holy Site: get yields from other yield producing districts
		('MOD_MNX_HOLYSITE_SCI_FROM_DISTRICTS',			'YieldTypeToGrant',			'YIELD_SCIENCE'),
		('MOD_MNX_HOLYSITE_SCI_FROM_DISTRICTS',			'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_CULT_FROM_DISTRICTS',		'YieldTypeToGrant',			'YIELD_CULTURE'),
		('MOD_MNX_HOLYSITE_CULT_FROM_DISTRICTS',		'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_GOLD_FROM_DISTRICTS',		'YieldTypeToGrant',			'YIELD_GOLD'),
		('MOD_MNX_HOLYSITE_GOLD_FROM_DISTRICTS',		'YieldTypeToMirror',		'YIELD_FAITH'),
		('MOD_MNX_HOLYSITE_PROD_FROM_DISTRICTS',		'YieldTypeToGrant',			'YIELD_PRODUCTION'),
		('MOD_MNX_HOLYSITE_PROD_FROM_DISTRICTS',		'YieldTypeToMirror',		'YIELD_FAITH'),
		-- Harbor: get yields from other yield producing districts
		('MOD_MNX_HARBOR_SCI_FROM_DISTRICTS',			'YieldTypeToGrant',			'YIELD_SCIENCE'),
		('MOD_MNX_HARBOR_SCI_FROM_DISTRICTS',			'YieldTypeToMirror',		'YIELD_GOLD'),
		('MOD_MNX_HARBOR_CULT_FROM_DISTRICTS',			'YieldTypeToGrant',			'YIELD_CULTURE'),
		('MOD_MNX_HARBOR_CULT_FROM_DISTRICTS',			'YieldTypeToMirror',		'YIELD_GOLD'),
		('MOD_MNX_HARBOR_FAITH_FROM_DISTRICTS',			'YieldTypeToGrant',			'YIELD_FAITH'),
		('MOD_MNX_HARBOR_FAITH_FROM_DISTRICTS',			'YieldTypeToMirror',		'YIELD_GOLD'),
		('MOD_MNX_HARBOR_PROD_FROM_DISTRICTS',			'YieldTypeToGrant',			'YIELD_PRODUCTION'),
		('MOD_MNX_HARBOR_PROD_FROM_DISTRICTS',			'YieldTypeToMirror',		'YIELD_GOLD'),	
		-- Water yields
		('MOD_MNX_WATER_YIELD_FOOD',					'YieldType',				'YIELD_FOOD'),
		('MOD_MNX_WATER_YIELD_FOOD',					'Amount',					'1'),
		('MOD_MNX_WATER_YIELD_PROD',					'YieldType',				'YIELD_PRODUCTION'),
		('MOD_MNX_WATER_YIELD_PROD',					'Amount',					'1'),
		('MOD_MNX_WATER_YIELD_GOLD',					'YieldType',				'YIELD_GOLD'),
		('MOD_MNX_WATER_YIELD_GOLD',					'Amount',					'1'),
		('MOD_MNX_WATER_YIELD_FAITH',					'YieldType',				'YIELD_FAITH'),
		('MOD_MNX_WATER_YIELD_FAITH',					'Amount',					'1'),
		('MOD_MNX_WATER_YIELD_SCI',						'YieldType',				'YIELD_SCIENCE'),
		('MOD_MNX_WATER_YIELD_SCI',						'Amount',					'1'),
		('MOD_MNX_WATER_YIELD_CULT',					'YieldType',				'YIELD_CULTURE'),
		('MOD_MNX_WATER_YIELD_CULT',					'Amount',					'1');


---------------------------------------------------------------------------------------------------
/*-- Yield Districts major adjacency from Holy Site and Harbor
INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,						ModifierId)
VALUES	('DISTRICT_HOLY_SITE',				'MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE'),
		('DISTRICT_HARBOR',					'MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE'),
		('DISTRICT_COMMERCIAL_HUB',			'MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE'),
		('DISTRICT_CAMPUS',					'MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE'),
		('DISTRICT_THEATER',				'MOD_MNX_THEATER_ADJ_FROM_HOLYSITE'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE'),
		('DISTRICT_WATERFRONT',				'MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE'),

		('DISTRICT_HOLY_SITE',				'MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR'),
		('DISTRICT_HARBOR',					'MOD_MNX_HARBOR_ADJ_FROM_HARBOR'),
		('DISTRICT_COMMERCIAL_HUB',			'MOD_MNX_COMHUB_ADJ_FROM_HARBOR'),
		('DISTRICT_CAMPUS',					'MOD_MNX_CAMPUS_ADJ_FROM_HARBOR'),
		('DISTRICT_THEATER',				'MOD_MNX_THEATER_ADJ_FROM_HARBOR'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MOD_MNX_INDZONE_ADJ_FROM_HARBOR'),
		('DISTRICT_WATERFRONT',				'MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR');*/
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Way to do it for everyone. Was useful for testing and isolating the issue. One stupid flag was wrong! OtherDistrictAdjacent needs to be 0 for AdjacentDistrict to work.
/*INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,									Description,																										YieldType,				YieldChange,	OtherDistrictAdjacent,		TilesRequired,		AdjacentDistrict	)
VALUES
		('MNX_Faith_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',			'YIELD_FAITH',			1,				0,					  		1,					'DISTRICT_HOLY_SITE'),
		('MNX_Gold_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',				'YIELD_GOLD',			1,				0,					  		1,					'DISTRICT_HOLY_SITE'),
		('MNX_Science_Dist_Adj_HolySite',		'(GOTS) +{1_num} [ICON_Science] Science from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',		'YIELD_SCIENCE',		1,				0,					  		1,					'DISTRICT_HOLY_SITE'),
		('MNX_Culture_Dist_Adj_HolySite',		'(GOTS) +{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',		'YIELD_CULTURE',		1,				0,					  		1,					'DISTRICT_HOLY_SITE'),
		('MNX_Prod_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',	'YIELD_PRODUCTION',		1,				0,					  		1,					'DISTRICT_HOLY_SITE'),
		('MNX_Food_Dist_Adj_HolySite',			'(GOTS) +{1_num} [ICON_Food] Food from the adjacent {1_Num : plural 1?Holy Site; other?Holy Sites;}.',				'YIELD_FOOD',			1,				0,					  		1,					'DISTRICT_HOLY_SITE'),
		
		('MNX_Faith_Dist_Adj_Harbor',			'(GOTS) +{1_num} [ICON_Faith] Faith from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.',					'YIELD_FAITH',			1,				0,					  		1,					'DISTRICT_HARBOR'),
		('MNX_Gold_Dist_Adj_Harbor',			'(GOTS) +{1_num} [ICON_Gold] Gold from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.',					'YIELD_GOLD',			1,				0,					  		1,					'DISTRICT_HARBOR'),
		('MNX_Science_Dist_Adj_Harbor',			'(GOTS) +{1_num} [ICON_Science] Science from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.',				'YIELD_SCIENCE',		1,				0,					  		1,					'DISTRICT_HARBOR'),
		('MNX_Culture_Dist_Adj_Harbor',			'(GOTS) +{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.',				'YIELD_CULTURE',		1,				0,					  		1,					'DISTRICT_HARBOR'),
		('MNX_Prod_Dist_Adj_Harbor',			'(GOTS) +{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.',		'YIELD_PRODUCTION',		1,				0,					  		1,					'DISTRICT_HARBOR'),
		('MNX_Food_Dist_Adj_Harbor',			'(GOTS) +{1_num} [ICON_Food] Food from the adjacent {1_Num : plural 1?Harbor; other?Harbors;}.',					'YIELD_FOOD',			1,				0,					  		1,					'DISTRICT_HARBOR');


INSERT OR IGNORE INTO District_Adjacencies
		(DistrictType,						YieldChangeID					)	
VALUES
		('DISTRICT_HOLY_SITE',				'MNX_Faith_Dist_Adj_HolySite'),
		('DISTRICT_HARBOR',					'MNX_Gold_Dist_Adj_HolySite'),
		('DISTRICT_COMMERCIAL_HUB',			'MNX_Gold_Dist_Adj_HolySite'),
		('DISTRICT_CAMPUS',					'MNX_Science_Dist_Adj_HolySite'),
		('DISTRICT_THEATER',				'MNX_Culture_Dist_Adj_HolySite'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_Prod_Dist_Adj_HolySite'),
		('DISTRICT_WATERFRONT',				'MNX_Food_Dist_Adj_HolySite'),

		('DISTRICT_HOLY_SITE',				'MNX_Faith_Dist_Adj_Harbor'),
		('DISTRICT_HARBOR',					'MNX_Gold_Dist_Adj_Harbor'),
		('DISTRICT_COMMERCIAL_HUB',			'MNX_Gold_Dist_Adj_Harbor'),
		('DISTRICT_CAMPUS',					'MNX_Science_Dist_Adj_Harbor'),
		('DISTRICT_THEATER',				'MNX_Culture_Dist_Adj_Harbor'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_Prod_Dist_Adj_Harbor'),
		('DISTRICT_WATERFRONT',				'MNX_Food_Dist_Adj_Harbor');*/
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
 -- Add modifiers to all districts to get Yields from Holy Site and Harbor
/* -- Holy Site
INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
SELECT	DistrictType,			'MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L1' 
FROM Districts;

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
SELECT	DistrictType,			'MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L2' 
FROM Districts;

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
SELECT	DistrictType,			'MOD_MNX_DIST_FAITH_FROM_ADJ_HOLYSITE_L3' 
FROM Districts;

-- Harbor
INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
SELECT	DistrictType,			'MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L1' 
FROM Districts;

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
SELECT	DistrictType,			'MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L2' 
FROM Districts;

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,			ModifierId)
SELECT	DistrictType,			'MOD_MNX_DIST_GOLD_FROM_ADJ_HARBOR_L3' 
FROM Districts;
*/

INSERT OR IGNORE INTO TraitModifiers 
		(TraitType,							ModifierId) 
VALUES	-- Holy Site and Harbor 2x adjacency
		/*('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_2X_ADJACENCY'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_2X_ADJACENCY'),	
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_REM_REG_ADJACENCY'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_REM_REG_ADJACENCY'),*/		
		
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HOLYSITE_REM_REG_ADJ_TEXT'),	
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HARBOR_REM_REG_ADJ_TEXT'),
		
		-------------------------------------------------------------------------------------------
		/*('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_HOLYSITE_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_HARBOR_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_COMHUB_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_CAMPUS_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_THEATER_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_INDZONE_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_WATERFRONT_ADJ_FROM_HOLYSITE'),

		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_HOLYSITE_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_HARBOR_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_COMHUB_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_CAMPUS_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_THEATER_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_INDZONE_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_ATTACH_WATERFRONT_ADJ_FROM_HARBOR'),*/
		--------------------------------------------------------------------------------------
		-- Yield Districts major adjacency from Holy Site and Harbor
		/*('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_COMHUB_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_CAMPUS_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_THEATER_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_INDZONE_ADJ_FROM_HOLYSITE'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATERFRONT_ADJ_FROM_HOLYSITE'),

		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_COMHUB_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_CAMPUS_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_THEATER_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_INDZONE_ADJ_FROM_HARBOR'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATERFRONT_ADJ_FROM_HARBOR'),*/
		---------------------------------------------------------------------------------------------

		/*-- Yield Districts minor water adjacency
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_FAITH_DIST_MINOR_WATER_ADJ'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_GOLD_DIST_MINOR_WATER_ADJ'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_COM_HUB_MINOR_WATER_ADJ'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_SCI_DIST_MINOR_WATER_ADJ'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_CULT_DIST_MINOR_WATER_ADJ'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PROD_DIST_MINOR_WATER_ADJ'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_FOOD_DIST_MINOR_WATER_ADJ'),*/

		-- Coastal Housing
		--('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_COASTAL_HOUSING'),
		-- Water adjacent districts gain +1 amenity 
		--('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_DISTRICT_AMENITY'),
		
		-- Holy Site and Harbor extra adjacency Yields (FOOD)
		--('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_ADJ_FOOD'),
		--('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_ADJ_FOOD'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HOLYSITE_ADJ_PROD'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HOLYSITE_ADJ_GOLD_1'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HOLYSITE_ADJ_GOLD_2'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HOLYSITE_ADJ_SCI'),
		--('TRAIT_LEADER_MAJOR_CIV',		'MOD_MNX_HOLYSITE_ADJ_CULT'),
		-------------------------------------------------------------------
		
		/*-- Tiles yields from adjacent Districts
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L1'),	
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L2'),	
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PLOT_FAITH_FROM_ADJ_HOLYSITE_L3'),	

		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L1'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L2'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_PLOT_GOLD_FROM_ADJ_HARBOR_L3'),*/

		-- Holy Site: get yields from other yield producing districts
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_SCI_FROM_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_CULT_FROM_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_GOLD_FROM_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HOLYSITE_PROD_FROM_DISTRICTS'),
		-- Harbor: get yields from other yield producing districts
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_SCI_FROM_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_CULT_FROM_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_FAITH_FROM_DISTRICTS'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_HARBOR_PROD_FROM_DISTRICTS'),
		
		-- Water yields
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_YIELD_FOOD'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_YIELD_PROD'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_YIELD_GOLD'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_YIELD_FAITH'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_YIELD_SCI'),
		('TRAIT_LEADER_MAJOR_CIV',			'MOD_MNX_WATER_YIELD_CULT');
		
		

		