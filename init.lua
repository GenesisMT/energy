
local turquoise = "#00ff95"


minetest.register_craftitem("energy:energy_ingot", {
    description = minetest.colorize(turquoise,"Energy Ingot\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    inventory_image = "energy_energy_ingot.png",
    
})

minetest.register_craftitem("energy:energy_particles", {
    description = minetest.colorize(turquoise,"Energy Particles\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    inventory_image = "energy_energy_particles.png",
    
})

minetest.register_craft({
	type = "cooking",
	output = "energy:energy_ingot",
	recipe = "energy:energy_lump",
	cooktime = "30"
})


minetest.register_craftitem("energy:energy_soul", {
    description = minetest.colorize(turquoise,"Energy Soul\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    inventory_image = "energy_energy_soul.png",
    
})


minetest.register_craftitem("energy:energy_lump", {
    description = minetest.colorize(turquoise,"Energy Lump\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    inventory_image = "energy_energy_lump.png",
    max_stack = 99
})

minetest.register_craft({
    output = "energy:energy_soul",
    recipe = {
        {"energy:energy_particles", "", "energy:energy_particles"},
        {"", "", ""},
        {"energy:energy_particles", "", "energy:energy_particles"},
    }
})

minetest.register_craft({
    output = "energy:energy_lump",
    recipe = {
        {"", "", "energy:energy_soul"},
        {"", "energy:energy_soul", ""},
        {"energy:energy_soul", "", ""}, 
    }
})


minetest.register_tool("energy:energy_sword", {
    description = minetest.colorize(turquoise,"Energy Sword\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    inventory_image = "energy_energy_sword.png",
    
    tool_capabilities = {
        full_punch_interval = 0.6,
        max_drop_level = 1,
        groupcaps = {
            snappy = {
                times = {0.01, 0.07, 0.06},
                uses = 150,
                maxlevel = 80
            },
        },
        damage_groups = {fleshy = 30, burns = 0},
    },
})




    minetest.register_tool("energy:energy_pickaxe", {
        description = minetest.colorize(turquoise,"Energy Pickaxe\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
        inventory_image = "energy_energy_pickaxe.png",
       
        tool_capabilities = {

            full_punch_interval = 0.7,
            max_drop_level = 3,
            groupcaps={
                cracky = {
                    times = {[1] = 30, [2] = 30, [3] = 2},
                    uses = 150,
                    maxlevel = 80
                },
                 crumbly = {times={[1]=0.1, [2]=0.50, [3]=6}, uses=150, maxlevel=80},
                 snappy = {times={[1]=0.1, [2]=0.50, [3]=6}, uses=150, maxlevel=80},
             },
            damage_groups = {fleshy = 15, burns = 0},
        },
    })





minetest.register_tool("energy:energy_shovel", {
    description = minetest.colorize(turquoise,"Energy Shovel\n")..minetest.colorize(turquoise, "tier 6: (legendary)"), 
    inventory_image = "energy_energy_shovel.png",

    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level=1,
        groupcaps={
            crumbly = {times={[1]=0.01, [2]=0.50, [3]=6}, uses=150, maxlevel=80},
        },
        damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("energy:energy_axe", {
    description = minetest.colorize(turquoise,"Energy Axe\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    inventory_image = "energy_energy_axe.png",

    tool_capabilities = {
        full_punch_interval = 11,
        max_drop_level = 10,
        groupcaps = {
            choppy = {
                times = {[1] = 0.1, [2] = 5, [3] = 5},
                uses = 150,
                maxlevel = 50
            },
        },
        damage_groups = {fleshy = 7, burns = 0},
    },

})


minetest.register_craft({
    output = "energy:energy_sword",
    recipe = {
        {"energy:energy_ingot"},
        {"energy:energy_ingot"},
        {"default:stick"},
    }
})

minetest.register_craft({
    output = "energy:energy_pickaxe",
    recipe = {
        {"energy:energy_ingot", "energy:energy_ingot", "energy:energy_ingot"},
        {"", "default:stick", ""},
        {"", "default:stick", ""},
    }
})

minetest.register_craft({
    output = "energy:energy_shovel",
    recipe = {
        {"energy:energy_ingot"},
        {"default:stick"},
        {"default:stick"},
    }
})

minetest.register_craft({
    output = "energy:energy_axe",
    recipe = {
        {"energy:energy_ingot", "energy:energy_ingot", ""},
        {"energy:energy_ingot", "default:stick", ""},
        {"", "default:stick", ""},
    }
})

minetest.register_node("energy:energy_block", {
    description = minetest.colorize(turquoise,"Energy Block\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    tiles = {"energy_energy_block.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 2},
    light_source = 2,
})

minetest.register_craft({
    type = "shapeless",
    output = "energy:energy_ingot 9",
    recipe = {"energy:energy_block"}
})

minetest.register_craft({
    output = "energy:energy_block",
    recipe = {
        {"energy:energy_ingot", "energy:energy_ingot", "energy:energy_ingot"},
        {"energy:energy_ingot", "energy:energy_ingot", "energy:energy_ingot"},
        {"energy:energy_ingot", "energy:energy_ingot", "energy:energy_ingot"},
    }
})

minetest.register_node("energy:energy_ore", {
    description = minetest.colorize(turquoise,"Energy Ore\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
    tiles = {"default_stone.png^energy_energy_ore.png"},
    is_ground_content = false,
    drop = "energy:energy_particles",
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 2},
    light_source = 14,
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "energy:energy_ore",
    wherein        = "default:stone",
    clust_scarcity = 32*32*32,
    clust_num_ores = 1,
    clust_size     = 10,
    height_min     = -31000,
    height_max     = -20000,
})

if minetest.get_modpath("3d_armor") then

	armor:register_armor("energy:helmet_energy", {
		description = minetest.colorize(turquoise, "Energy Helmet\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
		inventory_image = "energy_inv_helmet_energy.png",
		groups = {armor_head=1, armor_heal=12, armor_use=100, armor_fire=1},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor("energy:chestplate_energy", {
		description = minetest.colorize(turquoise, "Energy Chestplate\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
		inventory_image = "energy_inv_chestplate_energy.png",
		groups = {armor_torso=1, armor_heal=12, armor_use=100, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor("energy:leggings_energy", {
		description = minetest.colorize(turquoise, "Energy Leggings\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
		inventory_image = "energy_inv_leggings_energy.png",
		groups = {armor_legs=1, armor_heal=12, armor_use=100, armor_fire=1},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
	armor:register_armor("energy:boots_energy", {
		description = minetest.colorize(turquoise, "Energy Boots\n")..minetest.colorize(turquoise, "tier 6: (legendary)"),
		inventory_image = "energy_inv_boots_energy.png",
		groups = {armor_feet=1, armor_heal=12, armor_use=100, physics_speed=3,
				physics_jump=1, armor_fire=1},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})

end
