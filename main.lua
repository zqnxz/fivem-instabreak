Citizen.CreateThread(function()
  while true do
    Wait(1)
    if IsControlJustPressed(1, 38) then
      print('pressed') 
      local ped = PlayerPedId()
      local veh = GetVehiclePedIsIn(ped, false)
      local vehCoords = GetEntityCoords(veh)
      local newCoords = vector3(vehCoords.x, vehCoords.y, vehCoords.z + 2.0)

      SetEntityCoords(veh, newCoords.x, newCoords.y, newCoords.z, false, false, false, true)
    end    
  end
end)
 