-- all code is released under the permissive MIT licence for more info please go to this link https://opensource.org/licenses/MIT

--Basic charcoal items
minetest.register_craftitem("charcoal:charcoal", {
description = "A Pice Of Charcoal",
inventory_image = "tgg_charcoal.png",

	minetest.register_craft({
	type = "cooking",
	output = "charcoal:charcoal",
	recipe = "group:wood",
	cooktime = 10
	}),

	minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:charcoal",
	burntime = 40
	})

})

minetest.register_craftitem("charcoal:charcoal_willow", {
description = "Willow Charcoal",
inventory_image = "tgg_willowcharcoal.png",
})

	minetest.register_craft({
	type = "cooking",
	output = "charcoal:charcoal_willow",
	recipe = "group:grass",
	cooktime = 5
	})


	minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:charcoal_willow",
	burntime = 20
	})





--charcoal_block nodes and crafts
minetest.register_node("charcoal:charcoal_block", {
description = "a Block of Charcoal", 
tiles = {"tgg_charcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},

	minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:charcoal_block",
	burntime = 370
	}),
	
	minetest.register_craft({
	type = "shapeless",
	output = "charcoal:charcoal_block 1",
	recipe = {
	
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	"charcoal:charcoal",
	
		},
	})

})

--willowcharcoal_block node and related crafts
minetest.register_node("charcoal:willowcharcoal_block", {
description = " Willow Charcoal", 
tiles = {"tgg_willowcharcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},

	minetest.register_craft({
	type = "fuel",
	recipe = "charcoal:willowcharcoal_block",
	burntime = 150
	}),
	
	minetest.register_craft({
	type = "shapeless",
	output = "charcoal:willowcharcoal_block 1",
	recipe = {
	
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	"charcoal:charcoal_willow",
	
		},
	})

})

--all other crafts go here
minetest.register_craft({
type = "shaped",
output = "default:torch 4",
recipe = {

	{"charcoal:charcoal"},
	{"default:stick"}
}

})
