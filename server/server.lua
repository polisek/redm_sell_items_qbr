local sharedItems = exports['qbr-core']:GetItems()

RegisterServerEvent('pls_vykup:server:sellitem')
AddEventHandler('pls_vykup:server:sellitem', function(amount,data)
    
	local src = source
    local Player = exports['qbr-core']:GetPlayer(src)
	local amount = tonumber(amount)
	local checkbars = Player.Functions.GetItemByName(data.item)
	if checkbars ~= nil then
		local amountbars = Player.Functions.GetItemByName(data.item).amount
		if amountbars >= amount then
			totalcash = (amount * data.price) 
			Player.Functions.RemoveItem(data.item, amount)
			TriggerClientEvent('inventory:client:ItemBox', src, sharedItems[data.item], "remove")
			Player.Functions.AddMoney('cash', totalcash)
			TriggerClientEvent('QBCore:Notify', src, 9, 'Prodal si ' ..amount.. ' kusů za  $'..totalcash, 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
		else
			TriggerClientEvent('QBCore:Notify', src, 9, 'Nemas takovy pocet', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
		end
	else
		TriggerClientEvent('QBCore:Notify', src, 9, 'Nemas zadne predmety', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
	end
end)