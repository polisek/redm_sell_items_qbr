local sharedItems = exports['qbr-core']:GetItems()

RegisterServerEvent('pls_vykup:server:sellitem')
AddEventHandler('pls_vykup:server:sellitem', function(amount,data)
    
	local src = source
    local Player = exports['qbr-core']:GetPlayer(src)
	local amount = tonumber(amount)
	local checkitem = Player.Functions.GetItemByName(data.item)
	if amount >= 0 then
		if checkitem ~= nil then
			local amountitem = Player.Functions.GetItemByName(data.item).amount
			if amountitem >= amount then
				totalcash = (amount * data.price) 
				Player.Functions.RemoveItem(data.item, amount)
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems[data.item], "remove")
				Player.Functions.AddMoney('cash', totalcash)
				TriggerClientEvent('QBCore:Notify', src, 9, 'You sold ' ..amount.. ' for  $'..totalcash, 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			else
				TriggerClientEvent('QBCore:Notify', src, 9, 'You dont have that much on you.', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
			end
		else
			TriggerClientEvent('QBCore:Notify', src, 9, 'You don t have an item on you', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
		end
	else
        	TriggerClientEvent('QBCore:Notify', src, 9, 'Must not be a negative value.', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
    	end
end)

