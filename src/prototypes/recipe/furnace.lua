data:extend{
    {
        type = "recipe",
        name = "latex-plastic",
        category = "smelting",
        energy_required = 5,
        ingredients = {
            { type = "item", name = "latex-ball", amount = 10 }
        },
        result = "plastic-bar"
    },
    {
        type = "recipe",
        name = "efficient-steel",
        category = "blast-smelting",
        energy_required = 30,
        ingredients = {
            { type = "item", name = "iron-ore", amount = 3 },
            { type = "fluid", name = "steam", amount = 10 }
        },
        result = "steel-plate"
    }
}
