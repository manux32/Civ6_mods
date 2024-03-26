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
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',			'KIND_TRAIT'	),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',		'KIND_TRAIT'	);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,									Name,												Description														)
VALUES	('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',		'LOC_TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN_NAME',		'LOC_TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN_DESCRIPTION'			);

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
		-- Norway Traits
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_BUILDING_STAVE_CHURCH'		),
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_NORWEGIAN_BERSERKER'	),
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION'		),
		-- Other civs unique naval units
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_BYZANTINE_DROMON'		),
		('CIVILIZATION_MNX_NORSE',		'TRAIT_CIVILIZATION_UNIT_ENGLISH_SEADOG'		),
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
VALUES	('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY'				),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MOD_MNX_ODIN_HARBOR_2X_ADJACENCY'					),

		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD'		),
		('TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN',				'MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD'		);

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
		(ModifierId,											ModifierType,											RunOnce,		Permanent	)
VALUES	('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',					'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',			0,				1			),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',					'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY',			0,				1			),

		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	0,				1			);

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
VALUES	('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'DistrictType',					'DISTRICT_HOLY_SITE'								),
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'YieldType',					'YIELD_FAITH'										),
		--('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',					'OtherDistrictAdjacent',		1													),
		--('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',					'TilesRequired',				1													),
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'Amount',						1													),
		('MOD_MNX_ODIN_HOLYSITE_2X_ADJACENCY',						'Description',					'LOC_MNX_ODIN_HOLYSITE_2X_DISTRICTS_ADJACENCY'		),

		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'DistrictType',					'DISTRICT_HARBOR'									),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'YieldType',					'YIELD_GOLD'										),
		--('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'OtherDistrictAdjacent',		1													),
		--('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'TilesRequired',				1													),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'Amount',						1													),
		('MOD_MNX_ODIN_HARBOR_2X_ADJACENCY',						'Description',					'LOC_MNX_ODIN_HARBOR_2X_DISTRICTS_ADJACENCY'		),

		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'BuildingType',					'BUILDING_SHRINE'									),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'YieldType',					'YIELD_FOOD'										),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_SHRINE_YIELD',			'Amount',						2													),

		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'BuildingType',					'BUILDING_TEMPLE'									),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'YieldType',					'YIELD_FOOD'										),
		('MODIFIER_MC_LET_THE_GODS_FEED_US_TEMPLE_YIELD',			'Amount',						2													);


-----------------------------------------------
-- Districts special adjacencies
-----------------------------------------------
INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,										AdjacentDistrict,		AdjacentTerrain,	YieldType,				YieldChange,	OtherDistrictAdjacent,	TilesRequired,	Description									)
VALUES	-- To give Com-Hub back it's regular minor districts adjacency
		('MNX_ODIN_Gold_Dist_Reg_Adj_AnyDist',		NULL,					NULL,				'YIELD_GOLD',			1,				1,					  	2,				'LOC_MNX_ODIN_GOLD_DIST_REG_ADJ_ANY_DIST'	),
		
		-- Major districts adjacency from Holy Site
		('MNX_ODIN_Faith_Dist_Adj_HolySite',		'DISTRICT_HOLY_SITE',	NULL,				'YIELD_FAITH',			1,				0,					  	1,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_HOLYSITE'		),
		('MNX_ODIN_Gold_Dist_Adj_HolySite',			'DISTRICT_HOLY_SITE',	NULL,				'YIELD_GOLD',			1,				0,					  	1,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_HOLYSITE'		),
		('MNX_ODIN_Science_Dist_Adj_HolySite',		'DISTRICT_HOLY_SITE',	NULL,				'YIELD_SCIENCE',		1,				0,					  	1,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_HOLYSITE'	),
		('MNX_ODIN_Culture_Dist_Adj_HolySite',		'DISTRICT_HOLY_SITE',	NULL,				'YIELD_CULTURE',		1,				0,					  	1,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_HOLYSITE'	),
		('MNX_ODIN_Prod_Dist_Adj_HolySite',			'DISTRICT_HOLY_SITE',	NULL,				'YIELD_PRODUCTION',		1,				0,					  	1,				'LOC_MNX_ODIN_PROD_DIST_ADJ_HOLYSITE'		),
		('MNX_ODIN_Food_Dist_Adj_HolySite',			'DISTRICT_HOLY_SITE',	NULL,				'YIELD_FOOD',			1,				0,					  	1,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_HOLYSITE'		),

		-- Major districts adjacency from Harbor
		('MNX_ODIN_Faith_Dist_Adj_Harbor',			'DISTRICT_HARBOR',		NULL,				'YIELD_FAITH',			1,				0,					  	1,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_HARBOR'		),
		('MNX_ODIN_Gold_Dist_Adj_Harbor',			'DISTRICT_HARBOR',		NULL,				'YIELD_GOLD',			1,				0,					  	1,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_HARBOR'			),
		('MNX_ODIN_Science_Dist_Adj_Harbor',		'DISTRICT_HARBOR',		NULL,				'YIELD_SCIENCE',		1,				0,					  	1,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_HARBOR'		),
		('MNX_ODIN_Culture_Dist_Adj_Harbor',		'DISTRICT_HARBOR',		NULL,				'YIELD_CULTURE',		1,				0,					  	1,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_HARBOR'		),
		('MNX_ODIN_Prod_Dist_Adj_Harbor',			'DISTRICT_HARBOR',		NULL,				'YIELD_PRODUCTION',		1,				0,					  	1,				'LOC_MNX_ODIN_PROD_DIST_ADJ_HARBOR'			),
		('MNX_ODIN_Food_Dist_Adj_Harbor',			'DISTRICT_HARBOR',		NULL,				'YIELD_FOOD',			1,				0,					  	1,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_HARBOR'			),

		-- Minor districts adjacency from Water
		('MNX_ODIN_Faith_Dist_Adj_Coast',			NULL,					'TERRAIN_COAST',	'YIELD_FAITH',			1,				0,					  	2,				'LOC_MNX_ODIN_FAITH_DIST_ADJ_COAST'		),
		('MNX_ODIN_Gold_Dist_Adj_Coast',			NULL,					'TERRAIN_COAST',	'YIELD_GOLD',			1,				0,					  	2,				'LOC_MNX_ODIN_GOLD_DIST_ADJ_COAST'			),
		('MNX_ODIN_Science_Dist_Adj_Coast',			NULL,					'TERRAIN_COAST',	'YIELD_SCIENCE',		1,				0,					  	2,				'LOC_MNX_ODIN_SCIENCE_DIST_ADJ_COAST'		),
		('MNX_ODIN_Culture_Dist_Adj_Coast',			NULL,					'TERRAIN_COAST',	'YIELD_CULTURE',		1,				0,					  	2,				'LOC_MNX_ODIN_CULTURE_DIST_ADJ_COAST'		),
		('MNX_ODIN_Prod_Dist_Adj_Coast',			NULL,					'TERRAIN_COAST',	'YIELD_PRODUCTION',		1,				0,					  	2,				'LOC_MNX_ODIN_PROD_DIST_ADJ_COAST'			),
		('MNX_ODIN_Food_Dist_Adj_Coast',			NULL,					'TERRAIN_COAST',	'YIELD_FOOD',			1,				0,					  	2,				'LOC_MNX_ODIN_FOOD_DIST_ADJ_COAST'			);

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
		('DISTRICT_INDUSTRIAL_ZONE',		'MNX_ODIN_Prod_Dist_Adj_Harbor'),
		('DISTRICT_WATERFRONT',				'MNX_ODIN_Food_Dist_Adj_Harbor'),
		
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

		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Faith_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Gold_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Science_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Culture_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Prod_Dist_Adj_Coast'),
		('TRAIT_MNX_ODIN_EXCLUDE_DIST_ADJ_BONUS',	'MNX_ODIN_Food_Dist_Adj_Coast');
