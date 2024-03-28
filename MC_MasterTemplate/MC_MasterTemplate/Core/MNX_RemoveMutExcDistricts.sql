-- MNX_RemoveMutExcDistricts
-- Author: manux
-- DateCreated: 3/28/2024 1:28:21 AM
--------------------------------------------------------------

-- Remove Mutually Exlusive districts for the below districts.
DELETE FROM MutuallyExclusiveDistricts WHERE MutuallyExclusiveDistrict IN ('DISTRICT_ARSENAL', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX');
DELETE FROM MutuallyExclusiveDistricts WHERE District IN ('DISTRICT_ARSENAL', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX');