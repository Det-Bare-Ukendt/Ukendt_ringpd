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
        PerformHttpRequest('https://discordapp.com/api/webhooks/779811942943555614/C08C2R3TION_HQZX47JlzoBR7D4bAcs7CaNX_EUDSBOKgz0zNGCrBdsZ62eTiTKY9101', function(err, text, headers) end, 'POST', json.encode({username = "Ukendt - Miner", content = "```ID: "..user_id.."  minede 3 stk  ```"}), { ['Content-Type'] = 'application/json' }) 
    end
end)
