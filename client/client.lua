local vykupdata = {}



Citizen.CreateThread(function()
    for k,v in pairs(Config.VykupShops) do
        exports['qbr-core']:createPrompt(v.uid,v.pos, 0xF3830D8E, v.header, {
            type = 'client',
            event = 'pls_vykup:openmenu',
            args={v.uid}
        })  
    end
end)




RegisterNetEvent('pls_vykup:openmenu') 
AddEventHandler('pls_vykup:openmenu', function(menuid)
    print(menuid)
    local shoptable = {
        {
            header = "| "..getMenuTitle(menuid).." |",
            isMenuHeader = true,
        },
    }
    local closemenu = {
        header = "Close menu",
        txt = '', 
        params = {
            event = 'qbr-menu:closeMenu',
        }
    }
    for k ,v in pairs(Config.VykupShops) do
        if v.uid == menuid then
            for g ,f in pairs(v.shopdata) do
                local lineintable = {
                    header = f.title,
                    txt = f.description,
                    params = {
                        event = 'pls_vykup:client:sellcount',
                        args={menuid,f}
                    }
                }
                table.insert(shoptable,lineintable)
            end 
        end
    end
    table.insert(shoptable,closemenu)
	exports['qbr-menu']:openMenu(shoptable)
end)

RegisterNetEvent('pls_vykup:client:sellcount') 
AddEventHandler('pls_vykup:client:sellcount', function(arguments)
    local menuid = arguments[1]
    local data = arguments[2]
    local inputdata = exports['qbr-input']:ShowInput({
        header = "Enter the number of  1 / "..data.price.." $",
		inputs = {
            {
                text = data.description,
                input = "amount",
                type = "number",
                isRequired = true
            },
		}
    })
    if inputdata ~= nil then
        for k,v in pairs(inputdata) do
			TriggerServerEvent('pls_vykup:server:sellitem', v,data)
        end
    end
end)


function getMenuTitle(menuid)
    for k,v in pairs(Config.VykupShops)  do
        if menuid == v.uid then
            return v.header
        end
    end
end
