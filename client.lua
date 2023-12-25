if not lib then 
    error('ox_lib required')
end

lib.onCache('vehicle', function(value)
    if not value then return end
    SetTimeout(0, function()
        if cache.seat ~= -1 then return end

        local vehicleLimit = Vehicles[GetEntityModel(value)]
        if not vehicleLimit then return end

        while cache.seat == -1 do
            Wait(0)
            local currentSpeed = GetEntitySpeed(value) * 3.6
            if currentSpeed > vehicleLimit then
                SetEntityMaxSpeed(value, vehicleLimit / 3.6)
            end
        end
    end)
end)
