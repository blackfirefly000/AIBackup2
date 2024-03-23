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
drivingStyle    = 537658174 -- https://www.vespura.com/fivem/drivingstyle/
playerSpawned   = false 
active          = false
arrived         = false
vehicle         = nil
driver_ped      = nil
passenger_ped   = nil
passenger_ped2  = nil
passenger_ped3  = nil
vehBlip         = nil
helicopter      = nil
livery          = nil
weapon          = nil
extras          = nil
gunComponent    = nil
police          = nil
policeman       = nil
pedtype         = nil

-- spawning events --

RegisterNetEvent('POL:Spawn')


    playerSpawned = true

AddEventHandler('POL:Spawn', function(player)
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
                Citizen.Wait(1)
            end

            RequestModel(GetHashKey(police))
            while not HasModelLoaded(GetHashKey(police)) do
                RequestModel(GetHashKey(police))
                Citizen.Wait(1)
            end

            local offset = GetOffsetFromEntityInWorldCoords(player, 50, 50, 0)
            local heading, spawn = GetNthClosestVehicleNodeFavourDirection(offset.x, offset.y, offset.z, pc.x, pc.y, pc.z, 20, 1, 0x40400000, 0)

            vehicle = CreateVehicle(GetHashKey(police), spawn.x, spawn.y, spawn.z, heading, true, true)
            driver_ped = CreatePedInsideVehicle(vehicle, pedtype, GetHashKey(policeman), -1, true, true)
            SetVehicleLivery(vehicle, livery)

            SetModelAsNoLongerNeeded(GetHashKey(police))
            SetModelAsNoLongerNeeded(GetHashKey(policeman))

            for _, Extra in pairs(extras) do
                SetVehicleExtra(vehicle, Extra)
            end

            SetEntityAsMissionEntity(vehicle)
            SetEntityAsMissionEntity(driver_ped)

            GiveWeaponToPed(driver_ped, weapon, math.random(20, 100), false, true)
            for _, Component in ipairs(gunComponent) do
                GiveWeaponComponentToPed(driver_ped, weapon, GetHashKey(Component))
            end

            LoadAllPathNodes(true)
            while not AreAllNavmeshRegionsLoaded() do
                Wait(1)
            end

            local playerGroupId = GetPedGroupIndex(player)
            SetPedAsGroupMember(driver_ped, playerGroupId)

            NetworkRequestControlOfEntity(driver_ped)
            ClearPedTasksImmediately(driver_ped)

            local _, relHash = AddRelationshipGroup("POL8")
            SetPedRelationshipGroupHash(driver_ped, relHash)
            SetRelationshipBetweenGroups(0, relHash, GetHashKey("PLAYER"))
            SetRelationshipBetweenGroups(0, GetHashKey("PLAYER"), relHash)

            vehBlip = AddBlipForEntity(vehicle)
            SetBlipSprite(vehBlip, 42)
            SetBlipScale(vehBlip, 0.5)

            SetVehicleSiren(vehicle, true)

            local vehicleToFollow = GetVehiclePedIsIn(player, false)
            local mode = -1  -- 0 for ahead, -1 = behind , 1 = left, 2 = right, 3 = back left, 4 = back right  
            local speed = 75.0 -- Modify the backup maximum speed when following you.
            local minDistance = 10.0 -- Default safe distance set by me, you can change it here.
            local p7 = 0                -- Do not touch here
            local noRoadsDistance = 0.0 -- Do not touch here

            TaskVehicleEscort(driver_ped, vehicle, vehicleToFollow, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance)

            while active and not IsPedInAnyVehicle(player, false) do
                Citizen.Wait(0)
                ClearPedTasksImmediately(driver_ped)
                TaskVehicleDriveToCoordLongrange(driver_ped, vehicle, pc.x, pc.y, pc.z, speed, drivingStyle, minDistance) 
                arrived = false
                while not arrived do
                    Citizen.Wait(0)
                    local coords = GetEntityCoords(vehicle)
                    local distance = #(coords - pc)
                    if distance < 11.0 then
                        while GetEntitySpeed(vehicle) > 0 do
                            Wait(1)
                        end
                        LeaveVehicle()
                        arrived = true
                    end
                end
                while arrived do
                    Citizen.Wait(0)
                    local coords = GetEntityCoords(vehicle)
                    local distance = #(coords - pc)
                    if distance > 11.0 then
                        EnterVehicle()
                        arrived = false
                    end
                end             
            end
        end)
    end
end)


-- functions --
function EnterVehicle()
    if vehicle ~= nil then
        TaskEnterVehicle(driver_ped, vehicle, 2000, -1, 2.0, 16, 0)
        while GetIsTaskActive(driver_ped, 160) do
            Wait(1)
        end    
    end
end

function LeaveVehicle()
    if vehicle ~= nil then
        ClearPedTasksImmediately(driver_ped)
        TaskLeaveVehicle(driver_ped, vehicle, 0)
        while IsPedInAnyVehicle(driver_ped, false) do
            Wait(1)
        end
    end
end

function LeaveScene()
    if active then
        active = false
        ShowAdvancedNotification(companyIcon, companyName, "DISPATCH", "Backup has been cancelled.")

        
        ClearPedTasksImmediately(driver_ped)        
        ClearRelationshipBetweenGroups(0, GetPedRelationshipGroupHash(driver_ped), GetHashKey("PLAYER"))
        
        if DoesBlipExist(vehBlip) then
            RemoveBlip(vehBlip)
        end
        if DoesEntityExist(vehicle) then
            SetEntityAsNoLongerNeeded(vehicle)
        end
        if DoesEntityExist(driver_ped) then
            SetEntityAsNoLongerNeeded(driver_ped)            
        end
        Wait(50000)
        if DoesEntityExist(vehicle) then
            DeleteEntity(vehicle)
        end
        if DoesEntityExist(driver_ped) then
            DeleteEntity(driver_ped)            
        end
        arrived = false
    end
end

RegisterNetEvent('POLMav:Spawn')
AddEventHandler('POLMav:Spawn', function(player)
    if not active then
        if player == nil then
            player = PlayerId()
        end

        Citizen.CreateThread(function()
            active = true
            local pc = GetEntityCoords(GetPlayerPed(player))
            local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0, 0, 200) 
            local heading, spawnPos = GetNthClosestVehicleNodeFavourDirection(offset.x, offset.y, offset.z, pc.x, pc.y, pc.z, 1, 1, 3.0, 0x40400000, 0)

            
            local distanceToPlayer = #(spawnPos - pc)
            if distanceToPlayer < 50 then
                spawnPos = pc + vector3(0, 0, 150) 
            end

            RequestModel(GetHashKey(helicopter))
            while not HasModelLoaded(GetHashKey(helicopter)) do
                RequestModel(GetHashKey(helicopter))
                Citizen.Wait(1)
            end

            RequestModel(GetHashKey(pilot))
            while not HasModelLoaded(GetHashKey(pilot)) do
                RequestModel(GetHashKey(pilot))
                Citizen.Wait(1)
            end

            vehicle = CreateVehicle(GetHashKey(helicopter), spawnPos.x, spawnPos.y, spawnPos.z, heading, true, true)
            driver_ped = CreatePedInsideVehicle(vehicle, 4, GetHashKey(pilot), -1, true, true)
            SetEntityAsMissionEntity(vehicle)
            SetEntityAsMissionEntity(driver_ped)
            SetVehicleLivery(vehicle, livery)


            SetModelAsNoLongerNeeded(GetHashKey(helicopter))
            SetModelAsNoLongerNeeded(GetHashKey(pilot))

            SetVehicleEngineOn(vehicle, true, true, true)

            local blip = AddBlipForEntity(vehicle)
            SetBlipSprite(blip, 422) 
            SetBlipColour(blip, 38) 
            SetBlipFlashes(blip, true)
            SetBlipFlashTimer(blip, 500)

            TaskVehicleFollow(driver_ped, vehicle, GetPlayerPed(player), 50.0, 2500, 33.0, 15) 

            while active do
                Citizen.Wait(0)
            end

            RemoveBlip(blip)
        end)
    end
end)


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