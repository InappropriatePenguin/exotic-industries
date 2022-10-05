ei_data = require("lib/data")

--====================================================================================================
--DEEP DRILL
--====================================================================================================

data:extend({
    {
        name = "ei_deep-drill",
        type = "item",
        icon = ei_graphics_item_path.."deep-drill.png",
        icon_size = 64,
        subgroup = "production-machine",
        order = "d-a-a",
        place_result = "ei_deep-drill",
        stack_size = 50
    },
    {
        name = "ei_deep-drill",
        type = "recipe",
        category = "crafting",
        energy_required = 1,
        ingredients =
        {
            {"electronic-circuit", 2},
            {"electric-engine-unit", 4},
            {"ei_iron-beam", 2},
            {"ei_copper-mechanical-parts", 6}
        },
        result = "ei_deep-drill",
        result_count = 1,
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_deep-drill",
    },
    {
        name = "ei_deep-drill",
        type = "assembling-machine",
        icon = ei_graphics_item_path.."deep-drill.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 1,
            result = "ei_deep-drill"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        map_color = ei_data.colors.assembler,
        crafting_categories = {"ei_growing"},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "150kW",
        fluid_boxes = {
            {   
                base_area = 1,
                base_level = -1,
                height = 2,
                pipe_covers = pipecoverspictures(),
                pipe_picture = ei_pipe_big,
                pipe_connections = {
                    {type = "input", position = {3, 0}},
                },
                production_type = "input",
            },
            off_when_no_fluid_recipe = true
        },
        animation = {
            filename = ei_graphics_entity_path.."deep-drill.png",
            size = {512,512},
            shift = {0, 0},
	        scale = 0.35,
            line_length = 1,
            --lines_per_file = 2,
            frame_count = 1,
            -- animation_speed = 0.2,
        },
        working_visualisations = {
            {
              animation = 
              {
                filename = ei_graphics_entity_path.."deep-drill_animation.png",
                size = {512,512},
                shift = {0, 0},
	            scale = 0.35,
                line_length = 4,
                lines_per_file = 4,
                frame_count = 16,
                animation_speed = 0.4,
                run_mode = "backward",
              }
            },
            {
                light = {
                type = "basic",
                intensity = 1,
                size = 15
                }
            }
        },
        working_sound =
        {
            sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},
            apparent_volume = 0.3,
        },
    }
})