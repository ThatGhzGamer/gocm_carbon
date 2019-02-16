-- all code is released under the permissive MIT licence for more info please go to this link https://opensource.org/licenses/MIT

minetest.register_craftitem("charcoal:charcoal", {
description = "A Pice Of Charcoal",
inventory_image = "tgg_charcoal.png",
})

minetest.register_craft({
type = "cooking",
output = "charcoal:charcoal",
recipe = "group:wood",
cooktime = 11
})

minetest.register_craft({
type = "fuel",
recipe = "charcoal:charcoal",
burntime = 40

})

minetest.register_node("charcoal:charcoal_block", {
description = "a Block of Charcoal", 
tiles = {"tgg_charcoalblock.png"},
is_ground_content = true,
groups = {cracky=3, stone=1}
})

minetest.register_craft({
type = "fuel",
recipe = "charcoal:charcoal_block",
burntime = 370
})

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

minetest.register_craft({
type = "shaped",
output = "default:torch 4",
recipe = {

	{"charcoal:charcoal"},
	{"default:stick"}
}

})
