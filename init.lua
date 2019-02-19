-- all code is released under the permissive MIT licence for more info please go to this link https://opensource.org/licenses/MIT

--basic diamond items

--Industrial Diamond
minetest.register_craftitem("gocm_carbon:industrial_diamond", {
description = "An Industrial Grade Diamond",
groups = {compressable=1},
returns = 'gocm_carbon:recompressed_diamond',
inventory_image = "tgg_compressedrawdiamondv2.png",
})
--Recompressed Diamond
minetest.register_craftitem("gocm_carbon:recompressed_diamond", {
description = "A Recompressed Diamond",
groups = {compressable=1},
inventory_image = "tgg_recompresseddiamond.png"
})

--Mese Diamond
minetest.register_craftitem("gocm_carbon:mese_diamond", {
description = "A Glowing Mese Diamond",
groups = {compressable=1},
inventory_image = "tgg_mese_diamond.png"
})

--mese stick
minetest.register_craftitem("gocm_carbon:mese_stick", {
description = "Mese Stick",
groups = {compressable=1},
inventory_image = "tgg_mese_stick.png",
})

minetest.register_craft({
	type = "shapeless",
	output = "gocm_carbon:mese_stick",
	recipe = {
		"default:mese_crystal", "default:mese_crystal"},
})

--a Marvelous Mese Diamond Hammer
minetest.register_craftitem("gocm_carbon:epic_mese_diamond_hammer", {
description = "A Marvelous Mese Diamond Hammer",
groups = {compressable=1},
inventory_image = "tgg_marvelous_diamond_mese_hammer.png",
})

--Mese Diamond Block
minetest.register_node("gocm_carbon:mese_diamond_block", {
	description = "Mese Diamond Block",
	tiles = {"tgg_mese_diamond_block.png"},
	groups = {cracky=3, stone=1},
	light_source = 14
})

minetest.register_craft({
type = "shapeless",
output = "gocm_carbon:mese_diamond_block",
recipe = {

"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:mese_block",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",

	},
})



--Basic charcoal items
minetest.register_craftitem("gocm_carbon:charcoal", {
description = "A Pice Of Charcoal",
groups = {compressable=1},
inventory_image = "tgg_charcoal.png",

	minetest.register_craft({
	type = "cooking",
	output = "gocm_carbon:charcoal",
	recipe = "group:wood",
	cooktime = 10
	}),

	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_carbon:charcoal",
	burntime = 40
	})

})

minetest.register_craftitem("gocm_carbon:charcoal_willow", {
description = "Willow Charcoal",
inventory_image = "tgg_willowcharcoal.png",
})

	minetest.register_craft({
	type = "cooking",
	output = "gocm_carbon:charcoal_willow",
	recipe = "group:grass",
	cooktime = 5
	})


	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_carbon:charcoal_willow",
	burntime = 20
	})





--charcoal_block nodes and crafts
minetest.register_node("gocm_carbon:charcoal_block", {
description = "a Block of Charcoal",
tiles = {"tgg_charcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},

	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_carbon:charcoal_block",
	burntime = 370
	}),

	minetest.register_craft({
	type = "shapeless",
	output = "gocm_carbon:charcoal_block 1",
	recipe = {

	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",
	"gocm_carbon:charcoal",

		},
	})

})

--willowcharcoal_block node and related crafts
minetest.register_node("gocm_carbon:willowcharcoal_block", {
description = " Willow Charcoal",
tiles = {"tgg_willowcharcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},

	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_carbon:willowcharcoal_block",
	burntime = 150
	}),

	minetest.register_craft({
	type = "shapeless",
	output = "gocm_carbon:willowcharcoal_block 1",
	recipe = {

	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",
	"gocm_carbon:charcoal_willow",

		},
	})

})

--tools will go here for now

minetest.register_tool("gocm_carbon:mese_diamond_pick", {
	description = "Mese Diamond Pick",
	inventory_image = "tgg_recompressed_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.50, [2]=0.75, [3]=0.35}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("gocm_carbon:mese_diamond_shovel", {
	description = "Mese Diamond shovel",
	inventory_image = "tgg_recompressed_shovel.png",
	wield_image = "tgg_recompressed_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.90, [2]=0.45, [3]=0.25}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("gocm_carbon:mese_diamond_axe", {
	description = "Mese Diamond Axe",
	inventory_image = "tgg_recompressed_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=1.9, [2]=0.65, [3]=0.38}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

--
--diamond crafts
--

--Mese Diamond
minetest.register_craft({
type = "shapeless",
output = "gocm_carbon:mese_diamond",
recipe = {
"gocm_carbon:recompressed_diamond",
"gocm_carbon:recompressed_diamond",
"gocm_carbon:recompressed_diamond",
"gocm_carbon:recompressed_diamond",
"default:mese_crystal",
"gocm_carbon:recompressed_diamond",
"gocm_carbon:recompressed_diamond",
"gocm_carbon:recompressed_diamond",
"gocm_carbon:recompressed_diamond"
},
})

--
--Tool Crafts
--

minetest.register_craft({
	type = "shaped",
	output = "gocm_carbon:mese_diamond_pick 1",
	recipe = {
		{'gocm_carbon:mese_diamond', 'gocm_carbon:mese_diamond', 'gocm_carbon:mese_diamond'},
		{'', 'gocm_carbon:mese_stick', ''},
		{'', 'gocm_carbon:mese_stick', ''},
	}
})

minetest.register_craft({
type = "shaped",
output = "gocm_carbon:mese_diamond_axe 1",
recipe = {
	{'gocm_carbon:mese_diamond', 'gocm_carbon:mese_diamond'},
	{'gocm_carbon:mese_diamond', 'gocm_carbon:mese_stick'},
	{'', 'gocm_carbon:mese_stick'},
}
})

minetest.register_craft({
	type = "shaped",
	output = "gocm_carbon:mese_diamond_shovel 1",
	recipe = {
		{'gocm_carbon:mese_diamond'},
		{'gocm_carbon:mese_stick'},
		{'gocm_carbon:mese_stick'},
	}
})

--all other crafts go here
minetest.register_craft({
type = "shaped",
output = "default:torch 4",
recipe = {

	{"gocm_carbon:charcoal"},
	{"default:stick"}
}

})

minetest.register_craft({
type = "shaped",
output = "gocm_carbon:epic_mese_diamond_hammer 1",
recipe = {
	{'gocm_carbon:mese_diamond_block', 'gocm_carbon:mese_diamond_block'},
	{'gocm_carbon:mese_diamond_block', 'gocm_carbon:mese_stick'},
	{'', 'gocm_carbon:mese_stick'},
}

})

minetest.register_craft({
type = "shapeless",
output = "gocm_carbon:industrial_diamond",
recipe = {
"gocm_carbon:epic_mese_diamond_hammer",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal",
"gocm_carbon:charcoal"
},
replacements = {{"gocm_carbon:epic_mese_diamond_hammer", "gocm_carbon:epic_mese_diamond_hammer"}},
})

minetest.register_craft({
type = "shapeless",
output = "default:diamond 2",
recipe = {
"gocm_carbon:epic_mese_diamond_hammer",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond",
"gocm_carbon:industrial_diamond"
},
replacements = {{"gocm_carbon:epic_mese_diamond_hammer", "gocm_carbon:epic_mese_diamond_hammer"}},
})

minetest.register_craft({
type = "shapeless",
output = "gocm_carbon:recompressed_diamond 2",
recipe = {
"gocm_carbon:epic_mese_diamond_hammer",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond"
},
replacements = {{"gocm_carbon:epic_mese_diamond_hammer", "gocm_carbon:epic_mese_diamond_hammer"}},
})
