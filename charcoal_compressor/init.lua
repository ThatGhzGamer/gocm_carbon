minetest.register_node("charcoal_compressor:compressor", {
description = "A Compressor",
tiles = { 
	"tgg_compressor_all_sides.png", "tgg_compressor_all_sides.png",
	"tgg_compressor_all_sides.png", "tgg_compressor_all_sides.png",
	"tgg_compressor_all_sides.png", "tgg_compressor_front.png"},
	
	paramtype2 = "facedir",
	groups = {cracky=2},
	legacy_facedir_simple = true,
	is_ground_content = false
	
})