data:extend{
    {
        type = "item",
        name = "coke",
        -- TODO: custom icon
        icon = "__base__/graphics/icons/coal-1.png",
        icon_size = 64, icon_mipmaps = 4,
        fuel_category = "coke",
        fuel_value = "8MJ",
        subgroup = "raw-material",
        order = "b[coke]",
        stack_size = 50
    },
    {
        type = "item",
        name = "pitch",
        icon = "__base__/graphics/icons/coal-1.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "b[pitch]",
        stack_size = 50
    },
    {
        type = "item",
        name = "latex-ball",
        icon = "__base__/graphics/icons/coal-1.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "b[latex]",
        stack_size = 100
    },
    {
        type = "item",
        name = "tarmac",
        icon = "__base__/graphics/icons/stone-brick.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "terrain",
        order = "b[tarmac]",
        stack_size = 100,
        place_as_tile = {
            result = "tarmac",
            condition_size = 1,
            condition = {
                "water-tile"
            }
        }
    },
    {
        type = "item",
        name = "asphalt",
        icon = "__base__/graphics/icons/refined-concrete.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "terrain",
        order = "c[asphalt]",
        stack_size = 100,
        place_as_tile = {
            result = "asphalt",
            condition_size = 1,
            condition = {
                "water-tile"
            }
        }
    },
    {
        type = "item",
        name = "blast-furnace",
        icon = "__base__/graphics/icons/steel-furnace.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        stack_size = data.raw["item"]["steel-furnace"].stack_size,
        place_result = "blast-furnace"
    }
}
