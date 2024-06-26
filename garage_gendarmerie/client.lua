local isUIOpen = false 

Citizen.CreateThread(function ()
    while true do 
        local sleep = 1000
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local distance = GetDistanceBetweenCoords(Config.GaragePosition, playerCoords, false)

        if distance < 2 then 
            sleep = 0
            lib.showTextUI('[E]- Ouvrir le garage', {
                position = 'left-center',
                icon = 'hand',
                style = {
                    borderRadius = 7,
                    backgroundColor = '#095BF5',
                    color = 'white'
                }
            })

            if IsControlJustPressed(0, 51) then
                ESX.TriggerServerCallback('esx:getPlayerData', function(data)
                    if data.job and data.job.name == 'gendarmerie' then
                        OpenUI()
                    else
                        lib.notify({title = "Accès refusé", description = "Vous n'avez pas les permissions nécessaires pour accéder à la tablette.", type = "error"})
                    end
                end)
            end
        else
            lib.hideTextUI()
        end
        Wait(sleep)
    end
end)








function OpenUI()
    if not isUIOpen then
        isUIOpen = true 
        ExecuteCommand('e tablet2')
        SetNuiFocus(true, true)
        SendNuiMessage(json.encode{
            action = 'open'
        })
    else
        isUIOpen = false 
        SetNuiFocus(false, false)
        SendNuiMessage(json.encode{
            action = 'close'
        })
    end
end

RegisterNUICallback('closeall', function()
    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

                                                                --VOITURE--
--------------------------------------------------------------------------p5008_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('Exitvehicle', function()

    local model = 'p5008_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)



--------------------------------------------------------------------------dduster_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('duster', function()

    local model = 'dduster_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)


--------------------------------------------------------------------------pexpert12_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('pexp', function()

    local model = 'pexpert12_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------pexpert17_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('pexp17', function()

    local model = 'pexpert17_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)


--------------------------------------------------------------------------ppartner12_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('ppartner12_gn', function()

    local model = 'ppartner12_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)


--------------------------------------------------------------------------rmegane4e18_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('rmegane4e18_gn', function()

    local model = 'rmegane4e18_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)


--------------------------------------------------------------------------skodiaq_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('skodiaq_gn', function()

    local model = 'skodiaq_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------ffocus3sw_gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('ffocus3sw_gn', function()

    local model = 'ffocus3sw_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------BANA----------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------vpassatgtev_psig----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('volv', function()

    local model = 'vpassatgtev_psig'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------vsharan_psig----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('sharan', function()

    local model = 'vsharan_psig'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)


--------------------------------------------------------------------------soctaviacombi_psig----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('oct', function()

    local model = 'soctaviacombi_psig'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------rmegane4e18_ban----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('rme', function()

    local model = 'rmegane4e18_ban'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------p5008_ban-psig----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('ppsig', function()

    local model = 'p5008_ban-psig'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------p508gt_ban-gn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('p508gt', function()

    local model = 'p508gt_ban-gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------pe2008_ban----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('pe2008_ban', function()

    local model = 'pe2008_ban'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)

--------------------------------------------------------------------------rmaster312_ban----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('rmaster312_ban', function()

    local model = 'rmaster312_ban'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                        --GIGN--
                                                                                    --tlc200_gign--

RegisterNUICallback('tlc200_gign', function()

    local model = 'tlc200_gign'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end

end)







                                                                                 ------- MOTO -------




---------------------------------------------------------------------------------------------------YMT------------------------------------------------------------------------------------------------
RegisterNUICallback('ymt', function()

    local model = 'ymt09t_gn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end

end)


--------------------------------------------------------------------------bmw1200rtgn----------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('bmwx', function()

    local model = 'bmw1200rtgn'
    local spawnCoords = vector3(656.9224, 2803.7732, 35.8117)
    local spawnHeading = 296.4315
    local checkCoords = vector3(982.1995, 3835.8108, 33.3606)
    local radius = 3.0

    -- Charge du modele
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()
    local car = nil

    -- Verification 
    local existingCar = GetClosestVehicle(checkCoords.x, checkCoords.y, checkCoords.z, radius, GetHashKey(model), 71)

    if DoesEntityExist(existingCar) then
        car = existingCar
    else
        -- Création 
        car = CreateVehicle(GetHashKey(model), spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, true, false)
        
        -- Attendre que le véhicule soit créé
        while not DoesEntityExist(car) do 
            Citizen.Wait(0)
        end
    end

    -- Placer le joueur dans le véhicule
    TaskWarpPedIntoVehicle(playerPed, car, -1)

    -- Liberation de la memoire
    SetModelAsNoLongerNeeded(GetHashKey(model))


    if isUIOpen then 
        OpenUI()
        ExecuteCommand('e c')
    end
end)







    
    





