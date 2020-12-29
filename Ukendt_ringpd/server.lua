--[[
╔╗ ╔╗╔╗╔═╗╔═══╗╔═╗ ╔╗╔═══╗╔════╗ 
║║ ║║║║║╔╝║╔══╝║║╚╗║║╚╗╔╗║║╔╗╔╗║
║║ ║║║╚╝╝ ║╚══╗║╔╗╚╝║ ║║║║╚╝║║╚╝ 
║║ ║║║╔╗║ ║╔══╝║║╚╗║║ ║║║║  ║║  
║╚═╝║║║║╚╗║╚══╗║║ ║║║╔╝╚╝║ ╔╝╚╗ 
╚═══╝╚╝╚═╝╚═══╝╚╝ ╚═╝╚═══╝ ╚══╝  
]]--

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","Ukendt_ringpd")


RegisterServerEvent('Ukendt:getinfo')
AddEventHandler('Ukendt:getinfo', function()
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
        if vRP.hasPermission({user_id, "police.pc"}) then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Der er en der har brug for hjælp på Politistationen!', length = 2500, style = { ['background-color'] = '#1e5d76', ['color'] = '#ffffff' } }) 
        PerformHttpRequest('DIT DISCORD WEBHOOKS', function(err, text, headers) end, 'POST', json.encode({username = "Ukendt_ringpd", content = "```ID: "..user_id.."  ringet på klokken  ```"}), { ['Content-Type'] = 'application/json' }) 
    end
end)
