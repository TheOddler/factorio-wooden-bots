
local item = table.deepcopy(data.raw.item["construction-robot"])
item.name = "wooden-construction-robot"
item.icon = "__wooden-bots__/graphics/icons/wooden-construction-robot.png"
item.place_result = "wooden-construction-robot"
item.stack_size = 100


local recipe = table.deepcopy(data.raw.recipe["construction-robot"])
recipe.name = "wooden-construction-robot"
recipe.ingredients =
{
	{"iron-gear-wheel", 2},
	{"wood", 4}
}
recipe.energy_required = 1
recipe.result_count = 5
recipe.result = "wooden-construction-robot"


local robot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])
robot.name = "wooden-construction-robot"
robot.minable.result = "wooden-construction-robot"
robot.resistances = { }
robot.speed = 0.06
robot.max_energy = "0kJ"
robot.energy_per_tick = "0kJ" --60 times per second
robot.speed_multiplier_when_out_of_energy = 1 --they don't have energy
robot.energy_per_move = "0kJ"
robot.working_light.color = {r = 0.4, g = 0.8, b = 0.4}
robot.idle.filename = "__wooden-bots__/graphics/entity/wooden-construction-robot/wooden-construction-robot.png"
robot.in_motion.filename = "__wooden-bots__/graphics/entity/wooden-construction-robot/wooden-construction-robot.png"

data:extend({item, recipe, robot})
