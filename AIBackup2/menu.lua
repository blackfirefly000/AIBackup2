menuPool = NativeUI.CreatePool()
backupMenu = NativeUI.CreateMenu("AI Backup Menu", "Spawn AI Officers for Backup")
menuPool:Add(backupMenu)
menuPool:MouseControlsEnabled (false)
menuPool:MouseEdgeEnabled (false)
menuPool:ControlDisablingEnabled(false)

if Config.Patrol then
    function PatrolItem(menu) 
        local submenu = menuPool:AddSubMenu(menu, "Patrol Backup") 
        if Config.lspd and Config.lspdPatrolUnit then
            local lspdItem = UIMenuItem.New("LSPD", "Call LSPD Patrol Backup")
            lspdItem.Activated = function(sender, item)
                if item == lspdItem then
                    policeman = Config.lspdOfficer[math.random(#Config.lspdOfficer)]
                    police =  Config.lspdCar[math.random(#Config.lspdCar)]
                    livery = Config.lspdCarLivery[math.random(#Config.lspdCarLivery)]
                    extras = Config.lspdCarExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSPD patrol unit is en route to assist")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(lspdItem)
        end
        if Config.lssd and Config.lssdPatrolUnit then    
            local lssdItem = UIMenuItem.New("LSSD", "Call LSSD Patrol Backup")
            lssdItem.Activated = function(sender, item)
                if item == lssdItem then
                    policeman = Config.lssdOfficer[math.random(#Config.lssdOfficer)]
                    police =  Config.lssdCar[math.random(#Config.lssdCar)]
                    livery = Config.lssdCarLivery[math.random(#Config.lssdCarLivery)]
                    extras = Config.lssdCarExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSSD patrol unit is en route to assist.")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(lssdItem)
        end
        if Config.bcso and Config.bcsoPatrolUnit then   
            local bcsoItem = UIMenuItem.New("BCSO", "Call BCSO Patrol Backup")
            bcsoItem.Activated = function(sender, item)
                if item == bcsoItem then
                    policeman = Config.bcsoOfficer[math.random(#Config.bcsoOfficer)]
                    police =  Config.bcsoCar[math.random(#Config.bcsoCar)]
                    livery = Config.bcsoCarLivery[math.random(#Config.bcsoCarLivery)]
                    extras = Config.bcsoCarExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A BCSO patrol unit is en route to assist.")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(bcsoItem)
        end
        if Config.sahp and Config.sahpPatrolUnit then 
            local sahpItem = UIMenuItem.New("SAHP", "Call SAHP Patrol Backup")
            sahpItem.Activated = function(sender, item)
                if item == sahpItem then
                    policeman = Config.sahpOfficer[math.random(#Config.sahpOfficer)]
                    police =  Config.sahpCar[math.random(#Config.sahpCar)]
                    livery = Config.sahpCarLivery[math.random(#Config.sahpCarLivery)]
                    extras = Config.sahpCarExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A SAHP patrol unit is en route to assist.")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(sahpItem)
        end
        if Config.fib and Config.fibPatrolUnit then 
            local fibItem = UIMenuItem.New("FIB", "Call FIB Patrol Backup")
            fibItem.Activated = function(sender, item)
                if item == fibItem then
                    policeman = Config.fibOfficer[math.random(#Config.fibOfficer)]
                    police =  Config.fibCar[math.random(#Config.fibCar)]
                    livery = Config.fibCarLivery[math.random(#Config.fibCarLivery)]
                    extras = Config.fibCarExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A FIB unit is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(fibItem)
        end        
        menuPool:MouseControlsEnabled (false)
        menuPool:MouseEdgeEnabled (false)
        menuPool:ControlDisablingEnabled(false)
    end
    PatrolItem(backupMenu)
end
if Config.MotorUnit then
    function MotorItem(menu) 
    local submenu = menuPool:AddSubMenu(menu, "Motor Unit Backup") 
    if Config.lspd and Config.lspdMotorUnit then
        local lspdMotorItem = UIMenuItem.New("LSPD", "Call LSPD Motor Unit Backup")
        lspdMotorItem.Activated = function(sender, item)
            if item == lspdMotorItem then
            policeman = Config.lspdMotor[math.random(#Config.lspdMotor)]
            police =  Config.lspdBike[math.random(#Config.lspdBike)]
            livery = Config.lspdBikeLivery[math.random(#Config.lspdBikeLivery)]
            extras = Config.lspdBikeExtras
            weapon = Config.PatrolGun
            gunComponent = Config.PatrolGunComponent
            pedtype = 6
            ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSPD motorcycle unit is en route to assist.")
            TriggerEvent('POL:Spawn', player) 
            end
        end
        submenu:AddItem(lspdMotorItem)
    end
    if Config.lssd and Config.lssdMotorUnit then
        local lssdMotorItem = UIMenuItem.New("LSSD", "Call LSSD Motor Unit Backup")
        lssdMotorItem.Activated = function(sender, item)
            if item == lssdMotorItem then
            policeman = Config.lssdMotor[math.random(#Config.lssdMotor)]
            police =  Config.lssdBike[math.random(#Config.lssdBike)]
            livery = Config.lssdBikeLivery[math.random(#Config.lssdBikeLivery)]
            extras = Config.lssdBikeExtras
            weapon = Config.PatrolGun
            gunComponent = Config.PatrolGunComponent
            pedtype = 6
            ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSSD motorcycle unit is en route to assist.")
            TriggerEvent('POL:Spawn', player) 
            end
        end
        submenu:AddItem(lssdMotorItem)
    end
    if Config.bcso and Config.bcsoMotorUnit then
        local bcsoMotorItem = UIMenuItem.New("BCSO", "Call BCSO Motor Unit Backup")
        bcsoMotorItem.Activated = function(sender, item)
            if item == bcsoMotorItem then
            policeman = Config.bcsoMotor[math.random(#Config.bcsoMotor)]
            police =  Config.bcsoBike[math.random(#Config.bcsoBike)]
            livery = Config.bcsoBikeLivery[math.random(#Config.bcsoBikeLivery)]
            extras = Config.bcsoBikeExtras
            weapon = Config.PatrolGun
            gunComponent = Config.PatrolGunComponent
            pedtype = 6
            ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A BCSO motorcycle unit is en route to assist.")
            TriggerEvent('POL:Spawn', player) 
            end
        end
        submenu:AddItem(bcsoMotorItem)
    end
    if Config.sahp and Config.sahpMotorUnit then
        local sahpMotorItem = UIMenuItem.New("SAHP", "Call SAHP Motor Unit Backup")
        sahpMotorItem.Activated = function(sender, item)
                if item == sahpMotorItem then
                policeman = Config.sahpMotor[math.random(#Config.sahpMotor)]
                police =  Config.sahpBike[math.random(#Config.sahpBike)]
                livery = Config.sahpBikeLivery[math.random(#Config.sahpBikeLivery)]
                extras = Config.sahpBikeExtras
                weapon = Config.PatrolGun
                gunComponent = Config.PatrolGunComponent
                pedtype = 6
                ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A SAHP motorcycle unit is en route to assist.")
                TriggerEvent('POL:Spawn', player) 
                end
        end
        submenu:AddItem(sahpMotorItem)
    end   
    menuPool:MouseControlsEnabled (false)
    menuPool:MouseEdgeEnabled (false)
    menuPool:ControlDisablingEnabled(false)
    end
    MotorItem(backupMenu)
end
if Config.SwatUnit then
    function SwatItem(menu) 
        local submenu = menuPool:AddSubMenu(menu, "SWAT Backup") 
        if Config.lspd and Config.lspdSwatUnit then
            local lspdSwatItem = UIMenuItem.New("LSPD", "Call LSPD SWAT Backup")
            lspdSwatItem.Activated = function(sender, item)
                if item == lspdSwatItem then
                    policeman = Config.lspdSwat[math.random(#Config.lspdSwat)] 
                    police = Config.lspdArmor[math.random(#Config.lspdArmor)]
                    livery = Config.lspdArmorLivery[math.random(#Config.lspdArmorLivery)]
                    extras = Config.lspdArmorExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "The LSPD SWAT Team is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(lspdSwatItem)
        end
        if Config.lssd and Config.lssdSwatUnit then
            local lssdSwatItem = UIMenuItem.New("LSSD", "Call LSSD SWAT Backup")
            lssdSwatItem.Activated = function(sender, item)
                if item == lssdSwatItem then
                    policeman = Config.lssdSwat[math.random(#Config.lssdSwat)] 
                    police = Config.lssdArmor[math.random(#Config.lssdArmor)]
                    livery = Config.lssdArmorLivery[math.random(#Config.lssdArmorLivery)]
                    extras = Config.lssdArmorExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "The LSSD SWAT Team is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(lssdSwatItem)
        end
        if Config.bcso and Config.bcsoSwatUnit then
            local bcsoSwatItem = UIMenuItem.New("BCSO", "Call BCSO SWAT Backup")
            bcsoSwatItem.Activated = function(sender, item)
                if item == bcsoSwatItem then
                    policeman = Config.bcsoSwat[math.random(#Config.bcsoSwat)] 
                    police = Config.bcsoArmor[math.random(#Config.bcsoArmor)]
                    livery = Config.bcsoArmorLivery[math.random(#Config.bcsoArmorLivery)]
                    extras = Config.bcsoArmorExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "The BCSO SWAT Team is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(bcsoSwatItem)
        end
        if Config.sahp and Config.sahpSwatUnit then
            local sahpSwatItem = UIMenuItem.New("SAHP", "Call SAHP SWAT Backup")
            sahpSwatItem.Activated = function(sender, item)
                if item == sahpSwatItem then
                    policeman = Config.sahpSwat[math.random(#Config.sahpSwat)] 
                    police = Config.sahpArmor[math.random(#Config.sahpArmor)]
                    livery = Config.sahpArmorLivery[math.random(#Config.sahpArmorLivery)]
                    extras = Config.sahpArmorExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "The SAHP SWAT Team is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(sahpSwatItem)
        end
        if Config.fib and Config.fibSwatUnit then
            local fibSwatItem = UIMenuItem.New("FIB", "Call FIB SWAT Backup")
            fibSwatItem.Activated = function(sender, item)
                if item == fibSwatItem then
                    policeman = Config.fibSwat[math.random(#Config.fibSwat)] 
                    police = Config.fibArmor[math.random(#Config.fibArmor)]
                    livery = Config.fibArmorLivery[math.random(#Config.fibArmorLivery)]
                    extras = Config.fibArmorExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 29
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "The FIB SWAT Team is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(fibSwatItem)
        end         
        menuPool:MouseControlsEnabled(false)
        menuPool:MouseEdgeEnabled(false)
        menuPool:ControlDisablingEnabled(false)
    end
    SwatItem(backupMenu)
end
if Config.AirUnit then
    function AirItem(menu) 
        local submenu = menuPool:AddSubMenu(menu, "Air Support")
        if Config.lspd and Config.lspdAirUnit then 
            local lspdAirItem = UIMenuItem.New("LSPD", "Call LSPD Air Support")
            lspdAirItem.Activated = function(sender, item)
                if item == lspdAirItem then
                    pilot = Config.lspdHelicopterPilot[math.random(#Config.lspdHelicopterPilot)]
                    helicopter = Config.lspdHelicopter[math.random(#Config.lspdHelicopter)]
                    livery = Config.lspdHelicopterLivery[math.random(#Config.lspdHelicopterLivery)]
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSPD air unit is en route to assist.")
                    TriggerEvent('POLMav:Spawn', player)
                end
            end
            submenu:AddItem(lspdAirItem)
        end
        if Config.lssd and Config.lssdAirUnit then 
            local lssdAirItem = UIMenuItem.New("LSSD", "Call LSSD Air Support")
            lssdAirItem.Activated = function(sender, item)
                if item == lssdAirItem then
                    pilot = Config.lssdHelicopterPilot[math.random(#Config.lssdHelicopterPilot)]
                    helicopter = Config.lssdHelicopter[math.random(#Config.lssdHelicopter)]
                    livery = Config.lssdHelicopterLivery[math.random(#Config.lssdHelicopterLivery)]
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSSD air unit is en route to assist.")
                    TriggerEvent('POLMav:Spawn', player)
                end
            end
            submenu:AddItem(lssdAirItem)
        end
        if Config.bcso and Config.bcsoAirUnit then 
            local bcsoAirItem = UIMenuItem.New("BCSO", "Call BCSO Air Support")
            bcsoAirItem.Activated = function(sender, item)
                if item == bcsoAirItem then
                    pilot = Config.bcsoHelicopterPilot[math.random(#Config.bcsoHelicopterPilot)]
                    helicopter = Config.bcsoHelicopter[math.random(#Config.bcsoHelicopter)]
                    livery = Config.bcsoHelicopterLivery[math.random(#Config.bcsoHelicopterLivery)]
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A BCSO air unit is en route to assist.")
                    TriggerEvent('POLMav:Spawn', player)
                end
            end
            submenu:AddItem(bcsoAirItem)
        end
        if Config.sahp and Config.sahpAirUnit then 
            local sahpAirItem = UIMenuItem.New("SAHP", "Call SAHP Air Support")
            sahpAirItem.Activated = function(sender, item)
                if item == sahpAirItem then
                    pilot = Config.sahpHelicopterPilot[math.random(#Config.sahpHelicopterPilot)]
                    helicopter = Config.sahpHelicopter[math.random(#Config.sahpHelicopter)]
                    livery = Config.sahpHelicopterLivery[math.random(#Config.sahpHelicopterLivery)]
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A SAHP air unit is en route to assist.")
                    TriggerEvent('POLMav:Spawn', player)
                end
            end
            submenu:AddItem(sahpAirItem)
        end
        if Config.fib and Config.fibAirUnit then
            local fibAirItem = UIMenuItem.New("FIB", "Call FIB Air Support")
            fibAirItem.Activated = function(sender, item)
                if item == fibAirItem then
                    pilot = Config.fibHelicopterPilot[math.random(#Config.fibHelicopterPilot)]
                    helicopter = Config.fibHelicopter[math.random(#Config.fibHelicopter)]
                    livery = Config.fibHelicopterLivery[math.random(#Config.fibHelicopterLivery)]
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A FIB air unit is en route to assist.")
                    TriggerEvent('POLMav:Spawn', player)
                end
            end
            submenu:AddItem(fibAirItem)
        end
        if Config.uscg and Config.uscgAirUnit then
            local uscgAirItem = UIMenuItem.New("USCG", "Call USCG Air Support")
            uscgAirItem.Activated = function(sender, item)
                if item == uscgAirItem then
                    pilot = Config.uscgHelicopterPilot[math.random(#Config.uscgHelicopterPilot)]
                    helicopter = Config.uscgHelicopter[math.random(#Config.uscgHelicopter)]
                    livery = Config.uscgHelicopterLivery[math.random(#Config.uscgHelicopterLivery)]
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A USCG air unit is en route to assist.")
                    TriggerEvent('POLMav:Spawn', player)
                end
            end
            submenu:AddItem(uscgAirItem)
        end
        menuPool:MouseControlsEnabled(false)
        menuPool:MouseEdgeEnabled(false)
        menuPool:ControlDisablingEnabled(false)
    end
    AirItem(backupMenu)
end
if Config.BoatUnit then
    function BoatItem(menu) 
        local submenu = menuPool:AddSubMenu(menu, "Marine Backup") 
        if Config.lspdBoatUnit and Config.lspd then
            local lspdBoatItem = UIMenuItem.New("LSPD", "Call LSPD Marine Backup")
            lspdBoatItem.Activated = function(sender, item)
                if item == lspdBoatItem then
                    boatResponse = true
                    policeman = Config.lspdBoatOfficer[math.random(#Config.lspdBoatOfficer)]
                    police =  Config.lspdBoat[math.random(#Config.lspdBoat)]
                    livery = Config.lspdBoatLivery[math.random(#Config.lspdBoatLivery)]
                    extras = Config.lspdBoatExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSPD boat is en route to assist")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(lspdBoatItem)
        end
        if Config.lssdBoatUnit and Config.lssd then
            local lssdBoatItem = UIMenuItem.New("LSSD", "Call LSSD Marine Backup")
            lssdBoatItem.Activated = function(sender, item)
                if item == lssdItem then
                    boatResponse = true
                    policeman = Config.lssdBoatOfficer[math.random(#Config.lssdBoatOfficer)]
                    police =  Config.lssdBoat[math.random(#Config.lssdBoat)]
                    livery = Config.lssdBoatLivery[math.random(#Config.lssdBoatLivery)]
                    extras = Config.lssdBoatExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A LSSD boat is en route to assist.")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(lssdBoatItem)
        end
        if Config.bcsoBoatUnit and Config.bcso then
            local bcsoBoatItem = UIMenuItem.New("BCSO", "Call BCSO Marine Backup")
            bcsoBoatItem.Activated = function(sender, item)
                if item == bcsoBoatItem then
                    boatResponse = true
                    policeman = Config.bcsoBoatOfficer[math.random(#Config.bcsoBoatOfficer)]
                    police =  Config.bcsoBoat[math.random(#Config.bcsoBoat)]
                    livery = Config.bcsoBoatLivery[math.random(#Config.bcsoBoatLivery)]
                    extras = Config.bcsoBoatExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A BCSO boat is en route to assist.")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(bcsoBoatItem)
        end
        if Config.sahpBoatUnit and Config.sahp then
            local sahpBoatItem = UIMenuItem.New("SAHP", "Call SAHP Marine Backup")
            sahpBoatItem.Activated = function(sender, item)
                if item == sahpBoatItem then
                    boatResponse = true
                    policeman = Config.sahpBoatOfficer[math.random(#Config.sahpBoatOfficer)]
                    police =  Config.sahpBoat[math.random(#Config.sahpBoat)]
                    livery = Config.sahpBoatLivery[math.random(#Config.sahpBoatLivery)]
                    extras = Config.sahpBoatExtras
                    weapon = Config.PatrolGun
                    gunComponent = Config.PatrolGunComponent
                    pedtype = 6
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A SAHP boat is en route to assist.")
                    TriggerEvent('POL:Spawn', player) 
                end
            end
            submenu:AddItem(sahpBoatItem)
        end
        if Config.uscgBoatUnit and Config.uscg then
            local uscgBoatItem = UIMenuItem.New("USCG", "Call USCG Marine Backup")
            uscgBoatItem.Activated = function(sender, item)
                if item == uscgBoatItem then
                    boatResponse = true
                    policeman = Config.uscgBoatOfficer[math.random(#Config.uscgBoatOfficer)]
                    police =  Config.uscgBoat[math.random(#Config.uscgBoat)]
                    livery = Config.uscgBoatLivery[math.random(#Config.uscgBoatLivery)]
                    extras = Config.uscgBoatExtras
                    weapon = Config.SwatGun
                    gunComponent = Config.SwatGunComponent
                    pedtype = 27
                    ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A USCG boat is en route to assist.")
                    TriggerEvent('POL:Spawn', player)
                end
            end
            submenu:AddItem(uscgBoatItem)
        end
        menuPool:MouseControlsEnabled (false)
        menuPool:MouseEdgeEnabled (false)
        menuPool:ControlDisablingEnabled(false)
    end
    BoatItem(backupMenu)
end
function Code4Item(menu)
    local codeFour = UIMenuItem.New("~r~Code 4", "Dismiss Backup")
    menu:AddItem(codeFour)
    menu.OnItemSelect = function(sender, item, index)
        if item == codeFour then
            LeaveScene()
            backupMenu:Visible(not backupMenu:Visible())
        end
    end
end
Code4Item(backupMenu)
menuPool:RefreshIndex()

local backUp = false
CreateThread(function()
    while true do
        Wait(0)
        if backUp then
            backupMenu:Visible(not backupMenu:Visible())
            backUp = false            
        end
        menuPool:ProcessMenus() 
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if playerSpawned then
            if (Config.Framework == 'EXS' and ESX.PlayerData.job and ESX.PlayerData.job.name == 'police') then
                RegisterCommand('+backup', function()
                    backUp = true
                end, false)
                RegisterCommand('-backup', function()
                    backUp = false
                end, false)
                RegisterKeyMapping('+backup', 'Open AI Backup Menu', 'keyboard', 'ADD')
            elseif (Config.Framework == 'QBCore' and QBCore.Functions.GetPlayer(source).PlayerJob.type == 'leo' and  QBCore.Functions.GetPlayer(source).PlayerJob.onduty) then
                RegisterCommand('+backup', function()
                    backUp = true
                end, false)
                RegisterCommand('-backup', function()
                    backUp = false
                end, false)
                RegisterKeyMapping('+backup', 'Open AI Backup Menu', 'keyboard', 'ADD')
            elseif Config.Framework == 'Standalone' then
                RegisterCommand('+backup', function()
                    backUp = true
                end, false)
                RegisterCommand('-backup', function()
                    backUp = false
                end, false)
                RegisterKeyMapping('+backup', 'Open AI Backup Menu', 'keyboard', 'ADD')
            end
        end
    end
end)

