---------------------------------------
--------- Base By MunFrizo ------------
---------- Edits by Ossie -------------
----------- DevoNetwork ---------------
---------------------------------------                                                                                                    
                                                                                                             
							   

vRP = Proxy.getInterface("vRP")  



local kokain = {
  {name="kokain", id=0, x=356.82869262695, y=6476.0708007813, z=29.729650497437}, -- 356.62869262695,6476.0708007813,29.729650497437
  {name="kokain", id=0, x=357.08402709961, y=6483.562109375, z=29.795503616333},
  {name="kokain", id=0, x=357.08298950195, y=6482.2177734375, z=29.625259399414},
  {name="kokain", id=0, x=356.98886108398, y=6480.2297851563, z=29.7177318573}, -- 357.31161499023,6478.7963867188,29.546674728394
  {name="kokain", id=0, x=357.07041625977, y=6477.6000976563, z=29.625217437744}, -- 357.27041625977,6477.6000976563,29.625217437744
  {name="kokain", id=0, x=357.06697387695, y=6478.7061523438, z=29.54514503479}, -- 357.36697387695,6478.8061523438,29.54514503479
}

local hash = {
  {name="hash", id=0, x=2215.90849804688, y=5575.3046875, z=53.702610015869}, -- 2216.2299804688,5575.3046875,53.702610015869
  {name="hash", id=0, x=2216.2457519531, y=5577.52734375, z=53.844551086426}, -- 2216.6457519531,5577.52734375,53.844551086426
  {name="hash", id=0, x=2218.2796875, y=5575.1333007813, z=53.723117828369}, -- 2218.6796875,5575.1333007813,53.723117828369
  {name="hash", id=0, x=2218.5030761719, y=5577.2446289063, z=53.854076385498}, -- 2218.9030761719,5577.2446289063,53.854076385498
  {name="hash", id=0, x=2218.9251953125, y=5579.4858398438, z=53.963363647461}, -- 2219.3251953125,5579.4858398438,53.963363647461
}

local syre = {
  {name="syre", id=0, x=1928.7174072266, y=592.57464599609, z=175.66258239746}, 
}

local blomster = {
  {name="blomster", id=0, x=254.57788085938, y=3579.6354980469, z=34.024013519287}, -- 254.57788085938,3579.6354980469,34.024013519287
  {name="blomster", id=0, x=253.25810241699, y=3576.9521484375, z=33.8776512146}, -- 253.25810241699,3576.9521484375,33.8776512146
  {name="blomster", id=0, x=248.05781555176, y=3575.3774414063, z=34.083805084229}, -- 248.05781555176,3575.3774414063,34.083805084229
  {name="blomster", id=0, x=251.02589416504, y=3570.939453125, z=34.158889770508}, -- 251.02589416504,3570.939453125,34.158889770508
}

local aluminium = {
  {name="aluminium", id=0, x=2995.2092285156, y=2754.4985351563, z=43.069381713867},
}

local guld = { 
  {name="guld", id=0, x=2997.8757324219, y=2757.3859863281, z=42.969573974609},
}

local stol = { 
  {name="stol", id=0, x=2988.2131347656, y=2755.5251464844, z=42.707836151123},
}

local kul = { 
  {name="kul", id=0, x=2912.7639160156, y=2784.1264648438, z=44.68078994751},
}




function loadAnimDict( dict )
	while ( not HasAnimDictLoaded( dict ) ) do
		RequestAnimDict( dict )
		Citizen.Wait( 5 )
	end
end 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                                                   -- Kokain -- 
                                                                                   local collect = false
                                                                                   local collect2 = false
                                                                                   local collect3 = false
                                                                                   local collect4 = false

                                                                                   Citizen.CreateThread(function()
                                                                                       while true do
                                                                                           if collect then
                                                                                               DisableControlAction(0,51,true)
                                                                                               DisableControlAction(0,20,true)
                                                                                               DisableControlAction(0,38,true)
                                                                                               Wait(0)
                                                                                           else
                                                                                               Wait(250)
                                                                                           end
                                                                                       end
                                                                                   end)

                                                                                   Citizen.CreateThread(function()
                                                                                    while true do
                                                                                        if collect2 then
                                                                                            DisableControlAction(0,44,true)
                                                                                            DisableControlAction(0,20,true)
                                                                                            DisableControlAction(0,23,true)
                                                                                            Wait(0)
                                                                                        else
                                                                                            Wait(250)
                                                                                        end
                                                                                    end
                                                                                end)

                                                                                
                                                                                Citizen.CreateThread(function()
                                                                                  while true do
                                                                                      if collect3 then
                                                                                          DisableControlAction(0,44,true)
                                                                                          DisableControlAction(0,51,true)
                                                                                          DisableControlAction(0,20,true)
                                                                                          Wait(0)
                                                                                      else
                                                                                          Wait(250)
                                                                                      end
                                                                                  end
                                                                              end)

                                                                              Citizen.CreateThread(function()
                                                                                while true do
                                                                                    if collect4 then
                                                                                        DisableControlAction(0,23,true)
                                                                                        DisableControlAction(0,51,true)
                                                                                        DisableControlAction(0,20,true)
                                                                                        Wait(0)
                                                                                    else
                                                                                        Wait(250)
                                                                                    end
                                                                                end
                                                                            end)

                                                                                Citizen.CreateThread(function()
                                                                                  while true do
                                                                                      Citizen.Wait(0)
                                                                                  local ply = GetPlayerPed(-1)
                                                                                  local plyCoords = GetEntityCoords(ply, 0)
                                                                                      for _, sted in pairs(kokain) do
                                                                                  local distance = GetDistanceBetweenCoords(sted.x, sted.y, sted.z,  plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
                                                                                      if(distance <= 1) then
                                                                                 
                                                                                      DrawText3D(sted.x, sted.y, sted.z, "~b~[E]~s~ - Høst Kokain")
                                                                                          if(IsControlJustReleased(1, 51))then
                                                                                          --isfarmingkoka = true
                                                                                    collect2 = true
                                                                                          exports['progressBars']:startUI(10000, "Høster Kokain")
                                                                                          TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
                                                                                          Citizen.Wait(10000)
                                                                                          ClearPedTasksImmediately(GetPlayerPed(-1))
                                                                                          TriggerServerEvent('kokain')
                                                                                    collect2 = false
                                                                                      end
                                                                                   end
                                                                                  end
                                                                              end
                                                                              end)

                                                                                   
                                                                                   Citizen.CreateThread(function()
                                                                                       while true do
                                                                                           Citizen.Wait(0)
                                                                                       local ply = GetPlayerPed(-1)
                                                                                       local plyCoords = GetEntityCoords(ply, 0)
                                                                                           for _, sted in pairs(kokain) do
                                                                                       local distance = GetDistanceBetweenCoords(sted.x, sted.y, sted.z,  plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
                                                                                           if(distance <= 1) then
                                                                                      
                                                                                           DrawText3D(sted.x, sted.y, sted.z + 0.06, "~b~[Q]~s~ - Høst Kokain (~r~x10~w~)")
                                                                                               if(IsControlJustReleased(1, 44))then
                                                                                               --isfarmingkoka = true
                                                                                         collect = true
                                                                                               exports['progressBars']:startUI(100000, "Høster Kokain (x10)")
                                                                                               TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
                                                                                               Citizen.Wait(100000)
                                                                                               ClearPedTasksImmediately(GetPlayerPed(-1))
                                                                                               TriggerServerEvent('kokain2')
                                                                                         collect = false
                                                                                           end
                                                                                        end
                                                                                       end
                                                                                   end
                                                                                   end)
                                                                                  

Citizen.CreateThread(function()
  while true do 
    Citizen.Wait(0) 
    local player = GetPlayerPed(-1)
    local coord = GetEntityCoords(player)
    if GetDistanceBetweenCoords(1392.3264160156,3605.9270019531,38.94193649292, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then

         DrawText3D(1392.3264160156,3605.9270019531,38.94193649292, "~b~[E]~s~ - Fremstil Kokain")
         if(IsControlJustReleased(1, 51))then
          collect2 = true
          TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
         exports['progressBars']:startUI(10000, "Fremstiller Kokain")
         Citizen.Wait(10000)
         ClearPedTasksImmediately(GetPlayerPed(-1))
         TriggerServerEvent('Fremstill')
         collect2 = false
     
        
        end
      end
    end
end)       

Citizen.CreateThread(function()
  while true do 
    Citizen.Wait(0) 
    local player = GetPlayerPed(-1)
    local coord = GetEntityCoords(player)
    if GetDistanceBetweenCoords(1392.3264160156,3605.9270019531,38.94193649292, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then

         DrawText3D(1392.3264160156,3605.9270019531,38.94193649292 + 0.06, "~b~[Q]~s~ - Fremstil Kokain (~r~x10~w~)")
         if(IsControlJustReleased(1, 44))then
          collect = true
          TaskStartScenarioInPlace(PlayerPedId(), 'PROP_HUMAN_PARKING_METER', 0, true)
         exports['progressBars']:startUI(100000, "Fremstiller Kokain x10")
         Citizen.Wait(100000)
         ClearPedTasksImmediately(GetPlayerPed(-1))
         TriggerServerEvent('Fremstill2')
         collect = false
     
        
        end
      end
    end
end)   

Citizen.CreateThread(function()
  while true do 
    Citizen.Wait(0) 
    local player = GetPlayerPed(-1)
    local coord = GetEntityCoords(player)
    if GetDistanceBetweenCoords(-1622.6534423828,-994.30645751953,7.6779065132141, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then

         DrawText3D(-1622.6534423828,-994.30645751953,7.6779065132141, "~b~[E]~s~ - Sælg Kokain")
         if(IsControlJustReleased(1, 51))then
          collect2 = true
          loadAnimDict("mp_common")
        TaskPlayAnim(PlayerPedId(), "mp_common", "givetake1_a", 8.0, 8.0, -1, 1, 0, false, false, false)
         exports['progressBars']:startUI(10000, "Sælger Kokain")
         Citizen.Wait(10000)
         ClearPedTasksImmediately(GetPlayerPed(-1))
         TriggerServerEvent('saalg')
         collect2 = false
     
         
        end
      end
    end
end)

Citizen.CreateThread(function()
  while true do 
    Citizen.Wait(0) 
    local player = GetPlayerPed(-1)
    local coord = GetEntityCoords(player)
    if GetDistanceBetweenCoords(-1622.6534423828,-994.30645751953,7.2779065132141 + 0.06, GetEntityCoords(GetPlayerPed(-1))) < 5.0 then

         DrawText3D(-1622.6534423828,-994.30645751953,7.6779065132141 + 0.06, "~b~[Q]~s~ - Sælg Kokain (~r~x10~w~)")
         if(IsControlJustReleased(1, 44))then
          collect = true
          loadAnimDict("mp_common")
        TaskPlayAnim(PlayerPedId(), "mp_common", "givetake1_a", 8.0, 8.0, -1, 1, 0, false, false, false)
         exports['progressBars']:startUI(100000, "Sælger Kokain x10")
         Citizen.Wait(100000)
         ClearPedTasksImmediately(GetPlayerPed(-1))
         TriggerServerEvent('saalg2')
         collect = false
     
         
        end
      end
    end
end)