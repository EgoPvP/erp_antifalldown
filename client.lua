Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        local playerCoords = GetEntityCoords(PlayerPedId())

        if playerCoords.z < Config.TeleportHeight then
            local playerCoordsUP = GetEntityCoords(PlayerPedId())
            playerCoordsUP = vector3(playerCoordsUP.x, playerCoordsUP.y, playerCoordsUP.z + 200)

            local unusedBool, nearZ = GetGroundZFor_3dCoord(playerCoordsUP.x, playerCoordsUP.y, 99999.0, 1)

            nearZ = nearZ + 2.0

            playerCoordsUP = vector3(playerCoordsUP.x, playerCoordsUP.y, nearZ)

            SetEntityCoords(PlayerPedId(), playerCoordsUP.x, playerCoordsUP.y, nearZ)
        end

        
    end
end)