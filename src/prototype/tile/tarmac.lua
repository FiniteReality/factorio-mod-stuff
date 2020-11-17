data:extend{
    {
        type = "tile",
        name = "tarmac",
        order = "a-b-a",
        needs_correction = false,
        minable = { mining_time = 0.1, result = "tarmac" },
        mined_sound = util.copy(data.raw.tile["stone-path"].mined_sound),
        collision_mask = { "ground-tile" },
        walking_speed_modifier = 1.25,
        layer = 58,
        transition_overlay_layer_offset = 2,
        decorative_removal_probability = 0.25,
        variants = util.copy(data.raw.tile["stone-path"].variants),
        walking_sound = util.copy(data.raw.tile["stone-path"].walking_sound),
        build_sound = util.copy(data.raw.tile["stone-path"].build_sound),
        map_color = { r = 0, g = 0, b = 0 },
        pollution_absorption_per_second = 0,
        vehicle_friction_modifier = 0.6
    }
}
