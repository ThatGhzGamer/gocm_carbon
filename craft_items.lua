
--
--basic diamond items
--

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

--
--Basic charcoal items
--

minetest.register_craftitem("gocm_carbon:charcoal", {
description = "A Pice Of Charcoal",
groups = {coal=1},
inventory_image = "tgg_charcoal.png",
})


--
--misc
--

--mese stick
minetest.register_craftitem("gocm_carbon:mese_stick", {
description = "Mese Stick",
groups = {compressable=1},
inventory_image = "tgg_mese_stick.png",
})

--a Marvelous Mese Diamond Hammer
minetest.register_craftitem("gocm_carbon:epic_mese_diamond_hammer", {
description = "A Marvelous Mese Diamond Hammer",
groups = {compressable=1},
inventory_image = "tgg_marvelous_diamond_mese_hammer.png",
})
