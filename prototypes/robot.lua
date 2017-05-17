
local item = table.deepcopy(data.raw.item["construction-robot"])
item.name = "wooden-construction-robot"
item.icon = "__wooden-bots__/graphics/icons/wooden-construction-robot.png"
item.place_result = "wooden-construction-robot"


local recipe = table.deepcopy(data.raw.recipe["construction-robot"])
recipe.name = "wooden-construction-robot"
recipe.ingredients =
{
	{"engine-unit", 1},
	{"electronic-circuit", 2},
	{"iron-gear-wheel", 2},
	{"wood", 4}
}
recipe.result = "wooden-construction-robot"


local technology = table.deepcopy(data.raw.technology["construction-robotics"])
technology.name = "wooden-construction-robotics"
technology.effects =
{
	{
		type = "unlock-recipe",
		recipe = "wooden-construction-robot"
	},
	{
		type = "unlock-recipe",
		recipe = "wooden-reactor-equipment"
	},
	{
		type = "unlock-recipe",
		recipe = "wooden-modular-armor"
	},
	{
		type = "unlock-recipe",
		recipe = "wooden-roboport-equipment"
	}
}
technology.prerequisites = {"engine", "heavy-armor"}
technology.unit =
{
	count = 100,
	ingredients = {{"science-pack-1", 1}},
	time = 15
}
technology.order = "a-f-a"


local robot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])
robot.name = "wooden-construction-robot"
robot.resistances = { { type = "fire", percent = 20 } }
robot.speed = 0.1
robot.max_energy = "1.5kJ"
robot.energy_per_tick = "0.05J"
robot.speed_multiplier_when_out_of_energy = 0.6
robot.energy_per_move = "10J"
robot.working_light = {intensity = 0.8, size = 3, color = {r = 0.5, g = 0.8, b = 0.5}}
robot.idle.filename = "__wooden-bots__/graphics/entity/wooden-construction-robot/wooden-construction-robot.png"
robot.in_motion.filename = "__wooden-bots__/graphics/entity/wooden-construction-robot/wooden-construction-robot.png"

data:extend({item, recipe, technology, robot})
