--[[
Notes: READ ME PLEASE. No support will be given for issues discussed here. Please use your brain!

1. All config options support multiple values unless otherwise marked.

2. MAKE SURE the commas in your arrays are set up correctly. Usually, if you try to start the resource with a malformed config, the console will display an error that explains this, but if it's not working, check this first

3. All arrays MUST be enclosed by { }. Generally, all values are in arrays, see #1.

4. Extras and liveries are currently shared by all vehicles of their type and department. (All LSPD Patrol is the same as all LSPD Patrol but is not the same as LSPD SWAT or LSSD Patrol, etc) I may fix this, may not, idk.

5. The livery index number is related to the number at the end of the sign texture in the vehicle ytd. The livery index starts at 0. Example: car_sign_1 is a livery for "car" with an index of 0. DO NOT LEAVE BLANK

6. Greetings from Germany to all Capitalists around the World! What a nice Life we all have! REMEMBER TO FIGHT AGAINST COMMUNISM! -Mooreiche

7. Support can be found at https://discord.gg/YNJxjDMQdF
]]


Config = {}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--General Settings
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Config.VersionChecker = true --Leave true to run version check, false to disable

Config.Framework = 'Standalone' --Must be Standalone, ESX, or QBCore


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Response Types (Turn off entire response modes here) (Accepted values: true, false)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Patrol = true
Config.MotorUnit = true
Config.SwatUnit = true
Config.AirUnit = true
Config.BoatUnit = true

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Departments (Turn off entire departments here) (Accepted values: true, false)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.lspd = true
Config.lssd = true
Config.bcso = true
Config.sahp = true
Config.fib = true
Config.uscg = true

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Units (Turn off specific units here) (Accepted values: true, false)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--LSPD
Config.lspdPatrolUnit = true
Config.lspdMotorUnit = true
Config.lspdSwatUnit = true
Config.lspdAirUnit = true
Config.lspdBoatUnit = true

--LSSD
Config.lssdPatrolUnit = true
Config.lssdMotorUnit = true
Config.lssdSwatUnit = true
Config.lssdAirUnit = true
Config.lssdBoatUnit = true

--BCSO
Config.bcsoPatrolUnit = true
Config.bcsoMotorUnit = true
Config.bcsoSwatUnit = true
Config.bcsoAirUnit = true
Config.bcsoBoatUnit = true

--SAHP
Config.sahpPatrolUnit = true
Config.sahpMotorUnit = true
Config.sahpSwatUnit = true
Config.sahpAirUnit = true
Config.sahpBoatUnit = true

--FIB
Config.fibPatrolUnit = true
Config.fibSwatUnit = true
Config.fibAirUnit = true

--USCG
Config.uscgAirUnit = true
Config.uscgBoatUnit = true

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Weapons
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--weapon you want patrol officers and bike units to have. Does not support multiple values
Config.PatrolGun = 'WEAPON_COMBATPISTOL'
--weapon components you want for the above weapon - multiple components are supported
Config.PatrolGunComponent = {'component_at_pi_flsh'}

--SWAT

--weapon you want FIB and SWAT to have. Does not support multiple values
Config.SwatGun = 'WEAPON_CARBINERIFLE_MK2'
--weapon components you want for the above weapon - multiple components are supported
Config.SwatGunComponent = {'component_at_ar_flsh', 'COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING', 'COMPONENT_AT_AR_AFGRIP_02', 'COMPONENT_AT_SIGHTS', 'COMPONENT_AT_CR_BARREL_02', 'COMPONENT_AT_MUZZLE_07'}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LSPD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.lspdOfficer = {'s_m_y_cop_01', 's_f_y_cop_01'}
--vehicles you want patrol officers to use
Config.lspdCar = {'police', 'police2', 'police3', 'policet', 'polgauntlet'}
--indexes for the liveries
Config.lspdCarLivery = {1}
--Extras you want patrol vehicles to have. Currently, these are shared across all vehicles
Config.lspdCarExtras = {0, 1, 13, 17}

--Motor Unit

--peds you want motor unit officers to be
Config.lspdMotor = {'s_m_y_cop_01', 's_f_y_cop_01'}
--vehicles you want motor unit officers to use
Config.lspdBike = {'policeb'}
--indexes for the liveries
Config.lspdBikeLivery = {0}
--Extras you want motor unit vehicles to have. Currently, these are shared across all vehicles
Config.lspdBikeExtras = {}

--SWAT

--peds you want SWAT officers to be
Config.lspdSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.lspdArmor = {'riot'}
--indexes for the liveries
Config.lspdArmorLivery = {0}
--Extras you want SWAT vehicles to have. Currently, these are shared across all vehicles
Config.lspdArmorExtras = {}

--Air Unit

--peds you want pilots to be
Config.lspdHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.lspdHelicopter = {'polmav'}
--indexes for the liveries
Config.lspdHelicopterLivery = {0}

--Marine

--peds you want marine officers to be
Config.lspdBoatOfficer = {'s_m_y_cop_01', 's_f_y_cop_01'}
--vehicles you want marine officers to use
Config.lspdBoat = {'predator'}
--indexes for the liveries
Config.lspdBoatLivery = {0}
--Extras you want boats to have. Currently, these are shared across all vehicles
Config.lspdBoatExtras = {}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LSSD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.lssdOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want patrol officers to use
Config.lssdCar = {'polgauntlet', 'sheriff', 'sheriff2'}
--indexes for the liveries
Config.lssdCarLivery = {3, 4, 15, 16, 19}
--Extras you want patrol vehicles to have. Currently, these are shared across all vehicles
Config.lssdCarExtras = {}

--Motor Unit

--peds you want motor unit officers to be
Config.lssdMotor = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want motor unit officers to use
Config.lssdBike = {'policeb'}
--indexes for the liveries
Config.lssdBikeLivery = {0}
--Extras you want motor unit vehicles to have. Currently, these are shared across all vehicles
Config.lssdBikeExtras = {}

--SWAT

--peds you want SWAT officers to be
Config.lssdSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.lssdArmor = {'riot'}
--indexes for the liveries
Config.lssdArmorLivery = {0}
--Extras you want SWAT vehicles to have. Currently, these are shared across all vehicles
Config.lssdArmorExtras = {}

--Air Unit

--peds you want pilots to be
Config.lssdHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.lssdHelicopter = {'polmav'}
--indexes for the liveries
Config.lssdHelicopterLivery = {0}

--Marine

--peds you want marine officers to be
Config.lssdBoatOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want marine officers to use
Config.lssdBoat = {'predator'}
--indexes for the liveries
Config.lssdBoatLivery = {0}
--Extras you want boats to have. Currently, these are shared across all vehicles
Config.lssdBoatExtras = {}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BCSO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.bcsoOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want patrol officers to use
Config.bcsoCar = {'polgauntlet', 'sheriff', 'sheriff2'}
--indexes for the liveries
Config.bcsoCarLivery = {3, 4, 15, 16, 19}
--Extras you want patrol vehicles to have. Currently, these are shared across all vehicles
Config.bcsoCarExtras = {}

--Motor Unit

--peds you want motor unit officers to be
Config.bcsoMotor = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want motor unit officers to use
Config.bcsoBike = {'policeb'}
--indexes for the liveries
Config.bcsoBikeLivery = {0}
--Extras you want motor unit vehicles to have. Currently, these are shared across all vehicles
Config.bcsoBikeExtras = {}

--SWAT

--peds you want SWAT officers to be
Config.bcsoSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.bcsoArmor = {'riot'}
--indexes for the liveries
Config.bcsoArmorLivery = {0}
--Extras you want SWAT vehicles to have. Currently, these are shared across all vehicles
Config.bcsoArmorExtras = {}

--Air Unit

--peds you want pilots to be
Config.bcsoHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.bcsoHelicopter = {'polmav'}
--indexes for the liveries
Config.bcsoHelicopterLivery = {0}

--Marine

--peds you want marine officers to be
Config.bcsoBoatOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want marine officers to use
Config.bcsoBoat = {'predator'}
--indexes for the liveries
Config.bcsoBoatLivery = {0}
--Extras you want boats to have. Currently, these are shared across all vehicles
Config.bcsoBoatExtras = {}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SAHP
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.sahpOfficer = {'s_m_y_hwaycop_01'}
--vehicles you want patrol officers to use
Config.sahpCar = {'polgauntlet'}
--indexes for the liveries
Config.sahpCarLivery = {2, 14}
--Extras you want patrol vehicles to have. Currently, these are shared across all vehicles
Config.sahpCarExtras = {}

--Motor Unit

--peds you want motor unit officers to be
Config.sahpMotor = {'s_m_y_hwaycop_01'}
--vehicles you want motor unit officers to use
Config.sahpBike = {'policeb'}
--indexes for the liveries
Config.sahpBikeLivery = {0}
--Extras you want motor unit vehicles to have. Currently, these are shared across all vehicles
Config.sahpBikeExtras = {}

--SWAT

--peds you want SWAT officers to be
Config.sahpSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.sahpArmor = {'riot'}
--indexes for the liveries
Config.sahpArmorLivery = {0}
--Extras you want SWAT vehicles to have. Currently, these are shared across all vehicles
Config.sahpArmorExtras = {}

--Air Unit

--peds you want pilots to be
Config.sahpHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.sahpHelicopter = {'polmav'}
--indexes for the liveries
Config.sahpHelicopterLivery = {0}

--Marine

--peds you want marine officers to be
Config.sahpBoatOfficer = {'s_m_y_hwaycop_01'}
--vehicles you want marine officers to use
Config.sahpBoat = {'predator'}
--indexes for the liveries
Config.sahpBoatLivery = {0}
--Extras you want boats to have. Currently, these are shared across all vehicles
Config.sahpBoatExtras = {}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--FIB
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.fibOfficer = {'s_m_m_fibsec_01'}
--vehicles you want patrol officers to use
Config.fibCar = {'police4', 'fbi', 'fbi2'}
--indexes for the liveries
Config.fibCarLivery = {0}
--Extras you want patrol vehicles to have. Currently, these are shared across all vehicles
Config.fibCarExtras = {}

--SWAT

--peds you want SWAT officers to be
Config.fibSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.fibArmor = {'riot2'}
--indexes for the liveries
Config.fibArmorLivery = {0}
--Extras you want SWAT vehicles to have. Currently, these are shared across all vehicles
Config.fibArmorExtras = {}

--Air Unit

--peds you want pilots to be
Config.fibHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.fibHelicopter = {'frogger2', 'annihilator'}
--indexes for the liveries
Config.fibHelicopterLivery = {0}


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--USCG
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Marine

--peds you want marine officers to be
Config.uscgBoatOfficer = {'s_m_y_uscg_01'}
--vehicles you want marine officers to use
Config.uscgBoat = {'predator'}
--indexes for the liveries
Config.uscgBoatLivery = {0}
--Extras you want boats to have. Currently, these are shared across all vehicles
Config.uscgBoatExtras = {}

--Air Unit

--peds you want pilots to be
Config.uscgHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.uscgHelicopter = {'annihilator'}
--indexes for the liveries
Config.uscgHelicopterLivery = {0}