data:extend{
    {
        type = "recipe",
        name = "tarmac",
        category = "crafting-with-fluid",
        energy_required = 3,
        ingredients = {
            { type = "item", name = "stone", amount = 20 },
            { type = "fluid", name = "tar", amount = 20 }
        },
        result = "tarmac"
    },
    {
        type = "recipe",
        name = "asphalt",
        category = "crafting-with-fluid",
        energy_required = 3,
        ingredients = {
            { type = "item", name = "pitch", amount = 20 },
            { type = "item", name = "concrete", amount = 1 },
        },
        result = "asphalt"
    },
    {
        type = "recipe",
        name = "blast-furnace",
        category = "crafting",
        energy_required = 5,
        ingredients = {
            { type = "item", name = "refined-concrete", amount = 50 },
            { type = "item", name = "steel", amount = 80 },
            { type = "item", name = "pipe", amount = 20 },
            -- TODO: replace with hardened gears
            { type = "item", name = "iron-gear-wheel", amount = 30 }
        }
    }
}
