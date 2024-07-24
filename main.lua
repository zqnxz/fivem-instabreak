RegisterCommand('brake', function()
  local ped = PlayerPedId()
  local veh = GetVehiclePedIsIn(ped, false)

  if GetPedInVehicleSeat(veh, -1) == ped then
    SetEntityVelocity(veh, 0.0, 0.0, 0.0)
  end
end, false)

RegisterKeyMapping('brake', 'Brake', 'keyboard', 'E')
