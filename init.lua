-- all code is released under the permissive MIT licence for more info please go to this link https://opensource.org/licenses/MIT

--basic diamond items

--Industrial Diamond
minetest.register_craftitem("gocm_charcoal:industrial_diamond", {
description = "An Industrial Grade Diamond",
groups = {compressable=1},
returns = 'gocm_charcoal:recompressed_diamond',
inventory_image = "tgg_compressedrawdiamondv2.png",
})
--Recompressed Diamond
minetest.register_craftitem("gocm_charcoal:recompressed_diamond", {
description = "A Recompressed Diamond",
groups = {compressable=1},
inventory_image = "tgg_recompresseddiamond.png"
})

--mese stick
minetest.register_craftitem("gocm_charcoal:mese_stick", {
description = "Mese Stick",
groups = {compressable=1},
inventory_image = "tgg_mese_stick.png",
})

minetest.register_craft({
	type = "shapeless",
	output = "gocm_charcoal:mese_stick",
	recipe = {
		"default:mese_crystal", "default:mese_crystal"},
})

--a Marvelous Mese Diamond Hammer
minetest.register_craftitem("gocm_charcoal:epic_mese_diamond_hammer", {
description = "A Marvelous Mese Diamond Hammer",
groups = {compressable=1},
inventory_image = "tgg_marvelous_diamond_mese_hammer.png",
})

--Mese Diamond Block
minetest.register_node("gocm_charcoal:mese_diamond_block", {
	description = "Mese Diamond Block",
	tiles = {"tgg_mese_diamond_block.png"},
	groups = {cracky=3, stone=1},
})

minetest.register_craft({
type = "shapeless",
output = "gocm_charcoal:mese_diamond_block",
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
minetest.register_craftitem("gocm_charcoal:charcoal", {
description = "A Pice Of Charcoal",
groups = {compressable=1},
inventory_image = "tgg_charcoal.png",

	minetest.register_craft({
	type = "cooking",
	output = "gocm_charcoal:charcoal",
	recipe = "group:wood",
	cooktime = 10
	}),

	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_charcoal:charcoal",
	burntime = 40
	})

})

minetest.register_craftitem("gocm_charcoal:charcoal_willow", {
description = "Willow Charcoal",
inventory_image = "tgg_willowcharcoal.png",
})

	minetest.register_craft({
	type = "cooking",
	output = "gocm_charcoal:charcoal_willow",
	recipe = "group:grass",
	cooktime = 5
	})


	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_charcoal:charcoal_willow",
	burntime = 20
	})





--charcoal_block nodes and crafts
minetest.register_node("gocm_charcoal:charcoal_block", {
description = "a Block of Charcoal",
tiles = {"tgg_charcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},

	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_charcoal:charcoal_block",
	burntime = 370
	}),

	minetest.register_craft({
	type = "shapeless",
	output = "gocm_charcoal:charcoal_block 1",
	recipe = {

	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",
	"gocm_charcoal:charcoal",

		},
	})

})

--willowcharcoal_block node and related crafts
minetest.register_node("gocm_charcoal:willowcharcoal_block", {
description = " Willow Charcoal",
tiles = {"tgg_willowcharcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},

	minetest.register_craft({
	type = "fuel",
	recipe = "gocm_charcoal:willowcharcoal_block",
	burntime = 150
	}),

	minetest.register_craft({
	type = "shapeless",
	output = "gocm_charcoal:willowcharcoal_block 1",
	recipe = {

	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",
	"gocm_charcoal:charcoal_willow",

		},
	})

})

--tools will go here for now

--all other crafts go here
minetest.register_craft({
type = "shaped",
output = "default:torch 4",
recipe = {

	{"gocm_charcoal:charcoal"},
	{"default:stick"}
}

})

minetest.register_craft({
type = "shaped",
output = "gocm_charcoal:epic_mese_diamond_hammer 1",
recipe = {

	{"gocm_charcoal:mese_diamond_block", "gocm_charcoal:mese_diamond_block"},
	{"gocm_charcoal:mese_stick", "gocm_charcoal:mese_stick"}
}

})

minetest.register_craft({
type = "shapeless",
output = "gocm_charcoal:industrial_diamond",
recipe = {
"gocm_charcoal:epic_mese_diamond_hammer",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal",
"gocm_charcoal:charcoal"
},
replacements = {{"gocm_charcoal:epic_mese_diamond_hammer", "gocm_charcoal:epic_mese_diamond_hammer"}},
})

minetest.register_craft({
type = "shapeless",
output = "default:diamond 2",
recipe = {
"gocm_charcoal:epic_mese_diamond_hammer",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond",
"gocm_charcoal:industrial_diamond"
},
replacements = {{"gocm_charcoal:epic_mese_diamond_hammer", "gocm_charcoal:epic_mese_diamond_hammer"}},
})

minetest.register_craft({
type = "shapeless",
output = "gocm_charcoal:recompressed_diamond 2",
recipe = {
"gocm_charcoal:epic_mese_diamond_hammer",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond",
"default:diamond"
},
replacements = {{"gocm_charcoal:epic_mese_diamond_hammer", "gocm_charcoal:epic_mese_diamond_hammer"}},
})
