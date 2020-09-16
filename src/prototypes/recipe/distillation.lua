data:extend{
    {
        type = "recipe",
        name = "coking",
        category = "oil-processing",
        --enabled = false,
        energy_required = 30,
        ingredients = {
            { type = "item", name = "coal", amount = 10 }
        },
        results = {
            { type = "item", name = "coke", amount = 5 },
            { type = "fluid", name = "crude-tar", amount = 1 }
        },
        -- TODO: custom icon
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "fluid-recipes",
        order = "a[oil-processing]-a[coking]"
    },
    {
        type = "recipe",
        name = "basic-tar-processing",
        category = "chemistry",
        --enabled = false,
        energy_required = 15,
        ingredients = {
            { type = "fluid", name = "crude-tar", amount = 20 },
        },
        results = {
            { type = "fluid", name = "tar", amount = 5 }
        },
        main_product = "",
        -- TODO: custom icon
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-a[basic-tar-processing]"
    },
    {
        type = "recipe",
        name = "advanced-tar-processing",
        category = "chemistry",
        --enabled = false,
        energy_required = 10,
        ingredients = {
            { type = "fluid", name = "crude-tar", amount = 20 },
        },
        results = {
            { type = "fluid", name = "tar", amount = 10 },
            { type = "item", name = "pitch", amount = 1 }
        },
        main_product = "",
        -- TODO: custom icon
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-b[advanced-tar-processing]"
    },
    {
        type = "recipe",
        name = "latex-extraction",
        category = "chemistry",
        energy_required = 60,
        ingredients = {
            { type = "item", name = "wood", amount = 20 }
        },
        results = {
            { type = "fluid", name = "latex", amount = 5 }
        },
        -- TODO: custom icon
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-a[latex-extraction]"
    },
    {
        type = "recipe",
        name = "latex-vulcanization",
        category = "chemistry",
        energy_required = 30,
        ingredients = {
            { type = "fluid", name = "latex", amount = 25 },
            { type = "item", name = "sulfur", amount = 5 }
        },
        results = {
            { type = "item", name = "latex-ball", amount = 1 }
        },
        -- TODO: custom icon
        icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-b[latex-vulcanization]"
    }
}