-- all code is released under the permissive MIT licence for more info please go to this link https://opensource.org/licenses/MIT

--Basic charcoal items
minetest.register_craftitem("gocm_charcoal:charcoal", {
description = "A Pice Of Charcoal",
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

--all other crafts go here
minetest.register_craft({
type = "shaped",
output = "default:torch 4",
recipe = {

	{"gocm_charcoal:charcoal"},
	{"default:stick"}
}

})
