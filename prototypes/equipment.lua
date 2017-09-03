
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
		decrease = 4,
		percent = 30
	},
	{
		type = "acid",
		decrease = 6,
		percent = 30
	}
}
armor.durability = 4000
armor.equipment_grid = "wooden-equipment-grid"
armor.inventory_size_bonus = 0

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
roboport_equipment.energy_source.buffer_capacity = "5MJ"
roboport_equipment.energy_source.input_flow_limit = "500KW"
roboport_equipment.charging_energy = "150kW"
roboport_equipment.energy_consumption = "-50kW"
roboport_equipment.robot_limit = 5
roboport_equipment.construction_radius = 7

data:extend(
{
	equipment_grid, armor, 
	roboport_item, 
	armor_recipe, roboport_recipe,
	roboport_equipment
})
