--[[
DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!
DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!
DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!
DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!
DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!			DO NOT DELETE ANYONE OUT OF THE CREDITS JUST ADD YOUR NAME TO IT!!!		
    This is my first GTA Script/Mod i did myself. Like the Scripts/Mods i publish for other Games you can edit, reupload, fix, delete, sniff, smoke or what ever you want with this script.
    JUST DONT DELETE ANYONE OUT OF THE CREDITS AND ADD YOUR NAME TO IT!!!
	
    CREDITS:
    (IceHax) - for publishing an incomplete amublance script on cfx.re which gave me the idea and basic structure to create this script
    Mooreiche - Me/Original Uploader
    Mobius1 - huge thanks for fixing bugs and saving me alot of headache!
	MajorFivePD (dsvipeer) - All bugs were fixed + added new backup
    blackfirefly000 - Menu, SWAT, Motor Unit, weapons, Individual depts, config
	
	
	
	
	
	
	
	
	
    Greetings from Germany to all Capitalists around the World! What a nice Life we all have!
*********  !REMEMBER TO FIGHT AGAINST COMMUNISM! *********
]]

--******************************************************   * All bugs were fixed + added new backup
--*                                                    *   * Credits: https://github.com/Mooreiche/AIBackup
--*   AIBACKUP REMASTERED by MajorFivePD (dsvipeer)   *    * https://github.com/dsvipeer
--*                                                    *   * https://forum.cfx.re/u/MajorFivePD/summary
--******************************************************

-- variables --


companyName     = "Dispatch" -- DO NOT TOUCH
companyIcon     = "CHAR_CALL911" -- DO NOT TOUCH
active          = false
spawn           = nil
heading         = nil
vehicle         = nil
driver_ped      = nil
passengerPed    = nil
passengerPeds   = {}
vehBlip         = nil
helicopter      = nil
livery          = nil
weapon          = nil
extras          = nil
gunComponent    = nil
police          = nil
policeman       = nil
pedtype         = nil
passengerNumber = nil
onFootFollowing = false

-- spawning events --

RegisterNetEvent('POL:Spawn')
AddEventHandler('POL:Spawn', function(player)
    currentEvent = 'POL:Spawn'
    if not active then
        if player == nil then
            player = PlayerPedId()
        end

        Citizen.CreateThread(function()
            active = true
            local pc = GetEntityCoords(player)

            -- Load models for the policeman and police vehicle
            RequestModel(GetHashKey(policeman))
            while not HasModelLoaded(GetHashKey(policeman)) do
                RequestModel(GetHashKey(policeman))
                Wait(1)
            end

            RequestModel(GetHashKey(police))
            while not HasModelLoaded(GetHashKey(police)) do
                RequestModel(GetHashKey(police))
                Wait(1)
            end

            -- Spawn the vehicle and driver ped
            local offset = GetOffsetFromEntityInWorldCoords(player, 50, 50, 0)
            local heading, spawn = GetNthClosestVehicleNodeFavourDirection(offset.x, offset.y, offset.z, pc.x, pc.y, pc.z, 20, 1, 0x40400000, 0)
            vehicle = CreateVehicle(GetHashKey(police), spawn.x, spawn.y, spawn.z, heading, true, true)
            driver_ped = CreatePedInsideVehicle(vehicle, pedtype, GetHashKey(policeman), -1, true, true)
           
            SetEntityAsMissionEntity(vehicle, true, true)
            SetEntityAsMissionEntity(driver_ped, true, true) 
            NetworkRequestControlOfEntity(driver_ped) 
            
            local playerGroupId = GetPedGroupIndex(player)
            SetPedAsGroupMember(driver_ped, playerGroupId)
            local _, relHash = AddRelationshipGroup("POL8")
            SetPedRelationshipGroupHash(driver_ped, relHash)           
            SetRelationshipBetweenGroups(1, relHash, GetHashKey("PLAYER"))
            SetRelationshipBetweenGroups(1, GetHashKey("PLAYER"), relHash)

            if passengerNumber > 0 then
                for i=1, passengerNumber do
                    passengerPed = CreatePedInsideVehicle(vehicle, pedtype, GetHashKey(policeman), i - 1, true, true) -- i - 1 assigns seat 0, 1, or 2
                    SetPedRelationshipGroupHash(passengerPed, relHash)
                    --SetPedAsGroupMember(passengerPed, playerGroupId)
                    SetEntityAsMissionEntity(passengerPed, true, true)
                    table.insert(passengerPeds, passengerPed)
                end
            end

            SetModelAsNoLongerNeeded(GetHashKey(police))
            SetModelAsNoLongerNeeded(GetHashKey(policeman))

            --Ped Weapons
            GiveWeaponToPed(driver_ped, weapon, 1000, false, true)
            for _, Component in ipairs(gunComponent) do
                GiveWeaponComponentToPed(driver_ped, weapon, GetHashKey(Component))
            end

            for i, passengerPed in ipairs(passengerPeds) do
                GiveWeaponToPed(passengerPed, weapon, 1000, false, true)
                for _, Component in ipairs(gunComponent) do
                    GiveWeaponComponentToPed(passengerPed, weapon, GetHashKey(Component))
                end
            end

            --appearance
            if livery ~= nil then
                --Set conventional Liveries
                SetVehicleLivery(vehicle, livery.id)
                SetVehicleColours(vehicle, livery.primaryColor, livery.secondaryColor)

                --If vehicle has no conventional liveries, set modkit liveries
                if GetVehicleLivery(vehicle, -1) then
                    --SetVehicleMod doesn't work without this. Idk why
                    SetVehicleModKit(vehicle, 0)
                    --Set modkit liveries
                    SetVehicleMod(vehicle, 48, livery.id - 1)
                end
            end

            --Turns off any extras that may be turned on  by the vehicle files
            for i = 1, 12 do
                if DoesExtraExist(vehicle, i) and IsVehicleExtraTurnedOn(vehicle, i) then
                    SetVehicleExtra(vehicle, i, 1)
                end
            end

            for _, Extra in pairs(extras) do
                SetVehicleExtra(vehicle, Extra)
            end

            LoadAllPathNodes(true)
            while not AreAllNavmeshRegionsLoaded() do
                Wait(1)
            end
            
            --Blips
            vehBlip = AddBlipForEntity(vehicle)
            SetBlipSprite(vehBlip, 42)
            SetBlipScale(vehBlip, 0.5)

            --Siren
            SetVehicleSiren(vehicle, true)

            -- Vars for controlling driver behavior
            local vehicleToFollow = GetVehiclePedIsIn(player, false)
            local mode = -1  -- 0 for ahead, -1 = behind , 1 = left, 2 = right, 3 = back left, 4 = back right  
            local speed = 120.0 -- Modify the backup maximum speed when following you.
            local minDistance = 20.0 -- Default safe distance set by me, you can change it here.
            local p7 = 0                -- Do not touch here
            local noRoadsDistance = 40.0 -- Do not touch here
            local drivingStyle    = 1114394428 -- https://www.vespura.com/fivem/drivingstyle/
            local followDistance = 10.0
            local onFootFollowing = false

            --Wait(2000)
            while active do
                Wait(2000)
                local playerInVehicle = IsPedInAnyVehicle(player, false)

                if playerInVehicle then
                    if onFootFollowing then
                        -- If player is in vehicle and driver is on foot, get driver back to their vehicle
                        TaskEnterVehicle(driver_ped, vehicle, 2000, -1, 2.0, 16, 0)
                        for i, passengerPed in ipairs(passengerPeds) do
                            TaskEnterVehicle(passengerPed, vehicle, 2000, i - 1, 2.0, 16, 0)
                        end
                        onFootFollowing = false
                    end
                    -- Set driver to follow player's vehicle
                    TaskVehicleEscort(driver_ped, vehicle, vehicleToFollow, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance)
                else
                    if not onFootFollowing then
                        -- Drive vehicle to a point behind the player
                        local playerCoords = GetEntityCoords(player)
                        local followCoords = GetOffsetFromEntityInWorldCoords(player, 0.0, -5.0, 0.0)
                        TaskVehicleDriveToCoord(driver_ped, vehicle, followCoords.x, followCoords.y, followCoords.z, 10.0, drivingStyle, noRoadsDistance)

                        -- Wait for vehicle to reach the spot and then exit to follow on foot
                        Wait(2000) -- Allow driving time
                        TaskLeaveVehicle(driver_ped, vehicle, 0)
                        for i, passengerPed in ipairs(passengerPeds) do
                            TaskLeaveVehicle(passengerPed, vehicle, 0)
                        end
                        Wait(1000) -- Allow time to exit vehicle
                        onFootFollowing = true
                    end
                end
            end
        end)
    end
end)

RegisterNetEvent('POLBoat:Spawn')
AddEventHandler('POLBoat:Spawn', function(player)
    currentEvent = 'POLBoat:Spawn'
    if not active then
        if player == nil then
            player = PlayerPedId()
        end

        Citizen.CreateThread(function()
            active = true
            local pc = GetEntityCoords(player)

            RequestModel(GetHashKey(policeman))
            while not HasModelLoaded(GetHashKey(policeman)) do
                RequestModel(GetHashKey(policeman))
                Wait(1)
            end

            RequestModel(GetHashKey(police))
            while not HasModelLoaded(GetHashKey(police)) do
                RequestModel(GetHashKey(police))
                Wait(1)
            end

            local offset = GetOffsetFromEntityInWorldCoords(player, 50, 50, 0)
            heading, spawn = GetNthClosestVehicleNodeFavourDirection(offset.x, offset.y, offset.z, pc.x, pc.y, pc.z, 20, 3, 0x40400000, 0)
            vehicle = CreateVehicle(GetHashKey(police), spawn.x, spawn.y, spawn.z, heading, true, true)
            driver_ped = CreatePedInsideVehicle(vehicle, pedtype, GetHashKey(policeman), -1, true, true)
            
            SetEntityAsMissionEntity(vehicle, true, true)
            SetEntityAsMissionEntity(driver_ped, true, true) 
            NetworkRequestControlOfEntity(driver_ped) 

            if passengerNumber > 0 then
                for i=1, passengerNumber do
                    passengerPed = CreatePedInsideVehicle(vehicle, pedtype, GetHashKey(policeman), i - 1, true, true) -- i - 1 assigns seat 0, 1, or 2
                    SetEntityAsMissionEntity(passengerPed, true, true)
                    table.insert(passengerPeds, passengerPed)
                end
            end

            SetModelAsNoLongerNeeded(GetHashKey(police))
            SetModelAsNoLongerNeeded(GetHashKey(policeman))

            --Ped Weapons
            GiveWeaponToPed(driver_ped, weapon, 1000, false, true)
            for _, Component in ipairs(gunComponent) do
                GiveWeaponComponentToPed(driver_ped, weapon, GetHashKey(Component))
            end

            for i, passengerPed in ipairs(passengerPeds) do
                GiveWeaponToPed(passengerPed, weapon, 1000, false, true)
                for _, Component in ipairs(gunComponent) do
                    GiveWeaponComponentToPed(passengerPed, weapon, GetHashKey(Component))
                end
            end

            if livery ~= nil then
                --Set conventional Liveries
                SetVehicleLivery(vehicle, livery.id)
                SetVehicleColours(vehicle, livery.primaryColor, livery.secondaryColor)

                --If vehicle has no conventional liveries, set modkit liveries
                if GetVehicleLivery(vehicle, -1) then
                    --SetVehicleMod doesn't work without this. Idk why
                    SetVehicleModKit(vehicle, 0)
                    --Set modkit liveries
                    SetVehicleMod(vehicle, 48, livery.id - 1)
                end
            end

            --Turns off any extras that may be turned on  by the vehicle files
            for i = 1, 12 do
                if DoesExtraExist(vehicle, i) and IsVehicleExtraTurnedOn(vehicle, i) then
                    SetVehicleExtra(vehicle, i, 1)
                end
            end

            for _, Extra in pairs(extras) do
                SetVehicleExtra(vehicle, Extra)
            end

            LoadAllPathNodes(true)
            while not AreAllNavmeshRegionsLoaded() do
                Wait(1)
            end

            vehBlip = AddBlipForEntity(vehicle)
            SetBlipSprite(vehBlip, 42)
            SetBlipScale(vehBlip, 0.5)

            SetVehicleSiren(vehicle, true)

            local vehicleToFollow = GetVehiclePedIsIn(player, false)
            local speed = 40.0 -- Modify the backup maximum speed when following you.
            local drivingStyle = 1087111740


            for i, passengerPed in ipairs(passengerPeds) do
                TaskEnterVehicle(passengerPed, vehicle, 2000, i - 1, 2.0, 16, 0)
            end
            TaskBoatMission(driver_ped, vehicle, vehicleToFollow, player, 0.0, 0.0, 0.0, 12, speed, drivingStyle, 0, 1039)   
        end)
    end
end)

RegisterNetEvent('POLMav:Spawn')
AddEventHandler('POLMav:Spawn', function(player)
    currentEvent = 'POLMav:Spawn' 
    if not active then
        if player == nil then
            player = PlayerId()
        end

        Citizen.CreateThread(function()
            active = true
            local pc = GetEntityCoords(GetPlayerPed(player))

            local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0, 0, 200) 
            local heading, spawnPos = GetNthClosestVehicleNodeFavourDirection(offset.x, offset.y, offset.z, pc.x, pc.y, pc.z, 1, 1, 3.0, 0x40400000, 0)
            spawnPos = spawnPos + vector3(0, 0, 150)
            
            local lateralSpawnPos = vector3(spawnPos.x, spawnPos.y, 0)
            local lateralPC = vector3(pc.x, pc.y, 0)
            local distanceToPlayer = #(lateralSpawnPos - lateralPC)
            if distanceToPlayer < 50 then
                spawnPos = pc + vector3(0, 0, 150) 
            end

            RequestModel(GetHashKey(helicopter))
            while not HasModelLoaded(GetHashKey(helicopter)) do
                RequestModel(GetHashKey(helicopter))
                Wait(1)
            end

            RequestModel(GetHashKey(pilot))
            while not HasModelLoaded(GetHashKey(pilot)) do
                RequestModel(GetHashKey(pilot))
                Wait(1)
            end

            vehicle = CreateVehicle(GetHashKey(helicopter), spawnPos.x, spawnPos.y, spawnPos.z, heading, true, true)
            driver_ped = CreatePedInsideVehicle(vehicle, 4, GetHashKey(pilot), -1, true, true)

            SetEntityAsMissionEntity(vehicle, true, false)
            SetEntityAsMissionEntity(driver_ped, true, false)

            if passengerNumber > 0 then
                for i=1, passengerNumber do
                    passengerPed = CreatePedInsideVehicle(vehicle, pedtype, GetHashKey(pilot), i - 1, true, true) -- i - 1 assigns seat 0, 1, or 2
                    SetEntityAsMissionEntity(passengerPed, true, true)
                    table.insert(passengerPeds, passengerPed)
                end
            end

            SetModelAsNoLongerNeeded(GetHashKey(helicopter))
            SetModelAsNoLongerNeeded(GetHashKey(pilot))

            SetVehicleEngineOn(vehicle, true, true, true)
            SetHeliBladesSpeed(vehicle, 1.0)         
            
            if livery ~= nil then
                --Set conventional Liveries
                SetVehicleLivery(vehicle, livery.id)
                SetVehicleColours(vehicle, livery.primaryColor, livery.secondaryColor)

                --If vehicle has no conventional liveries, set modkit liveries
                if GetVehicleLivery(vehicle, -1) then
                    --SetVehicleMod doesn't work without this. Idk why
                    SetVehicleModKit(vehicle, 0)
                    --Set modkit liveries
                    SetVehicleMod(vehicle, 48, livery.id - 1)
                end
            end

            local vehBlip = AddBlipForEntity(vehicle)
            SetBlipSprite(vehBlip, 15) 

            for i, passengerPed in ipairs(passengerPeds) do
                TaskEnterVehicle(passengerPed, vehicle, 2000, i - 1, 2.0, 16, 0)
            end
            TaskVehicleFollow(driver_ped, vehicle, GetPlayerPed(player), 50.0, 2500, 33.0, 15) 
        end)
    end
end)


-- functions --

function LeaveScene()
    if active then
        onFootFollowing = false
        active = false
        ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "Backup has been cancelled.")
        SetVehicleSiren(vehicle, false)
        ClearRelationshipBetweenGroups(1, relHash, GetPedRelationshipGroupHash(player))
        ClearRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(player), relHash)
        RemovePedFromGroup(driver_ped)

        for i, passengerPed in ipairs(passengerPeds) do
            RemovePedFromGroup(passengerPed)
        end   
        
        RemoveRelationshipGroup(relHash)
        RemoveGroup(GetPedGroupIndex(driver_ped))

        if DoesBlipExist(vehBlip) then
            RemoveBlip(vehBlip)
        end

        -- Handle behavior based on the current event
        if currentEvent == 'POL:Spawn' then
            for _, passengerPed in ipairs(passengerPeds) do
                TaskEnterVehicle(passengerPed, vehicle, 2000, i - 1, 1.0, 1, 0)
            end   
            TaskEnterVehicle(driver_ped, vehicle, 2000, -1, 1.0, 1, 0)
        elseif currentEvent == 'POLBoat:Spawn' then
            --TaskVehicleDriveWander(driver_ped, vehicle, 30.0, 1087111740)
            TaskBoatMission(driver_ped, vehicle, 0, 0, 0.0, 0.0, 0.0, 16, 40, 1087111740, 0, 1039)
        elseif currentEvent == 'POLMav:Spawn' then
            TaskHeliMission(driver_ped, vehicle, 0, 0, 0.0, 0.0, 0.0, 1, 70.0, 2883621, -1, -1, -1, 1280)
        end
        
        if DoesEntityExist(vehicle) then
            SetEntityAsNoLongerNeeded(vehicle)
        end
        if DoesEntityExist(driver_ped) then
            SetEntityAsNoLongerNeeded(driver_ped)
        end

        for i, passengerPed in ipairs(passengerPeds) do
            SetEntityAsNoLongerNeeded(passengerPed)
        end 
        
        Wait(50000)
          
        if DoesEntityExist(driver_ped) then
            DeleteEntity(driver_ped)            
        end
        for i, passengerPed in ipairs(passengerPeds) do
            DeleteEntity(passengerPed)   
        end
        if DoesEntityExist(vehicle) then
            DeleteEntity(vehicle)
        end 
        if DoesEntityExist(targetVehicle) then
            SetEntityAsNoLongerNeeded(targetVehicle)
        end
        if DoesEntityExist(target) then
            SetEntityAsNoLongerNeeded(target)            
        end
        passengerPed    = nil
        passengerPeds   = {}
        passengerNumber = nil
    end
end

function ShowAdvancedNotification(icon, sender, title, text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    SetNotificationMessage(icon, icon, true, 4, sender, title, text)
    DrawNotification(false, true)
end

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

local function getClosestBoat()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestBoat = nil
    local closestDistance = math.huge  -- Start with a very large number

    -- Loop through all nearby vehicles
    for vehicle in EnumerateVehicles() do
        if IsThisModelABoat(GetEntityModel(vehicle)) then
            local boatCoords = GetEntityCoords(vehicle)
            local distance = #(playerCoords - boatCoords)  -- Calculate distance

            if distance < closestDistance then
                closestDistance = distance
                closestBoat = vehicle
            end
        end
    end

    return closestBoat, closestDistance
end

function EnumerateVehicles()
    return coroutine.wrap(function()
        local handle, vehicle = FindFirstVehicle()
        local success
        repeat
            coroutine.yield(vehicle)
            success, vehicle = FindNextVehicle(handle)
        until not success
        EndFindVehicle(handle)
    end)
end

function toggleTarget()
    if targetVehicle or target then
        target = false
        targetVehicle = false
        if DoesBlipExist(targetBlip) then
            RemoveBlip(targetBlip)
        end
    end
    
    if currentEvent == 'POLBoat:Spawn' then
        local targetVehicle, _ = getClosestBoat()
    else
        if IsPlayerFreeAiming(PlayerPedId()) then
            target = GetEntityPlayerIsFreeAimingAt(PlayerPedId())
            SetEntityAsMissionEntity(target, true, false)
        else 
            targetVehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 10.0, 0, 4)
            target = GetPedInVehicleSeat(targetVehicle, -1)
            SetEntityAsMissionEntity(targetVehicle, true, false)
            SetEntityAsMissionEntity(target, true, false)
        end
    end 
    
    if target then
        local targetCoords = GetEntityCoords(target)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = Vdist(playerCoords, targetCoords)
        
        -- Toggle target logic
        if distance < 10.0 then
            getTarget = not getTarget
            if getTarget then
                ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "A pursuit has been initiated")
                if targetVehicle then

                    -- Add a new blip for the target
                    local targetBlip = AddBlipForEntity(targetVehicle)
                    local vehicleClass = GetVehicleClass(targetVehicle)
                    if vehicleClass == 14 then
                        SetBlipSprite(targetBlip, 427) 
                    elseif vehicleClass == 8 then
                        SetBlipSprite(targetBlip, 226)
                    elseif vehicleClass == 13 then
                        SetBlipSprite(targetBlip, 859)
                    else
                        SetBlipSprite(targetBlip, 225)
                    end
                    
                    SetBlipColour(targetBlip, 6)
                end

                if currentEvent == 'POL:Spawn' then
                    while getTarget do
                        Wait(500)
                        local targetInVehicle = IsPedInAnyVehicle(getTarget, false)
        
                        if targetInVehicle then
                            if onFootPursuit then
                                -- If player is in vehicle and driver is on foot, get driver back to their vehicle
                                TaskEnterVehicle(driver_ped, vehicle, 2000, -1, 2.0, 16, 0)
                                for _, passengerPed in ipairs(passengerPeds) do
                                    TaskEnterVehicle(passengerPed, vehicle, 2000, i - 1, 2.0, 16, 0)
                                end
                                onFootPursuit = false
                            end
                            -- Set driver to follow player's vehicle
                            TaskVehicleChase(driver_ped, target)
                            SetTaskVehicleChaseIdealPursuitDistance(driver_ped, 20)
                            SetTaskVehicleChaseBehaviorFlag(driver_ped, 8, true)
                        else
                            if not onFootPursuit then
                                -- Drive vehicle to a point behind the player
                                local playerCoords = GetEntityCoords(player)
                                local followCoords = GetOffsetFromEntityInWorldCoords(player, 0.0, -5.0, 0.0)
                                TaskVehicleDriveToCoord(driver_ped, vehicle, followCoords.x, followCoords.y, followCoords.z, 10.0, drivingStyle, noRoadsDistance)
        
                                -- Wait for vehicle to reach the spot and then exit to follow on foot
                                Wait(2000) -- Allow driving time
                                TaskLeaveVehicle(driver_ped, vehicle, 0)
                                for _, passengerPed in ipairs(passengerPeds) do
                                    TaskLeaveVehicle(passengerPed, vehicle, 0)
                                end
                                Wait(1000) -- Allow time to exit vehicle
                                onFootPursuit = true
                            end
                        end
                    end
                elseif currentEvent == 'POLBoat:Spawn' then
                    TaskBoatMission(driver_ped, vehicle, 0, 0, 0.0, 0.0, 0.0, 22, 40, 1087111740, 0, 1039)
                elseif currentEvent == 'POLMav:Spawn' then
                    TaskHeliChase(driver_ped, target, 0.0, 0.0, 80.0)
                end               
            end
        end
    end
end

-- Register the toggle command
RegisterCommand('toggleTarget', toggleTarget, false)

-- Register key mapping to the toggle command
RegisterKeyMapping('toggleTarget', 'Designate Target for Pursuit', 'keyboard', 'E')