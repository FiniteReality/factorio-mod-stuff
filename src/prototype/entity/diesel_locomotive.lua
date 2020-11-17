local locomotive = util.copy(data.raw["locomotive"]["locomotive"])

locomotive.name = "diesel-locomotive"
locomotive.minable = { mining_time = 0.5, result = "diesel-locomotive" }
locomotive.energy_source = {
    type = "burner",
    fuel_inventory_size = 0,
    burnt_inventory_size = 0,
    fuel_category = "diesel-locomotive-fuel"
}

data:extend{
    locomotive
}
