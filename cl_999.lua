Citizen.CreateThread(function ()
    TriggerEvent('chat:addSuggestion', '/999', 'Submits a 999 call to Emergency Service!', {
    { name="Report", help=""}  
})
end)


RegisterCommand('999', function(source, args)
    local ped = GetPlayerPed(-1)
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    TriggerServerEvent('999', location, msg)
end)  

Citizen.CreateThread(function()
	TriggerServerEvent('999')
end)

RegisterNetEvent("999")
AddEventHandler(function(x, y)
	-- Set the waypoint for this player
	SetNewWaypoint(x, y)
end, "999") 


-- 101 Command NON Emergency 


Citizen.CreateThread(function ()
    TriggerEvent('chat:addSuggestion', '/101', 'Submits a Non Emergency call to Emergency Service!', {
    { name="Report", help=""}  
})
end)

RegisterCommand('101', function(source, args)
    local ped = GetPlayerPed(-1)
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    TriggerServerEvent('101', location, msg)
end)  

Citizen.CreateThread(function()
	TriggerServerEvent('101')
end)

RegisterNetEvent("101")
AddEventHandler(function(x, y)
	-- Set the waypoint for this player
	SetNewWaypoint(x, y)
end, "999")    


-- Highways England Command 

Citizen.CreateThread(function ()
    TriggerEvent('chat:addSuggestion', '/5000', 'Submits a  Emergency call to Highways England Service!', {
    { name="Report", help=""}  
})
end) 


RegisterCommand('5000', function(source, args)
    local ped = GetPlayerPed(-1)
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    TriggerServerEvent('5000', location, msg)
end)  

Citizen.CreateThread(function()
	TriggerServerEvent('5000')
end)

RegisterNetEvent("5000")
AddEventHandler(function(x, y)
	-- Set the waypoint for this player
	SetNewWaypoint(x, y)
end, "5000")    





