-- Gets all diesel locomotives in a train, regardless of direction
local function find_diesel_locomotives(train)
    local result = { }
    for dir, trains in pairs(train.locomotives) do
        for i, locomotive in ipairs(trains) do
            if locomotive.name == "diesel-locomotive" then
                result[#result+1] = locomotive
            end
        end
    end

    return result
end

-- Since diesel trains require a fluid wagon of diesel, this will always occur
-- when a diesel locomotive is placed.
script.on_event(defines.events.on_train_created, function(event)
    if not global.diesel_locomotives then
        global.diesel_locomotives = { }
    end

    global.diesel_locomotives[event.train.id] = {
        train = event.train,
        locomotives = find_diesel_locomotives(event.train),
    }

    -- Ensure any previous trains using this ID are removed, to prevent save
    -- bloat
    if event.old_train_id_1 then
        global.diesel_locomotives[event.old_train_id_1] = nil
    end

    if event.old_train_id_2 then
        global.diesel_locomotives[event.old_train_id_2] = nil
    end
end)

-- TODO: check this for performance issues
script.on_event(defines.events.on_tick, function()
    -- If a train hasn't been created we should bail out early
    if not global.diesel_locomotives then
        return
    end

    local locomotive_fuel = game.item_prototypes["diesel-locomotive-fuel"]
    local ids_to_remove = { }

    for id, info in pairs(global.diesel_locomotives) do
        if info.train.valid then
            for i, locomotive in ipairs(info.locomotives) do
                -- Ensure diesel locomotives are burning the internal fuel type
                if not locomotive.burner.currently_burning then
                    locomotive.burner.currently_burning = locomotive_fuel
                end

                -- Refuel any trains by voiding diesel
                if locomotive.burner.remaining_burning_fuel <= 1 then
                    local missing_units = 1
                    for i, wagon in ipairs(info.train.fluid_wagons) do
                        missing_units - wagon.remove_fluid{
                            name = "diesel",
                            amount = missing_units
                        }

                        -- Bail out if we've managed to satisfy our fuel needs
                        if missing_units == 0 then
                            break
                        end
                    end

                    -- Update the locomotive burner to be as full as it can be,
                    -- given the current amount of fuel we have
                    locomotive.burner.remaining_burning_fuel = locomotive_fuel.fuel_value
                        - missing_units * locomotive_fuel.fuel_value
                end
            end
        else
            ids_to_remove[#ids_to_remove+1] = id
        end
    end

    -- Remove any invalid trains after the fact
    for i, id in ipairs(ids_to_remove) do
        trains[id] = nil
    end
end)
