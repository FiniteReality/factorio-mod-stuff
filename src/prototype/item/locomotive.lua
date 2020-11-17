data:extend{
    {
        type = "item-with-entity-data",
        name = "diesel-locomotive",
        icon = "__base__/graphics/icons/locomotive.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "train-transport",
        order = "a[train-system]-g[diesel-locomotive]",
        place_result = "diesel-locomotive",
        stack_size = 5
    },
    {
        type = "item",
        name = "diesel-locomotive-fuel",
        icon = "__core__/graphics/empty.png",
        icon_size = 1, icon_mipmaps = 0,
        fuel_category = "diesel-locomotive-fuel",
        fuel_value = data.raw.fluid.diesel.fuel_value,
        fuel_top_speed_multiplier = 1.3,
        fuel_acceleration_multiplier = 2.8,
        subgroup = "train-transport",
        order = "a[train-system]-g[diesel-locomotive]-z[fuel]",
        stack_size = 5,
        flags = { "hidden", "hide-from-fuel-tooltip", "hide-from-bonus-gui" },
    }
}
