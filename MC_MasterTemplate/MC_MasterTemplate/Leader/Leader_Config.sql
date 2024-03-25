/*
	Core Leader Configuration
	Authors: MC
*/

-----------------------------------------------
-- Players (Base Game / Vanilla)

-- The below section instructs the game to make this leader available as a selection when running the base-game ruleset.

-- Every value inserted into the Players table is locally-defined in this mod - if working through 'in order' these should all be familiar by this stage.

-- Please note: this is commented-out, as this example is only compatible with Gathering Storm and above. I've left this in as an example.
-----------------------------------------------

--INSERT INTO Players (CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
--VALUES	(	
		-- Civilization
--		'CIVILIZATION_MNX_NORSE', -- CivilizationType
--		'LOC_CIVILIZATION_MNX_NORSE_NAME', -- CivilizationName
--		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationIcon
--		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_NAME', -- CivilizationAbilityName
--		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_DESCRIPTION', -- CivilizationAbilityDescription
--		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationAbilityIcon
		
		-- Leader
--		'LEADER_MNX_NORSE', -- LeaderType
--		'LOC_LEADER_MNX_NORSE_NAME', -- LeaderName
--		'ICON_LEADER_MNX_NORSE', -- LeaderIcon (Portrait)
--		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_NAME', -- LeaderAbilityName
--		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_DESCRIPTION', -- LeaderAbilityDescription
--		'ICON_LEADER_MNX_NORSE' -- LeaderAbilityIcon
--		);

-----------------------------------------------
-- Players (Rise & Fall)

-- The below section instructs the game to make this leader available as a selection when running the Rise & Fall ruleset.

-- This is identical to the above, except for the additional Domain value - which instructs the game to which expansion this leader becomes available.

-- Please note: this is commented-out, as this example is only compatible with Gathering Storm and above. I've left this in as an example.
-----------------------------------------------

--INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
--VALUES	(	
		-- Civilization
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_MNX_NORSE', -- CivilizationType
--		'LOC_CIVILIZATION_MNX_NORSE_NAME', -- CivilizationName
--		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationIcon
--		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_NAME', -- CivilizationAbilityName
--		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_DESCRIPTION', -- CivilizationAbilityDescription
--		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationAbilityIcon
		
		-- Leader
--		'LEADER_MNX_NORSE', -- LeaderType
--		'LOC_LEADER_MNX_NORSE_NAME', -- LeaderName
--		'ICON_LEADER_MNX_NORSE', -- LeaderIcon (Portrait)
--		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_NAME', -- LeaderAbilityName
--		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_DESCRIPTION', -- LeaderAbilityDescription
--		'ICON_LEADER_MNX_NORSE' -- LeaderAbilityIcon
--		);

-----------------------------------------------
-- Players (Gathering Storm)

-- The below section instructs the game to make this leader available as a selection when running the Gathering Storm ruleset.

-- This is identical to the Rise & Fall entry, directly above - though in this case, the Domain is Players:Expansion2_Players, which refers to Gathering Storm.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	/*(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MNX_NORSE', -- CivilizationType
		'LOC_CIVILIZATION_MNX_NORSE_NAME', -- CivilizationName
		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_MNX_NORSE', -- LeaderType
		'LOC_LEADER_MNX_NORSE_NAME', -- LeaderName
		'ICON_LEADER_MNX_NORSE', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_MC_FEAR_NOT_EXPLORATION_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_MNX_NORSE' -- LeaderAbilityIcon
		),*/
		
		-- Original Hardrada Thunderbolt
		-- Can only have of of these per leader/civ pair
		(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MNX_NORSE', -- CivilizationType
		'LOC_CIVILIZATION_MNX_NORSE_NAME', -- CivilizationName
		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationIcon
		--'LOC_TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION_NAME', -- CivilizationAbilityName
		--'LOC_TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION_DESCRIPTION', -- CivilizationAbilityDescription
		'LOC_TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_MNX_SONS_OF_ODIN_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_MNX_NORSE', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_MNX_NORSE', -- LeaderType
		'LOC_LEADER_MNX_NORSE_NAME', -- LeaderName
		'ICON_LEADER_MNX_NORSE', -- LeaderIcon (Portrait)
		--'LOC_TRAIT_LEADER_THUNDERBOLT_NAME', -- LeaderAbilityName
		--'LOC_TRAIT_LEADER_THUNDERBOLT_EXPANSION2_DESCRIPTION', -- LeaderAbilityDescription
		'LOC_TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_MNX_EXPLORE_AND_CONQUER_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_MNX_NORSE' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems (Base Game / Vanilla)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- As above, I have commented-out this section as this template requires the Gathering Storm expansion.
-----------------------------------------------

--INSERT INTO PlayerItems
--		(CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
--VALUES	(
--		'CIVILIZATION_MNX_NORSE', -- CivilizationType
--		'LEADER_MNX_NORSE', -- LeaderType
--		'UNIT_MC_WEREJAGUAR', -- Type
--		'ICON_UNIT_MC_WEREJAGUAR', -- Icon
--		'LOC_UNIT_MC_WEREJAGUAR_NAME', -- Name
--		'LOC_UNIT_MC_WEREJAGUAR_DESCRIPTION', -- Description
--		10	-- SortIndex
--		),
--		
--		(
--		'CIVILIZATION_MNX_NORSE', -- CivilizationType
--		'LEADER_MNX_NORSE', -- LeaderType
--		'IMPROVEMENT_COLOSSAL_HEAD', -- Type
--		'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
--		20 -- SortIndex
--		);
		
-----------------------------------------------
-- PlayerItems (Rise & Fall)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.

-- Again, this is commented-out as this template requires the Gathering Storm expansion.
-----------------------------------------------

--INSERT INTO PlayerItems
--		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
--VALUES	(
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_MNX_NORSE', -- CivilizationType
--		'LEADER_MNX_NORSE', -- LeaderType
--		'UNIT_MC_WEREJAGUAR', -- Type
--		'ICON_UNIT_MC_WEREJAGUAR', -- Icon
--		'LOC_UNIT_MC_WEREJAGUAR_NAME', -- Name
--		'LOC_UNIT_MC_WEREJAGUAR_DESCRIPTION', -- Description
--		10	-- SortIndex
--		),
--		
--		(
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_MNX_NORSE', -- CivilizationType
--		'LEADER_MNX_NORSE', -- LeaderType
--		'IMPROVEMENT_COLOSSAL_HEAD', -- Type
--		'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
--		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
--		20 -- SortIndex
--		);

-----------------------------------------------
-- PlayerItems (Gathering Storm)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MNX_NORSE', -- CivilizationType
		'LEADER_MNX_NORSE', -- LeaderType
		'UNIT_MC_WEREJAGUAR', -- Type
		'ICON_UNIT_MC_WEREJAGUAR', -- Icon
		'LOC_UNIT_MC_WEREJAGUAR_NAME', -- Name
		'LOC_UNIT_MC_WEREJAGUAR_DESCRIPTION', -- Description
		--10	-- SortIndex
		50	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MNX_NORSE', -- CivilizationType
		'LEADER_MNX_NORSE', -- LeaderType
		'IMPROVEMENT_COLOSSAL_HEAD', -- Type
		'ICON_IMPROVEMENT_COLOSSAL_HEAD', -- Icon
		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME', -- Name
		'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION', -- Description
		--20 -- SortIndex
		60 -- SortIndex
		);

-- Add all player items from LEADER_HARDRADA
INSERT INTO PlayerItems
		(Domain,	CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex)
SELECT	Domain,		'CIVILIZATION_MNX_NORSE',	'LEADER_MNX_NORSE',		Type, Icon, Name, Description, SortIndex
FROM	PlayerItems
WHERE	LeaderType='LEADER_HARDRADA' AND Domain='Players:Expansion2_Players' AND Type NOT IN ('MIK_IMPROVEMENT_NWY_SHIP');

-- Add player items of other civs that unlock unique naval units
INSERT INTO PlayerItems
		(Domain,	CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex)
SELECT	Domain,		'CIVILIZATION_MNX_NORSE',	'LEADER_MNX_NORSE',		Type, Icon, Name, Description, SortIndex
FROM	PlayerItems
WHERE	Type='UNIT_BYZANTINE_DROMON' AND Domain='Players:Expansion2_Players';

INSERT INTO PlayerItems
		(Domain,	CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex)
SELECT	Domain,		'CIVILIZATION_MNX_NORSE',	'LEADER_MNX_NORSE',		Type, Icon, Name, Description, SortIndex
FROM	PlayerItems
WHERE	Type='UNIT_ENGLISH_SEADOG' AND Domain='Players:Expansion2_Players';

INSERT INTO PlayerItems
		(Domain,	CivilizationType,			LeaderType,				Type, Icon, Name, Description, SortIndex)
SELECT	Domain,		'CIVILIZATION_MNX_NORSE',	'LEADER_MNX_NORSE',		Type, Icon, Name, Description, SortIndex
FROM	PlayerItems
WHERE	Type='UNIT_GERMAN_UBOAT' AND Domain='Players:Expansion2_Players';