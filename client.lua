if not lib then 
    error('ox_lib required')
end

lib.onCache('vehicle', function(value)
    if not value then return end
    SetTimeout(0, function()
        if cache.seat ~= -1 then return end

        local vehicleLimit = Vehicles[GetEntityModel(value)]
        if not vehicleLimit then return end

        SetEntityMaxSpeed(value, vehicleLimit / 3.6)
    end)
end)
