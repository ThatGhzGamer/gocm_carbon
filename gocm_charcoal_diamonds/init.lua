--released under MIT license
--Diamond Crafts Go Here

minetest.register_craftitem("gocm_charcoal_diamonds:industrial_diamond", {
description = "An Industrial Grade Diamond",
inventory_image = "tgg_compressedrawdiamondv2.png",

	minetest.register_craft({
	type = "shapeless",
	output = "default:diamond 1",
	recipe = {
	
	"gocm_charcoal_diamonds:industrial_diamond",
	"gocm_charcoal_diamonds:industrial_diamond",
	"gocm_charcoal_diamonds:industrial_diamond",
	"gocm_charcoal_diamonds:industrial_diamond",
	
		},
	})

})

