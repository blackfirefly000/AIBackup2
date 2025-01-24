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
Config.lspdCar = {
    ["police"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 0},
            {id = 1, primaryColor = 134, secondaryColor = 0},
            {id = 2, primaryColor = 134, secondaryColor = 0},
            {id = 3, primaryColor = 134, secondaryColor = 0},
            {id = 4, primaryColor = 134, secondaryColor = 0},
            {id = 5, primaryColor = 134, secondaryColor = 0}
        },
        extras = {
            1
        }
    },
    ["police2"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 0},
            {id = 1, primaryColor = 134, secondaryColor = 0},
            {id = 2, primaryColor = 134, secondaryColor = 0},
            {id = 3, primaryColor = 134, secondaryColor = 0},
            {id = 4, primaryColor = 134, secondaryColor = 0},
            {id = 5, primaryColor = 134, secondaryColor = 0},
            {id = 6, primaryColor = 134, secondaryColor = 0},
            {id = 7, primaryColor = 134, secondaryColor = 0}
        },
        extras = {
            1
        }
    },
    ["police3"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 0},
            {id = 1, primaryColor = 134, secondaryColor = 0},
            {id = 2, primaryColor = 134, secondaryColor = 0},
            {id = 3, primaryColor = 134, secondaryColor = 0},
            {id = 4, primaryColor = 134, secondaryColor = 0},
            {id = 5, primaryColor = 134, secondaryColor = 0},
            {id = 6, primaryColor = 134, secondaryColor = 0},
            {id = 7, primaryColor = 134, secondaryColor = 0}
        },
        extras = {
            1
        }
    },
    ["policet"] = {
        liveries = {
        },
        extras = {
        }
    },
    ["police5"] = {
        liveries = {
            {id = 1, primaryColor = 0, secondaryColor = 134},
            {id = 2, primaryColor = 0, secondaryColor = 134},
            {id = 3, primaryColor = 0, secondaryColor = 134},
            {id = 5, primaryColor = 0, secondaryColor = 134},
            {id = 18, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            3
        }
    },
    ["poldorado"] = {
        liveries = {
            {id = 1, primaryColor = 0, secondaryColor = 134},
            {id = 6, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            1
        }
    },
    ["polgauntlet"] = {
        liveries = {
            {id = 1, primaryColor = 0, secondaryColor = 134},
            {id = 14, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            3
        }
    },
    ["polimpaler5"] = {
        liveries = {
            {id = 1, primaryColor = 0, secondaryColor = 134},
            {id = 2, primaryColor = 0, secondaryColor = 134},
            {id = 4, primaryColor = 0, secondaryColor = 134},
            {id = 9, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    }
}

--Motor Unit

--peds you want motor unit officers to be
Config.lspdMotor = {'s_m_y_cop_01', 's_f_y_cop_01'}
--vehicles you want motor unit officers to use
Config.lspdBike = {
    ["policeb"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--SWAT

--peds you want SWAT officers to be
Config.lspdSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.lspdArmor = {
    ["riot"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--Air Unit

--peds you want pilots to be
Config.lspdHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.lspdHelicopter = {
    ["polmav"] = {
        liveries = {
            {id = 0, primaryColor = 0, secondaryColor = 0}
        },
        extras = {
        }
    }
}

--Marine

--peds you want marine officers to be
Config.lspdBoatOfficer = {'s_m_y_cop_01', 's_f_y_cop_01'}
--vehicles you want marine officers to use
Config.lspdBoat = {
    ["predator"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--LSSD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.lssdOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want patrol officers to use
Config.lssdCar = {
    ["sheriff"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 134},
            {id = 1, primaryColor = 134, secondaryColor = 134},
            {id = 2, primaryColor = 134, secondaryColor = 134},
            {id = 3, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            1
        },
    },
    ["sheriff2"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 134},
            {id = 1, primaryColor = 134, secondaryColor = 134},
            {id = 2, primaryColor = 134, secondaryColor = 134},
            {id = 3, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
        }
    },
    ["police5"] = {
        liveries = {
            {id = 9, primaryColor = 0, secondaryColor = 134},
            {id = 21, primaryColor = 134, secondaryColor = 134},
            {id = 26, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["poldominator10"] = {
        liveries = {
            {id = 4, primaryColor = 0, secondaryColor = 134},
            {id = 9, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["poldorado"] = {
        liveries = {
            {id = 4, primaryColor = 0, secondaryColor = 134},
            {id = 9, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            1
        }
    },
    ["polgauntlet"] = {
        liveries = {
            {id = 5, primaryColor = 0, secondaryColor = 134},
            {id = 17, primaryColor = 134, secondaryColor = 134},
            {id = 20, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["polimpaler5"] = {
        liveries = {
            {id = 7, primaryColor = 0, secondaryColor = 134},
            {id = 12, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    }
}

--Motor Unit

--peds you want motor unit officers to be
Config.lssdMotor = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want motor unit officers to use
Config.lssdBike = {
    ["policeb"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--SWAT

--peds you want SWAT officers to be
Config.lssdSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.lssdArmor = {
    ["riot"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--Air Unit

--peds you want pilots to be
Config.lssdHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.lssdHelicopter = {
    ["polmav"] = {
        liveries = {
            {id = 0, primaryColor = 0, secondaryColor = 0}
        },
        extras = {
        }
    }
}

--Marine

--peds you want marine officers to be
Config.lssdBoatOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want marine officers to use
Config.lssdBoat = {
    ["predator"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BCSO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.bcsoOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want patrol officers to use
Config.bcsoCar = {
    ["sheriff"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 134},
            {id = 1, primaryColor = 134, secondaryColor = 134},
            {id = 2, primaryColor = 134, secondaryColor = 134},
            {id = 3, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            1
        },
    },
    ["sheriff2"] = {
        liveries = {
            {id = 0, primaryColor = 134, secondaryColor = 134},
            {id = 1, primaryColor = 134, secondaryColor = 134},
            {id = 2, primaryColor = 134, secondaryColor = 134},
            {id = 3, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
        }
    },
    ["police5"] = {
        liveries = {
            {id = 9, primaryColor = 0, secondaryColor = 134},
            {id = 21, primaryColor = 134, secondaryColor = 134},
            {id = 26, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["poldominator10"] = {
        liveries = {
            {id = 4, primaryColor = 0, secondaryColor = 134},
            {id = 9, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["poldorado"] = {
        liveries = {
            {id = 4, primaryColor = 0, secondaryColor = 134},
            {id = 9, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            1
        }
    },
    ["polgauntlet"] = {
        liveries = {
            {id = 5, primaryColor = 0, secondaryColor = 134},
            {id = 17, primaryColor = 134, secondaryColor = 134},
            {id = 20, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["polimpaler5"] = {
        liveries = {
            {id = 7, primaryColor = 0, secondaryColor = 134},
            {id = 12, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    }
}

--Motor Unit

--peds you want motor unit officers to be
Config.bcsoMotor = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want motor unit officers to use
Config.bcsoBike = {
    ["policeb"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--SWAT

--peds you want SWAT officers to be
Config.bcsoSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.bcsoArmor = {
    ["riot"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--Air Unit

--peds you want pilots to be
Config.bcsoHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.bcsoHelicopter = {
    ["polmav"] = {
        liveries = {
            {id = 0, primaryColor = 0, secondaryColor = 0}
        },
        extras = {
        }
    }
}

--Marine

--peds you want marine officers to be
Config.bcsoBoatOfficer = {'s_f_y_sheriff_01', 's_m_y_sheriff_01'}
--vehicles you want marine officers to use
Config.bcsoBoat = {
    ["predator"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SAHP
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.sahpOfficer = {'s_m_y_hwaycop_01'}
--vehicles you want patrol officers to use
Config.sahpCar = {
    ["police5"] = {
        liveries = {
            {id = 7, primaryColor = 0, secondaryColor = 134},
            {id = 19, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["poldominator10"] = {
        liveries = {
            {id = 2, primaryColor = 0, secondaryColor = 134},
            {id = 7, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["poldorado"] = {
        liveries = {
            {id = 2, primaryColor = 0, secondaryColor = 134},
            {id = 7, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            1
        }
    },
    ["polgauntlet"] = {
        liveries = {
            {id = 3, primaryColor = 0, secondaryColor = 134},
            {id = 15, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    },
    ["polimpaler5"] = {
        liveries = {
            {id = 5, primaryColor = 0, secondaryColor = 134},
            {id = 10, primaryColor = 134, secondaryColor = 134}
        },
        extras = {
            2
        }
    }
}

--Motor Unit

--peds you want motor unit officers to be
Config.sahpMotor = {'s_m_y_hwaycop_01'}
--vehicles you want motor unit officers to use
Config.sahpBike = {
    ["policeb"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--SWAT

--peds you want SWAT officers to be
Config.sahpSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.sahpArmor = {
    ["riot"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--Air Unit

--peds you want pilots to be
Config.sahpHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.sahpHelicopter = {
    ["polmav"] = {
        liveries = {
            {id = 0, primaryColor = 0, secondaryColor = 0}
        },
        extras = {
        }
    }
}

--Marine

--peds you want marine officers to be
Config.sahpBoatOfficer = {'s_m_y_hwaycop_01'}
--vehicles you want marine officers to use
Config.sahpBoat = {
    ["predator"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--FIB
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Patrol

--peds you want patrol officers to be
Config.fibOfficer = {'s_m_m_fibsec_01'}
--vehicles you want patrol officers to use
Config.fibCar = {
    ["fbi"] = {
        liveries = {
        },
        extras = {
            1
        },
    },
    ["fbi2"] = {
        liveries = {
        },
        extras = {
        }
    },
    ["police4"] = {
        liveries = {
        },
        extras = {
        }
    },
    ["polgauntlet"] = {
        liveries = {
            {id = 0, primaryColor = 0, secondaryColor = 0}
        },
        extras = {
        }
    }
}

--SWAT

--peds you want SWAT officers to be
Config.fibSwat = {'s_m_y_swat_01'}
--vehicles you want SWAT officers to use
Config.fibArmor = {
    ["riot"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--Air Unit

--peds you want pilots to be
Config.fibHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.fibHelicopter = {
    ["frogger2"] = {
        liveries = {
        },
        extras = {
        }
    },
    ["annihilator"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--USCG
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Marine

--peds you want marine officers to be
Config.uscgBoatOfficer = {'s_m_y_uscg_01'}
--vehicles you want marine officers to use
Config.uscgBoat = {
    ["predator"] = {
        liveries = {
        },
        extras = {
        }
    }
}

--Air Unit

--peds you want pilots to be
Config.uscgHelicopterPilot = {'s_m_y_pilot_01', 's_m_m_pilot_02'}
--helicopters you want the air unit to use
Config.uscgHelicopter = {
    ["annihilator"] = {
        liveries = {
        },
        extras = {
        }
    }
}