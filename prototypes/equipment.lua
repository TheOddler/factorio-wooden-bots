
local equipment_grid = table.deepcopy(data.raw["equipment-grid"]["small-equipment-grid"])
equipment_grid.name = "wooden-equipment-grid"
equipment_grid.width = 4
equipment_grid.height = 4


local armor = table.deepcopy(data.raw.armor["modular-armor"])
armor.name = "wooden-modular-armor"
armor.icon = "__wooden-bots__/graphics/icons/wooden-modular-armor.png"
armor.resistances =
{
	{
		type = "physical",
		decrease = 2,
		percent = 10
	},
}
armor.durability = 1000
armor.equipment_grid = "wooden-equipment-grid"
armor.inventory_size_bonus = 0


local reactor_item = table.deepcopy(data.raw.item["fusion-reactor-equipment"])
reactor_item.name = "wooden-reactor-equipment"
reactor_item.icon = "__wooden-bots__/graphics/icons/wooden-reactor-equipment.png"
reactor_item.placed_as_equipment_result = "wooden-reactor-equipment"


local roboport_item = table.deepcopy(data.raw.item["personal-roboport-equipment"])
roboport_item.name = "wooden-roboport-equipment"
roboport_item.icon = "__wooden-bots__/graphics/icons/wooden-roboport-equipment.png"
roboport_item.placed_as_equipment_result = "wooden-roboport-equipment"


local armor_recipe = 
{
	type = "recipe",
	name = "wooden-modular-armor",
    enabled = false,
	energy_required = 10,
	ingredients =
	{
		{"electronic-circuit", 10},
		{"wood", 100},
		{"copper-cable", 30}
	},
	result = "wooden-modular-armor"
}


local reactor_recipe =
{
	type = "recipe",
	name = "wooden-reactor-equipment",
    enabled = false,
	energy_required = 5,
	ingredients =
	{
		{"boiler", 4},
		{"pipe", 10},
		{"raw-wood", 100}
	},
	result = "wooden-reactor-equipment"
}


local roboport_recipe =
{
	type = "recipe",
	name = "wooden-roboport-equipment",
	enabled = false,
	energy_required = 10,
	ingredients =
	{
		{"wood", 40},
		{"fast-inserter", 5},
		{"electronic-circuit", 10}
	},
	result = "wooden-roboport-equipment"
}


local roboport_equipment = table.deepcopy(data.raw["roboport-equipment"]["personal-roboport-equipment"])
roboport_equipment.name = "wooden-roboport-equipment"
roboport_equipment.take_result = "wooden-roboport-equipment"
roboport_equipment.sprite.filename = "__wooden-bots__/graphics/equipment/wooden-roboport-equipment.png"
roboport_equipment.energy_source =
{
	type = "electric",
	buffer_capacity = "35KJ",
	input_flow_limit = "5KW",
	usage_priority = "secondary-input"
}
roboport_equipment.charging_energy = "1kW"
roboport_equipment.energy_consumption = "100W"
roboport_equipment.robot_limit = 5
roboport_equipment.construction_radius = 10


local reactor_equipment = table.deepcopy(data.raw["generator-equipment"]["fusion-reactor-equipment"])
reactor_equipment.name = "wooden-reactor-equipment"
reactor_equipment.take_result = "wooden-reactor-equipment"
reactor_equipment.sprite.filename = "__wooden-bots__/graphics/equipment/wooden-reactor-equipment.png"
reactor_equipment.sprite.width = 128
reactor_equipment.sprite.height = 128
reactor_equipment.shape =
{
	width = 2,
	height = 2,
	type = "full"
}
reactor_equipment.energy_source =
{
	type = "electric",
	usage_priority = "primary-output"
}
reactor_equipment.power = "750W"



data:extend(
{
	equipment_grid, armor, 
	reactor_item, roboport_item, 
	armor_recipe, reactor_recipe, roboport_recipe,
	roboport_equipment, reactor_equipment
})
