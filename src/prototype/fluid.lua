data:extend{
    {
        type = "fluid",
        name = "latex",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = { r = 0.9, g = 0.9, b = 0.85 },
        flow_color = { r = 0.9, g = 0.9, b = 0.85 },
        max_temperature = 100,
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluid]-b[latex]"
    },
    {
        type = "fluid",
        name = "crude-tar",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = { r = 0, g = 0, b = 0 },
        flow_color = { r = 0, g = 0, b = 0 },
        max_temperature = 100,
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluid]-b[crude-tar]"
    },
    {
        type = "fluid",
        name = "tar",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = { r = 0, g = 0, b = 0 },
        flow_color = { r = 0, g = 0, b = 0 },
        max_temperature = 100,
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluid]-c[tar]"
    },
    {
        type = "fluid",
        name = "diesel",
        default_temperature = 25,
        fuel_value = "100MJ",
        heat_capacity = "0.1KJ",
        base_color = { r = 0, g = 0, b = 0 },
        flow_color = { r = 0, g = 0, b = 0 },
        max_temperature = 100,
        icon = "__base__/graphics/icons/fluid/crude-oil.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluid]-d[diesel]"
    }
}
