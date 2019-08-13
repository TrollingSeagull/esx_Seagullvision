ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('Nightvision', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	  TriggerClientEvent('Nightvision', source)
end)

ESX.RegisterUsableItem('Thermalvision', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	  TriggerClientEvent('Thermalvision', source)
end)

RegisterNetEvent('night-thermal')
AddEventHandler('night-thermal', function()
	Citizen.CreateThread(function()

    RequestAnimDict('anim@mp_helmets@on_bike@sports')

    while not HasAnimDictLoaded('anim@mp_helmets@on_bike@sports') do
      Citizen.Wait(0)
    end

		TaskPlayAnim(GetPlayerPed(-1), 'anim@mp_helmets@on_bike@sports')
	end)	
end)
