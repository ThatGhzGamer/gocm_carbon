--
--Tools
--

minetest.register_tool("gocm_carbon:mese_diamond_pick", {
	description = "Mese Diamond Pick",
	inventory_image = "tgg_recompressed_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.50, [2]=0.75, [3]=0.35}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("gocm_carbon:mese_diamond_shovel", {
	description = "Mese Diamond shovel",
	inventory_image = "tgg_recompressed_shovel.png",
	wield_image = "tgg_recompressed_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.90, [2]=0.45, [3]=0.25}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("gocm_carbon:mese_diamond_axe", {
	description = "Mese Diamond Axe",
	inventory_image = "tgg_recompressed_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=1.9, [2]=0.65, [3]=0.38}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})
