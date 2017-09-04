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
		recipe = "wooden-modular-armor"
	},
	{
		type = "unlock-recipe",
		recipe = "wooden-roboport-equipment"
	}
}
technology.prerequisites = {"heavy-armor"}
technology.unit =
{
	count = 100,
	ingredients = {{"science-pack-1", 1}},
	time = 15
}
technology.order = "a-f-a"

data:extend({technology})