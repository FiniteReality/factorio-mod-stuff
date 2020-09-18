local furnace = util.copy(data.raw["furnace"]["steel-furnace"])

furnace.name = "blast-furnace"
furnace.crafting_categories = {"blast-smelting"}
furnace.energy_source = { type = "burner", fuel_category = "coke", fuel_inventory_size = 1 }
furnace.fluid_boxes = {
    {
        base_area = 1,
        height = 2,
        base_level = -1,

        pipe_connections = {
            { position = { -0.5, 1.1 }, type = "input" }
        },
        production_type = "input",
        filter = "steam"
    }
}
furnace.minable = { mining_time = 0.2, result = "blast-furnace" }
furnace.collision_box = {{-1, -1}, {1, 1}}
furnace.selection_box = {{-1, -1}, {1, 1}}

data:extend{furnace}
