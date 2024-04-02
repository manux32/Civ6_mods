/*
	Civilization Unique Ability
	Authors: MC
*/

-----------------------------------------------
-- Types

-- The game code cites the Civilization Ability as a 'Trait', hence we're using that term here (and throughout this section). 

-- This inserts the Unique Ability reference into the primary Data Types table as a recognised trait. This is mandatory, if configuring a custom trait for your civilization. The string listed under 'Type' must be used throughout the mod when referring to the TraitType.

-- The standard naming convention follows: TRAIT_CIVILIZATION_PREFIX_TRAITNAME

-- As with everywhere else, we're using our PREFIX to try and keep things unique. This also helps us differentiate the things we are creating and the things we are borrowing from the game.

-- Configuring a Unique Ability for your custom civilization is entirely optional, but it is typically considered appropriate for balance to configure one, such that your custom civilization matches those from the base games in terms of complexity, both for flavour and gameplay balance.
-----------------------------------------------

INSERT INTO	Types
		(Type,														Kind			)
VALUES	('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',						'KIND_TRAIT'	),
		('TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE',					'KIND_TRAIT'	),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',					'KIND_TRAIT'	),
		('DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		'KIND_MODIFIER'	);

-----------------------------------------------
INSERT INTO DynamicModifiers
			(ModifierType,												CollectionType,						EffectType)
VALUES		('DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_BASE_YIELD_CHANGE');

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,									Name,												Description														)
VALUES	('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'LOC_TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN_NAME',		'LOC_TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN_DESCRIPTION'			),
		('TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE',	'LOC_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_NAME',		'LOC_IMPROVEMENT_MNX_ODIN_FISHING_BOAT_DESCRIPTION'				);
		
-----------------------------------------------
-- Add dummy Trait to all Leaders or Civs to exclude our Civ's special district adjacency bonuses for all other players
-----------------------------------------------
INSERT OR IGNORE INTO Traits
		(TraitType,									InternalOnly)
VALUES	('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	1);

/*INSERT OR IGNORE INTO LeaderTraits
		(TraitType,									LeaderType)
SELECT	'TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	LeaderType
FROM	Leaders
WHERE	InheritFrom='LEADER_DEFAULT' AND LeaderType!='LEADER_MNX_NORSE';*/

INSERT OR IGNORE INTO CivilizationTraits
		(TraitType,									CivilizationType)
SELECT	'TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	CivilizationType
FROM	Civilizations
WHERE	StartingCivilizationLevelType='CIVILIZATION_LEVEL_FULL_CIV' AND CivilizationType!='CIVILIZATION_MNX_NORSE';
	
-----------------------------------------------
-- CivilizationTraits

-- This defines the civilization to which the TraitType is applied (i.e. which civilization gets the Unique Ability). This is a simple matter of referencing the custom CivilizationType defined in Civilization_Config.sql and using the TraitType defined at the head of this document.
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType										)
VALUES	('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN'			),
		('CIVILIZATION_MNX_NORSE',		'TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE'			),
		-- Norway Traits
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_BUILDING_STAVE_CHURCH'		),
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_BERSERKER'	),
		--('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION'		),
		-- Other civs unique naval units
		--('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_BYZANTINE_DROMON'		),
		--('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_ENGLISH_SEADOG'		),
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_GERMAN_UBOAT'			);
										
-----------------------------------------------
-- TraitModifiers

-- The below entry - or entries, in this example case - tie the effective modifiers to the TraitType. A modifier is the top-level item that instructs the game to perform a deviation away from the base ruleset in some way. The possibilities are endless, so these notes make no attempt to cover what can be done - only to instruct against the logic, step by step.

-- This template will walk you through a typical example, nonetheless; though I highly recommend spending some time familiarising yourself with the base-game files and/or the database to get a general appreciation of how things work.

-- In this example, we're assigning two Modifiers to the Civilization Trait we created. That is, there are two gameplay effects that this trait will be directly responsible for causing to happen. I'll explain the specific gameplay effects in the code in latter parts of this file.

-- Learning point: There are numerous ways to unfurl the logic that follows below. For me, the most effective way was a combination of following the base game data, trial and error and (admittedly) a healthy dose of asking for help.

-- Learning point: The starting point to search in the base game XML is to look-up an existing CivilizationType (e.g. CIVILIZATION_AMERICA) and note their TRAIT_CIVILIZATION_ that is neither the Unique Infrastructure nor the Unique Unit. In America's case, it is TRAIT_CIVILIZATION_FOUNDING_FATHERS. Searching that will lead you to the ModifierId entry (or entries) that grant the various bonuses associated with that TraitType. You can apply this simple principle in order to look-up how the code is constructed, in every situation.
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId											)
VALUES	-- Norway Civ Knarr (Early Ocean Navigation) Trait
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'TRAIT_EARLY_OCEAN_NAVIGATION'						),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'TRAIT_MELEE_NAVAL_HEAL_NEUTRAL'					),
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'TRAIT_IGNORE_EMBARK_DISEMBARK_COST'				),
		
		-----------------------------------------------
		('TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE',			'MOD_MNX_ODIN_FISHING_BOATS_COAST'					),
		('TRAIT_MNX_ODIN_FISHING_BOATS_ANYWHERE',			'MOD_MNX_ODIN_FISHING_BOATS_OCEAN'					),

		-- Holy Site and Harbor 2X districts adjacency
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HARBOR_2X_ADJACENCY'					),
		
		-----------------------------------------------
		-- Coastal Cities Housing
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_COASTAL_CITY_HOUSING'					),
		-- Coastal Districts Amenities
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_COASTAL_DISTRICT_AMENITY'				),
		
		-----------------------------------------------
		-- Cheaper Districts
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_CHEAP_HOLYSITE'						),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_CHEAP_HARBOR'							),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_CHEAP_ENCAMPMENT'						),
		
		-----------------------------------------------
		-- Trade Route from Shrines
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_ATTACH_TRADE_ROUTE_FROM_SHRINES'		),
		
		-----------------------------------------------
		-- Emanate yields on adjacent Districts
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T1'			),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T2'			),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T3'			),

		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T1'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T2'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T3'				),
		
		-----------------------------------------------
		-- Emanate yields on adjacent plots
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T1'			),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T2'			),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T3'			),

		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T1'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T2'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T3'				),
		
		-----------------------------------------------
		-- Water yields
		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T1'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T2'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T3'				),

		--('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_GOLD_HARBOR_T1'					),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_GOLD_HARBOR_T2'					),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_GOLD_HARBOR_T3'					),

		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_WATER_FOOD_RELIGION'					),

		-----------------------------------------------
		-- Holy Site and Harbor Food
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HOLYSITE_FOOD_T1'						),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HOLYSITE_FOOD_T2'						),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HOLYSITE_FOOD_T3'						),

		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HARBOR_FOOD_T1'						),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HARBOR_FOOD_T2'						),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HARBOR_FOOD_T3'						);

-----------------------------------------------
-- Modifiers

-- This section defines, for each of your modifiers, the type of modifier it is and the conditions under which it is applied.

-- The ModifierType is important - it governs the sphere of application of the effect(s) in question. It does this by having a defined pair of values linked to it - known as a CollectionType and an EffectType. The CollectionType instructs the game on which elements/items (all civilizations, one specific civilization, all cities of one civilization, etc) to apply the modifier, whilst the EffectType instructs the game as to what change to apply (grant more of a yield, increase combat strength, etc).

-- The naming convention for a ModifierType is typically: MODIFIER_COLLECTIONTYPE_EFFECTTYPE, where COLLECTIONTYPE and EFFECTTYPE cite the two parts that make up a modifier (explained directly above). I strongly recommend making use of existing ModifierType values until you are confident with creating your own. As a general principle, find an existing ability that is similar in construct to what you wish to achieve, look it up, identify the ModifierType it uses and then enter that into the ModifierType value(s) below.

-- RunOnce and Permanent are boolean values that instruct the game on the points at which the modifier is, or can be, applied. There is an excellent guide available via CivFanatics that explains these concepts (and more) that I highly recommend:

-- https://forums.civfanatics.com/resources/using-modifiers-chapter-1-creating-and-attaching-modifiers.25683/ --

-- In this case, we have two gameplay effects - both similar in nature. As a result, we're using the same ModifierType for both of them. The two effects we want to grant is to increase the yield that a particular building grants our custom civilization, when built. As with many things in the base-game's code, once we understand the terminology, the unique strings used are fairly intuitive.
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,												RunOnce,	Permanent,	SubjectRequirementSetId						)
VALUES	-- Holy Site and Harbor 2X districts adjacency
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',					'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',				0,			1,			NULL										),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',					'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',				0,			1,			NULL										),

		('MOD_MNX_ODIN_FISHING_BOATS_COAST',					'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN',	0,			1,			'REQSR_MNX_HAS_TECH_SHIPBUILDING'			),
		('MOD_MNX_ODIN_FISHING_BOATS_OCEAN',					'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN',	0,			1,			'REQSR_MNX_HAS_TECH_CARTOGRAPHY'			),

		-----------------------------------------------
		-- Coastal Cities Housing
		('MOD_MNX_ODIN_COASTAL_CITY_HOUSING',					'MODIFIER_PLAYER_CITIES_ADJUST_WATER_HOUSING',				0,			1,			'PLOT_IS_COASTAL_LAND_REQUIREMENTS'			),
		-- Coastal Districts Amenities
		('MOD_MNX_ODIN_COASTAL_DISTRICT_AMENITY',				'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',		0,			1,			'REQSR_MNX_PLOT_ADJ_TO_WATER'				),

		-----------------------------------------------
		-- Cheaper Districts
		('MOD_MNX_ODIN_CHEAP_HOLYSITE',							'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		0,			1,			NULL										),
		('MOD_MNX_ODIN_CHEAP_HARBOR',							'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		0,			1,			NULL										),
		('MOD_MNX_ODIN_CHEAP_ENCAMPMENT',						'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		0,			1,			NULL										),
		
		-----------------------------------------------
		-- Trade Route from Shrines
		('MOD_MNX_ODIN_ATTACH_TRADE_ROUTE_FROM_SHRINES',		'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					0,			1,			'REQSR_MNX_CITY_HAS_TIER1_HOLY_BUILDING'	),
		('MOD_MNX_ODIN_TRADE_ROUTE_FROM_SHRINES',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',				0,			1,			NULL										),

		-----------------------------------------------
		-- Emanate yields on adjacent Districts
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T1',				'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING'	),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T2',				'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING'	),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T3',				'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING'	),

		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T1',				'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING'	),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T2',				'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING'	),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T3',				'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING'	),
		
		-----------------------------------------------
		-- Emanate yields on adjacent plots
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T1',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_ADJ_HOLY_TIER1_BUILDING'	),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T2',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_ADJ_HOLY_TIER2_BUILDING'	),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T3',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_ADJ_HOLY_TIER3_BUILDING'	),
		
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T1',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER1_BUILDING'	),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T2',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER2_BUILDING'	),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T3',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_ADJ_HARBOR_TIER3_BUILDING'	),

		-----------------------------------------------
		-- Water yields
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T1',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER1'	),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T2',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER2'	),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T3',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_HOLY_TIER3'	),
		
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T1',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER1'	),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T2',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER2'	),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T3',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_HARBOR_TIER3'	),
		
		('MOD_MNX_ODIN_WATER_FOOD_RELIGION',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			1,			'REQSR_MNX_PLOT_IS_WATER_HAS_RELIGION'		),
		
		-----------------------------------------------
		-- Holy Site and Harbor Food
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T1',						'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_IS_HOLYSITE_W_TIER1_BUILDING'	),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T2',						'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_IS_HOLYSITE_W_TIER2_BUILDING'	),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T3',						'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_IS_HOLYSITE_W_TIER3_BUILDING'	),

		('MOD_MNX_ODIN_HARBOR_FOOD_T1',							'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_IS_HARBOR_W_TIER1_BUILDING'		),
		('MOD_MNX_ODIN_HARBOR_FOOD_T2',							'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_IS_HARBOR_W_TIER2_BUILDING'		),
		('MOD_MNX_ODIN_HARBOR_FOOD_T3',							'DMOD_MNX_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE',		0,			1,			'REQSR_MNX_IS_HARBOR_W_TIER3_BUILDING'		);

-----------------------------------------------
-- ModifierArguments

-- The below entries define the specific deviations from the base game ruleset that are applied when the modifier is executed and attached to the pertinent items.

-- The ModifierType governs the actual 'values' that are accepted within the Name column, which in turn governs the values that are accepted within the value column. I expect the below example data will make those connections clear.

-- More specifically, the EffectType that is used by the ModifierType directly dictates the values allowed. In our case, we are adjusting a yield that is provided by a building. It follows, therefore, that the ModifierType allows us to specify three variables: BuildingType, YieldType and Amount.

-- Together, these values tell the game that the Shrine building provides an additional +2 Food, whilst the Temple has the same effect.

-- Logic recap: As the Modifiers using these ModifierArguments are linked to a CivilizationTrait via the TraitModifiers table, these bonuses are only available if a Civilization has been assigned that trait. We assigned it via the CivilizationTraits table and only to our custom civilization. By doing this, we've granted our civilization (only) an additional +2 Food yield from each of the Shrine and Temple buildings.
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,												Name,							Value												)
VALUES	-- Holy Site and Harbor 2X districts adjacency
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'DistrictType',					'DISTRICT_HOLY_SITE'								),
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'Amount',						1													),
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'Description',					'LOC_MNX_ODIN_HOLYSITE_2X_DISTRICTS_ADJACENCY'		),

		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'DistrictType',					'DISTRICT_HARBOR'									),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'Amount',						1													),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'Description',					'LOC_MNX_ODIN_HARBOR_2X_DISTRICTS_ADJACENCY'		),
		
		('MOD_MNX_ODIN_FISHING_BOATS_COAST',						'ImprovementType',				'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER'				),
		('MOD_MNX_ODIN_FISHING_BOATS_COAST',						'TerrainType',					'TERRAIN_COAST'										),
		('MOD_MNX_ODIN_FISHING_BOATS_OCEAN',						'ImprovementType',				'IMPROVEMENT_MNX_ODIN_FISHING_TRAWLER'				),
		('MOD_MNX_ODIN_FISHING_BOATS_OCEAN',						'TerrainType',					'TERRAIN_OCEAN'										),

		-----------------------------------------------
		-- Coastal Cities Housing
		('MOD_MNX_ODIN_COASTAL_CITY_HOUSING',						'Amount',						2													),
		-- Coastal Districts Amenities
		('MOD_MNX_ODIN_COASTAL_DISTRICT_AMENITY',					'Amount',						1													),

		-----------------------------------------------
		-- Cheaper Districts
		('MOD_MNX_ODIN_CHEAP_HOLYSITE',								'DistrictType',					'DISTRICT_HOLY_SITE'								),
		('MOD_MNX_ODIN_CHEAP_HOLYSITE',								'Amount',						100													),
		('MOD_MNX_ODIN_CHEAP_HARBOR',								'DistrictType',					'DISTRICT_HARBOR'									),
		('MOD_MNX_ODIN_CHEAP_HARBOR',								'Amount',						100													),
		('MOD_MNX_ODIN_CHEAP_ENCAMPMENT',							'DistrictType',					'DISTRICT_ENCAMPMENT'								),
		('MOD_MNX_ODIN_CHEAP_ENCAMPMENT',							'Amount',						100													),
		
		-----------------------------------------------
		-- Trade Route from Shrines
		('MOD_MNX_ODIN_ATTACH_TRADE_ROUTE_FROM_SHRINES',			'ModifierId',					'MOD_MNX_ODIN_TRADE_ROUTE_FROM_SHRINES'				),
		('MOD_MNX_ODIN_TRADE_ROUTE_FROM_SHRINES',					'Amount',						1													),

		-----------------------------------------------
		-- Emanate yields on adjacent Districts
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T1',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T1',					'Amount',						1													),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T2',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T2',					'Amount',						2													),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T3',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_DIST_FAITH_ADJ_HOLYSITE_T3',					'Amount',						2													),

		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T1',					'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T1',					'Amount',						1													),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T2',					'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T2',					'Amount',						2													),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T3',					'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_DIST_GOLD_ADJ_HARBOR_T3',					'Amount',						2													),

		-----------------------------------------------
		-- Emanate yields on adjacent plots
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T1',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T1',					'Amount',						1													),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T2',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T2',					'Amount',						2													),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T3',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_PLOT_FAITH_ADJ_HOLYSITE_T3',					'Amount',						2													),

		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T1',					'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T1',					'Amount',						1													),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T2',					'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T2',					'Amount',						2													),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T3',					'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_PLOT_GOLD_ADJ_HARBOR_T3',					'Amount',						2													),

		-----------------------------------------------
		-- Water yields
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T1',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T1',					'Amount',						1													),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T2',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T2',					'Amount',						1													),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T3',					'YieldType',					'YIELD_FAITH'										),
		('MOD_MNX_ODIN_WATER_FAITH_HOLYSITE_T3',					'Amount',						1													),

		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T1',						'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T1',						'Amount',						1													),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T2',						'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T2',						'Amount',						1													),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T3',						'YieldType',					'YIELD_GOLD'										),
		('MOD_MNX_ODIN_WATER_GOLD_HARBOR_T3',						'Amount',						1													),

		('MOD_MNX_ODIN_WATER_FOOD_RELIGION',						'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_WATER_FOOD_RELIGION',						'Amount',						1													),

		-----------------------------------------------
		-- Holy Site and Harbor Food
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T1',							'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T1',							'Amount',						2													),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T2',							'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T2',							'Amount',						2													),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T3',							'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_HOLYSITE_FOOD_T3',							'Amount',						2													),
		
		('MOD_MNX_ODIN_HARBOR_FOOD_T1',								'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_HARBOR_FOOD_T1',								'Amount',						2													),
		('MOD_MNX_ODIN_HARBOR_FOOD_T2',								'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_HARBOR_FOOD_T2',								'Amount',						2													),
		('MOD_MNX_ODIN_HARBOR_FOOD_T3',								'YieldType',					'YIELD_FOOD'										),
		('MOD_MNX_ODIN_HARBOR_FOOD_T3',								'Amount',						2													);



----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- Stave Church +2 Housing +1 Amenity
UPDATE Buildings SET Housing = 2, Entertainment = 1, Description = 'LOC_MNX_BUILDING_STAVE_CHURCH_OVERRIDE_DESCRIPTION' WHERE BuildingType = 'BUILDING_STAVE_CHURCH';

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- Districts special adjacencies
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,										AdjacentDistrict,			AdjacentTerrain,	YieldType,				YieldChange,	OtherDistrictAdjacent,	TilesRequired,	Description									)
VALUES	-- To give Com-Hub back it's regular minor districts adjacency
		('MNX_ODIN_Gold_Dist_Reg_Adj_AnyDist',		NULL,						NULL,				'YIELD_GOLD',			1,				1,					  	2,				'LOC_MNX_ODIN_GOLD_DIST_REG_ADJ_ANY_DIST'	),
		
		-- Major districts adjacency from Holy Site
		('MNX_ODIN_Faith_Dist_Adj_HolySite',		'DISTRICT_HOLY_SITE',		NULL,				'YIELD_FAITH',			1,				0,					  	1,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_HOLYSITE'		),
		('MNX_ODIN_Gold_Dist_Adj_HolySite',			'DISTRICT_HOLY_SITE',		NULL,				'YIELD_GOLD',			1,				0,					  	1,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_HOLYSITE'		),
		('MNX_ODIN_Science_Dist_Adj_HolySite',		'DISTRICT_HOLY_SITE',		NULL,				'YIELD_SCIENCE',		1,				0,					  	1,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_HOLYSITE'	),
		('MNX_ODIN_Culture_Dist_Adj_HolySite',		'DISTRICT_HOLY_SITE',		NULL,				'YIELD_CULTURE',		1,				0,					  	1,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_HOLYSITE'	),
		('MNX_ODIN_Prod_Dist_Adj_HolySite',			'DISTRICT_HOLY_SITE',		NULL,				'YIELD_PRODUCTION',		1,				0,					  	1,				'LOC_MNX_ODIN_PROD_DIST_ADJ_HOLYSITE'		),
		('MNX_ODIN_Food_Dist_Adj_HolySite',			'DISTRICT_HOLY_SITE',		NULL,				'YIELD_FOOD',			1,				0,					  	1,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_HOLYSITE'		),

		-- Major districts adjacency from Harbor
		('MNX_ODIN_Faith_Dist_Adj_Harbor',			'DISTRICT_HARBOR',			NULL,				'YIELD_FAITH',			1,				0,					  	1,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_HARBOR'		),
		('MNX_ODIN_Gold_Dist_Adj_Harbor',			'DISTRICT_HARBOR',			NULL,				'YIELD_GOLD',			1,				0,					  	1,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_HARBOR'			),
		('MNX_ODIN_Science_Dist_Adj_Harbor',		'DISTRICT_HARBOR',			NULL,				'YIELD_SCIENCE',		1,				0,					  	1,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_HARBOR'		),
		('MNX_ODIN_Culture_Dist_Adj_Harbor',		'DISTRICT_HARBOR',			NULL,				'YIELD_CULTURE',		1,				0,					  	1,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_HARBOR'		),
		('MNX_ODIN_Prod_Dist_Adj_Harbor',			'DISTRICT_HARBOR',			NULL,				'YIELD_PRODUCTION',		1,				0,					  	1,				'LOC_MNX_ODIN_PROD_DIST_ADJ_HARBOR'			),
		('MNX_ODIN_Food_Dist_Adj_Harbor',			'DISTRICT_HARBOR',			NULL,				'YIELD_FOOD',			1,				0,					  	1,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_HARBOR'			),

		-- Major districts adjacency from Encampment
		('MNX_ODIN_Faith_Dist_Adj_Encamp',			'DISTRICT_ENCAMPMENT',		NULL,				'YIELD_FAITH',			1,				0,					  	1,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_ENCAMP'		),
		('MNX_ODIN_Gold_Dist_Adj_Encamp',			'DISTRICT_ENCAMPMENT',		NULL,				'YIELD_GOLD',			1,				0,					  	1,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_ENCAMP'			),
		('MNX_ODIN_Science_Dist_Adj_Encamp',		'DISTRICT_ENCAMPMENT',		NULL,				'YIELD_SCIENCE',		1,				0,					  	1,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_ENCAMP'		),
		('MNX_ODIN_Culture_Dist_Adj_Encamp',		'DISTRICT_ENCAMPMENT',		NULL,				'YIELD_CULTURE',		1,				0,					  	1,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_ENCAMP'		),
		('MNX_ODIN_Prod_Dist_Adj_Encamp',			'DISTRICT_ENCAMPMENT',		NULL,				'YIELD_PRODUCTION',		1,				0,					  	1,				'LOC_MNX_ODIN_PROD_DIST_ADJ_ENCAMP'			),
		('MNX_ODIN_Food_Dist_Adj_Encamp',			'DISTRICT_ENCAMPMENT',		NULL,				'YIELD_FOOD',			1,				0,					  	1,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_ENCAMP'			),

		-- Minor districts adjacency from Water
		('MNX_ODIN_Faith_Dist_Adj_Coast',			NULL,						'TERRAIN_COAST',	'YIELD_FAITH',			1,				0,					  	2,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_COAST'		),
		('MNX_ODIN_Gold_Dist_Adj_Coast',			NULL,						'TERRAIN_COAST',	'YIELD_GOLD',			1,				0,					  	2,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_COAST'			),
		('MNX_ODIN_Science_Dist_Adj_Coast',			NULL,						'TERRAIN_COAST',	'YIELD_SCIENCE',		1,				0,					  	2,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_COAST'		),
		('MNX_ODIN_Culture_Dist_Adj_Coast',			NULL,						'TERRAIN_COAST',	'YIELD_CULTURE',		1,				0,					  	2,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_COAST'		),
		('MNX_ODIN_Prod_Dist_Adj_Coast',			NULL,						'TERRAIN_COAST',	'YIELD_PRODUCTION',		1,				0,					  	2,				'LOC_MNX_ODIN_PROD_DIST_ADJ_COAST'			),
		('MNX_ODIN_Food_Dist_Adj_Coast',			NULL,						'TERRAIN_COAST',	'YIELD_FOOD',			1,				0,					  	2,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_COAST'			);

INSERT OR IGNORE INTO District_Adjacencies
		(DistrictType,						YieldChangeID)	
VALUES	-- Give Com-Hub back it's regular minor districts adjacency
		('DISTRICT_COMMERCIAL_HUB',			'MNX_ODIN_Gold_Dist_Reg_Adj_AnyDist'),
		
		-- Major districts adjacency from Holy Site
		('DISTRICT_HOLY_SITE',				'MNX_ODIN_Faith_Dist_Adj_HolySite'),
		('DISTRICT_HARBOR',					'MNX_ODIN_Gold_Dist_Adj_HolySite'),
		('DISTRICT_COMMERCIAL_HUB',			'MNX_ODIN_Gold_Dist_Adj_HolySite'),
		('DISTRICT_CAMPUS',					'MNX_ODIN_Science_Dist_Adj_HolySite'),
		('DISTRICT_THEATER',				'MNX_ODIN_Culture_Dist_Adj_HolySite'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_ODIN_Prod_Dist_Adj_HolySite'),
		('DISTRICT_WATERFRONT',				'MNX_ODIN_Food_Dist_Adj_HolySite'),
		
		-- Major districts adjacency from Harbor
		('DISTRICT_HOLY_SITE',				'MNX_ODIN_Faith_Dist_Adj_Harbor'),
		('DISTRICT_HARBOR',					'MNX_ODIN_Gold_Dist_Adj_Harbor'),
		--('DISTRICT_COMMERCIAL_HUB',		'MNX_ODIN_Gold_Dist_Adj_Harbor'),  -- Already receives +2 from Harbor
		('DISTRICT_CAMPUS',					'MNX_ODIN_Science_Dist_Adj_Harbor'),
		('DISTRICT_THEATER',				'MNX_ODIN_Culture_Dist_Adj_Harbor'),
		--('DISTRICT_INDUSTRIAL_ZONE',		'MNX_ODIN_Prod_Dist_Adj_Harbor'),  -- Already receives +1 from Harbor
		('DISTRICT_WATERFRONT',				'MNX_ODIN_Food_Dist_Adj_Harbor'),
		
		-- Major districts adjacency from Encampment
		('DISTRICT_HOLY_SITE',				'MNX_ODIN_Faith_Dist_Adj_Encamp'),
		('DISTRICT_HARBOR',					'MNX_ODIN_Gold_Dist_Adj_Encamp'),
		('DISTRICT_COMMERCIAL_HUB',			'MNX_ODIN_Gold_Dist_Adj_Encamp'),
		('DISTRICT_CAMPUS',					'MNX_ODIN_Science_Dist_Adj_Encamp'),
		('DISTRICT_THEATER',				'MNX_ODIN_Culture_Dist_Adj_Encamp'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_ODIN_Prod_Dist_Adj_Encamp'),
		('DISTRICT_WATERFRONT',				'MNX_ODIN_Food_Dist_Adj_Encamp'),

		-- Minor districts adjacency from Water
		('DISTRICT_HOLY_SITE',				'MNX_ODIN_Faith_Dist_Adj_Coast'),
		('DISTRICT_HARBOR',					'MNX_ODIN_Gold_Dist_Adj_Coast'),
		('DISTRICT_COMMERCIAL_HUB',			'MNX_ODIN_Gold_Dist_Adj_Coast'),
		('DISTRICT_CAMPUS',					'MNX_ODIN_Science_Dist_Adj_Coast'),
		('DISTRICT_THEATER',				'MNX_ODIN_Culture_Dist_Adj_Coast'),
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_ODIN_Prod_Dist_Adj_Coast'),
		('DISTRICT_WATERFRONT',				'MNX_ODIN_Food_Dist_Adj_Coast');

INSERT OR IGNORE INTO ExcludedAdjacencies
		(TraitType,									YieldChangeId)
VALUES	-- Remove the regular Faith and Gold district adjacencies for our Civ.
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'District_Faith'),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'District_Gold'),

		-- Remove our special adjacency bonuses for other Civs.
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Gold_Dist_Reg_Adj_AnyDist'),

		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Faith_Dist_Adj_HolySite'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Gold_Dist_Adj_HolySite'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Science_Dist_Adj_HolySite'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Culture_Dist_Adj_HolySite'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Prod_Dist_Adj_HolySite'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Food_Dist_Adj_HolySite'),

		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Faith_Dist_Adj_Harbor'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Gold_Dist_Adj_Harbor'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Science_Dist_Adj_Harbor'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Culture_Dist_Adj_Harbor'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Prod_Dist_Adj_Harbor'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Food_Dist_Adj_Harbor'),

		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Faith_Dist_Adj_Encamp'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Gold_Dist_Adj_Encamp'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Science_Dist_Adj_Encamp'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Culture_Dist_Adj_Encamp'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Prod_Dist_Adj_Encamp'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Food_Dist_Adj_Encamp'),

		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Faith_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Gold_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Science_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Culture_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Prod_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Food_Dist_Adj_Coast');
