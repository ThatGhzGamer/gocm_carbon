--released under MIT license
--Diamond Crafts Go Here

minetest.register_craftitem("charcoal_diamonds:industrial_diamond", {
description = "An Industrial Grade Diamond",
inventory_image = "tgg_compressedrawdiamondv2.png",

	minetest.register_craft({
	type = "shapeless",
	output = "default:diamond 1",
	recipe = {
	
	"charcoal_diamonds:industrial_diamond",
	"charcoal_diamonds:industrial_diamond",
	"charcoal_diamonds:industrial_diamond",
	"charcoal_diamonds:industrial_diamond",
	
		},
	})

})

