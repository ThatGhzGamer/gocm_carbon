
-- Nodes

minetest.register_node("gocm_carbon:charcoal_block", {
description = "a Block of Charcoal",
tiles = {"tgg_charcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1},
})


minetest.register_node("gocm_carbon:mese_diamond_block", {
	description = "Mese Diamond Block",
	tiles = {"tgg_mese_diamond_block.png"},
	groups = {cracky=3, stone=1},
	light_source = 14
})
