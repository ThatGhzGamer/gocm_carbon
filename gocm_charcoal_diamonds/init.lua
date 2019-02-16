--released under MIT license

--Industrial Diamond
minetest.register_craftitem("gocm_charcoal_diamonds:industrial_diamond", {
description = "An Industrial Grade Diamond",
inventory_image = "tgg_compressedrawdiamondv2.png",
})
--Recompressed Diamond
minetest.register_craftitem("gocm_charcoal_diamonds:recompressed_diamond", {
description = "A Recompressed Diamond",
inventory_image = "tgg_recompresseddiamond.png",
})



--Crafts go here
	minetest.register_craft({
	type = "shapeless",
	output = "default:diamond 1",
	recipe = {
	
	"gocm_charcoal_diamonds:industrial_diamond",
	"gocm_charcoal_diamonds:industrial_diamond",
	"gocm_charcoal_diamonds:industrial_diamond",
	"gocm_charcoal_diamonds:industrial_diamond",
	
		},

	minetest.register_craft({
	type = "shapeless",
	output = "gocm_charcoal_diamonds:recompressed_diamond 1",
	recipe = {
	
	"default:diamond",
	"default:diamond",
	"default:diamond",
	"default:diamond",
	
		},
	})

})

