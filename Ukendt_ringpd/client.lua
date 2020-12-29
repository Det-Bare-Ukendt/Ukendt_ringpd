--[[
╔╗ ╔╗╔╗╔═╗╔═══╗╔═╗ ╔╗╔═══╗╔════╗ 
║║ ║║║║║╔╝║╔══╝║║╚╗║║╚╗╔╗║║╔╗╔╗║
║║ ║║║╚╝╝ ║╚══╗║╔╗╚╝║ ║║║║╚╝║║╚╝ 
║║ ║║║╔╗║ ║╔══╝║║╚╗║║ ║║║║  ║║  
║╚═╝║║║║╚╗║╚══╗║║ ║║║╔╝╚╝║ ╔╝╚╗ 
╚═══╝╚╝╚═╝╚═══╝╚╝ ╚═╝╚═══╝ ╚══╝  
]]--



local Event1 = true





Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local player = GetPlayerPed(-1)
        local UKENDTERSEJ = Vdist(441.25640869141,-981.06518554688,30.689584732056, GetEntityCoords(player))
        if UKENDTERSEJ <3 then
            if Event1 == false then 
                DrawText3Ds(441.25640869141,-981.06518554688,30.689584732056+0.5, "~r~ Cooldown", 3.5, 7)
                    elseif Event1 == true then 
                    DrawText3Ds(441.25640869141,-981.06518554688,30.689584732056+0.5, "~w~[~r~E~w~] | Ring på klokken", 3.0, 7)
                    if IsControlJustPressed(1, 38) then
                    exports['mythic_notify']:DoHudText('inform', 'Du har ringet på klokken, der ville snart komme en betjent') 
                    TriggerServerEvent('Ukendt:getinfo')
                    Event1 = false
                end
            end
        end
    end
end)

Citizen.CreateThread(function ()
    while true do
    local ped = PlayerPedId()
        Citizen.Wait(1)
        if Event1 == false then
            Citizen.Wait(300000)
            Event1 = true
        end
    end
end)


function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end
