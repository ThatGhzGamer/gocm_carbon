--
-- Item Crafts
--

minetest.register_craft({
type = "cooking",
output = "gocm_carbon:charcoal",
recipe = "group:wood",
cooktime = 10
})

minetest.register_craft({
	output = 'default:torch 4',
	recipe = {
		{'gocm_carbon:charcoal'},
		{'group:stick'},
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


minetest.register_craft({
	type = "shapeless",
	output = "gocm_carbon:mese_stick",
	recipe = {
		"default:mese_crystal", "default:mese_crystal"},
})

--
-- Node Crafts
--

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

  minetest.register_craft({
	type = "fuel",
	recipe = "gocm_carbon:charcoal_block",
	burntime = 370
	})

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

--
-- Tool crafts
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
