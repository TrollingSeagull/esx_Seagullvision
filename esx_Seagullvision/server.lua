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
