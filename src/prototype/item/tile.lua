data:extend{
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
    }
}
