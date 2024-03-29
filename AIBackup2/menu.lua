menuPool = NativeUI.CreatePool()
backupMenu = NativeUI.CreateMenu("AI Backup Menu", "Spawn AI Officers for Backup")
menuPool:Add(backupMenu)
menuPool:MouseControlsEnabled (false)
menuPool:MouseEdgeEnabled (false)
menuPool:ControlDisablingEnabled(false)

function PatrolItem(menu) 
    local submenu = menuPool:AddSubMenu(menu, "Patrol Backup") 
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
    submenu:AddItem(lspdItem)
    submenu:AddItem(lssdItem)
    submenu:AddItem(bcsoItem)
    submenu:AddItem(sahpItem)
    submenu:AddItem(fibItem)
    menuPool:MouseControlsEnabled (false)
    menuPool:MouseEdgeEnabled (false)
    menuPool:ControlDisablingEnabled(false)
end
function MotorItem(menu) 
   local submenu = menuPool:AddSubMenu(menu, "Motor Unit Backup") 
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
   submenu:AddItem(lspdMotorItem)
   submenu:AddItem(lssdMotorItem)
   submenu:AddItem(bcsoMotorItem)
   submenu:AddItem(sahpMotorItem)
   menuPool:MouseControlsEnabled (false)
   menuPool:MouseEdgeEnabled (false)
   menuPool:ControlDisablingEnabled(false)
end
function SwatItem(menu) 
    local submenu = menuPool:AddSubMenu(menu, "SWAT Backup") 
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
    submenu:AddItem(lspdSwatItem)
    submenu:AddItem(lssdSwatItem)
    submenu:AddItem(bcsoSwatItem)
    submenu:AddItem(sahpSwatItem)
    submenu:AddItem(fibSwatItem)
    menuPool:MouseControlsEnabled(false)
    menuPool:MouseEdgeEnabled(false)
    menuPool:ControlDisablingEnabled(false)
end
function AirItem(menu) 
    local submenu = menuPool:AddSubMenu(menu, "Air Support") 
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
    submenu:AddItem(lspdAirItem)
    submenu:AddItem(lssdAirItem)
    submenu:AddItem(bcsoAirItem)
    submenu:AddItem(sahpAirItem)
    submenu:AddItem(fibAirItem)
    menuPool:MouseControlsEnabled(false)
    menuPool:MouseEdgeEnabled(false)
    menuPool:ControlDisablingEnabled(false)
end
function Code4Item(menu)
    local codeFour = UIMenuItem.New("~r~Code 4", "Dismiss Backup")
    menu:AddItem(codeFour)
    menu.OnItemSelect = function(sender, item, index)
        if item == codeFour then
            LeaveScene()
        end
    end
end

PatrolItem(backupMenu)
MotorItem(backupMenu)
SwatItem(backupMenu)
AirItem(backupMenu)
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
            if (Config.framework == 'EXS' and ESX.PlayerData.job and ESX.PlayerData.job.name == 'police') then
                RegisterCommand('+backup', function()
                    backUp = true
                end, false)
                RegisterCommand('-backup', function()
                    backUp = false
                end, false)
                RegisterKeyMapping('+backup', 'Open AI Backup Menu', 'keyboard', 'ADD')
            end
            elseif (Config.framework == 'QBCore' and QBCore.PlayerData.job.type == 'leo'and QBCore.PlayerJob.onduty) then
                RegisterCommand('+backup', function()
                    backUp = true
                end, false)
                RegisterCommand('-backup', function()
                    backUp = false
                end, false)
                RegisterKeyMapping('+backup', 'Open AI Backup Menu', 'keyboard', 'ADD')
            end
            elseif Config.framework == 'Standalone' then
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

